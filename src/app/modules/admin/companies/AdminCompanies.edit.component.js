(function() {
  "use strict";

  angular
    .module('admin')
    .component('adminCompaniesEdit', {
      templateUrl: 'app/modules/admin/companies/companies.edit.html',
      controller: 'AdminCompaniesEditController'
    })
    .controller('AdminCompaniesEditController', function(getCompanyService, updateCompanyService, $stateParams, Notification) {
      var controller = this;
      this.tags = [];
      this.target_markets = {};

      function loadTags() {
        controller.company.categories.forEach(function(tag) {
          controller.tags.push({text: tag})
        });
      }

      function loadGeoMarkets() {
        controller.company.target_markets.split(',').forEach(function(code) {
          controller.target_markets[code] = true
        });
      }

      getCompanyService.find($stateParams.id).then(function(company) {
        controller.company = company;
        loadTags();
        loadGeoMarkets();
      });

      controller.addCategory = function(tag) {
        controller.company.categories.push(tag.text);
      };

      controller.removeCategory = function(tag) {
        controller.company.categories.splice(controller.company.categories.indexOf(tag.text), 1);
      };

      controller.addFundingRound = function() {
        controller.company.funding_rounds.push({type: ""});
      };

      controller.removeFundingRound = function(round) {
        controller.company.funding_rounds.splice(controller.company.funding_rounds.indexOf(round), 1);
      };

      controller.addOfficeLocation = function() {
        controller.company.office_locations.push({
          id: controller.company.office_locations.length + 1,
          address: "",
          lat: null,
          lng: null
        });
      };

      controller.removeOfficeLocation = function(location) {
        controller.company.office_locations.splice(controller.company.office_locations.indexOf(location), 1);
      };

      function setTargetMarkets() {
        controller.company.target_markets = [];
        for (var key in controller.target_markets) {
          if (controller.target_markets.hasOwnProperty(key) && controller.target_markets[key]) {
            controller.company.target_markets.push(key);
          }
        }
        controller.company.target_markets = controller.company.target_markets.join(',')
      }

      this.update = function() {
        setTargetMarkets();
        updateCompanyService.update(controller.company)
          .then(function(company) {
            controller.company = company;
            Notification.success('Company Updated!')
          }, function() {
            Notification.error('Error: Company could not be saved!')
          })
      }
    })
})();
