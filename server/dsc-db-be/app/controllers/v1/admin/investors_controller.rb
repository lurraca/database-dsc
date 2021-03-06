module V1
  module Admin
    class InvestorsController < AdminController
      def create
        investor = Investor.create(investor_params)
        investor.update_attributes(is_live: true)

        render json: investor
      end

      def index

        if params[:filter].present?
          investors = Investor.select(:id, :name).where("name ILIKE ?", "%#{params[:filter]}%").order(:name)
        else
          investors = Investor.with_deleted.order(:name)
        end

        respond_to do |format|
          format.html {
            render json: investors
          }
          format.csv do
            send_data investors.to_csv
          end
        end
      end

      def show
        render json: investor
      end

      def update
        investor.update(investor_params)
        render json: investor
      end

      def destroy
        investor.destroy
        render json: :nothing, status: 204
      end

      def restore
        Investor.restore(params[:id])
      end

      private

      def investor
        Investor.find(params[:id])
      end

      def investor_params
        params.require(:investor).permit(
          :name, :logo, :short_description, :long_description, :video_url,
          :exits_ipos, :headquarters, :founded, :local_office, :funding_types,
          :funds_raised, { funding_types: [] }, :investment_size, :regions, :office_locations,
          { office_locations: [:id, :address, :lat, :lng] }, :contact, :contact_email, :preferred_contact,
          :co_investors, :similar_investors, :similar_investors, :founders,
          { founders: [:name, :linkedin] }, :video_url, :website, :tags,
          :custom_field_1, :custom_field_2, :custom_field_3, :custom_field_4,
          { social_accounts: [:twitter, :linkedin, :facebook] },
          { tags: [] }, :deal_structure, :companies_invested_in, { companies_invested_in: [:id, :name] }
        )
      end

    end
  end
end
