(function() {
  'use strict';

  angular
    .module('multinationalProfile')
    .component('multinationalProfile', {
      templateUrl: 'app/modules/entities/multinationals/profile/profile.html',
      controller: 'MultinationalProfileController'
    })
    .controller('MultinationalProfileController', function($rootScope, $scope, $stateParams, getMultinationalService) {
      var controller = this;
      this.getMultinationalService = getMultinationalService;

      this.multinational = getMultinationalService.find($stateParams.id).then(function(multinational) {
        controller.multinational = multinational;
        $rootScope.title = "Tech Ireland | " + multinational.name;
      });
    });
})();
