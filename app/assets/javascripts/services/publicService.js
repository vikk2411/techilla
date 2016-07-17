(function(){

    angular.module('rangular').service('publicService', ['$http', '$q', '$routeParams', "localStorageService",
        function($http, $q, $stateParams, Upload, localStorageService) {
        this.data;

        this.test_data = function(){
            return "Tesangular";
        }
    	
    }]);

})();
