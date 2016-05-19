(function(){
  angular
    .module('admin')
    .service('createMultinationalService', function(store, serverUrl, $http){

      function token() {
        return store.get('jwt');
      }

      this.create = function(multinational) {
        var basePath = serverUrl + '/admin/multinationals';

        var req = {
          method: 'POST',
          url: basePath,
          headers: {
            'Authorization': 'Bearer ' + token()
          },
          data: multinational
        }

        return $http(req).then(function(responseObject) {
          return responseObject;
        })
      };
    });
})();
