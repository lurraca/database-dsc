module V1
  module Admin
    class CompaniesController < ApplicationController

      def create
        company = Company.create(company_params)

        render json: company
      end

      def index
        companies = Company.with_deleted.order(:id)

        render json: companies
      end

      def show
        render json: company
      end

      def update
        company.update(company_params)

        render json: company
      end

      def destroy
        company.destroy

        render status: 204
      end

      def restore
        Company.restore(params[:id])
      end

      private

      def company
        Company.find(params[:id])
      end

      def company_params
        params.require(:company).permit(
          :name, :logo, :short_description, :long_description, :acquisitions, :geo_markets, :headquarters,
          :formerly_known_as, :founded, :categories, :incubator, :funding_stage, :employees, :funding_amount,
          :business_model, :company_stage, :operational_status, :government_assistance, :selling, :looking_for,
          :contact, :founders, :office_locations, :video_url, :website, social_accounts: [:twitter, :linkedin, :facebook],
          funding_rounds: [:type, :amount, :date]
        )
      end

    end
  end
end