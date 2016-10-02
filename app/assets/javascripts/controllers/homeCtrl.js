(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService', '$location','localStorageService',
        function($scope, publicService, $location, localStorageService) {
          
          publicService.current_user().then(function(response){
             if(response.data.success==true){
              localStorageService.user = response.data.user
              $scope.user = response.data.user;
              $scope.name = $scope.user.name;
             }
          })

          // console.log(localStorageService)

          $scope.logout = function(){
          	publicService.logout_user().then(function(response){
	          	console.log("logged out");
              $location.url("/");
	          }) 
          }
  }])
})();
