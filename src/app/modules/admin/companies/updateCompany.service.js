(function(){
  "use strict";

  angular
    .module('admin')
    .service('updateCompanyService', function(store, serverUrl, $http) {

      function token() {
        return store.get('jwt');
      }

      this.update = function(company) {
        var basePath = serverUrl + '/admin/companies/' + company.id;

        var req = {
          method: 'PUT',
          url: basePath,
          headers: {
            'Authorization': 'Bearer ' + token()
          },
          data: company
        }

        return $http(req).then(function(responseObject) {
          return responseObject.data;
        })
      }
    })

})();
