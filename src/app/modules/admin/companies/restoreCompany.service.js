(function() {
  "use strict";

  angular
    .module('admin')
    .service('restoreCompanyService', function(store, serverUrl, $http) {

      function token() {
        return store.get('jwt');
      }

      this.restore = function(id) {
        var basePath = serverUrl + '/admin/companies/' + id + '/restore';

        var req = {
          method: 'PUT',
          url: basePath,
          headers: {
            'Authorization': 'Bearer ' + token()
          }
        }

        return $http(req);
      }
    })
})();
