(function(){

    angular.module('rangular').service('publicService', ['$http', '$q', '$routeParams', "localStorageService",
        function($http, $q, $stateParams, Upload, localStorageService) {
        this.data;

        this.test_data = function(){
            return "Tesangular";
        }

        this.current_user = function(){
        	var deferred = $q.defer();
            var URL = "/users/which_user.json"
            $http.get(URL).then(function(data){
                deferred.resolve(data);
            });
            return deferred.promise;
        }

        this.logout_user = function(){
        	var deferred = $q.defer();
            var URL = "/logout.json"
            $http.delete(URL).then(function(data){
                deferred.resolve(data);
            });
            return deferred.promise;
        }

        this.all_users = function(){
        	var deferred = $q.defer();
            var URL = "/users.json"
            $http.delete(URL).then(function(data){
                deferred.resolve(data);
            });
            return deferred.promise;
        }
    	
    }]);

})();
