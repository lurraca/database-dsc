(function (){
  "use strict";

  angular
    .module('hubProfile')
    .component('hubProfile', {
      templateUrl: 'app/modules/entities/hubs/profile/profile.html',
      controller: 'HubProfileController'
    })

    .controller('HubProfileController', function($rootScope, $stateParams, getHubService, searchCompaniesService){
      var controller = this;

      this.getHubService = getHubService;
      this.searchCompaniesService = searchCompaniesService;

      function setAlumni() {
        if (!controller.hub.alumni || angular.isFunction(controller.hub.alumni.push) == false)
          controller.hub.alumni = [];
      }

      getHubService.find($stateParams.id).then(function(hub){
        controller.hub = hub;
        $rootScope.title = "Tech Ireland | " + hub.name;
        setAlumni();
        var companyIds = hub.alumni.map(function(a) { return a.id; });
        searchCompaniesService.getCompaniesWithIDs(companyIds.join(',')).then(function(companies){
          var alumniCompanies = companies.data;
          controller.hub.alumniCompanies = alumniCompanies;
        });
      });
    });
})();
