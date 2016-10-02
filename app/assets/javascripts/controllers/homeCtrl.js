(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService', '$location',
        function($scope, publicService, $location) {
          $scope.user = {}

          $scope.name = "Joshua";
          
          publicService.current_user().then(function(response){
             if(response.data.success){
              $scope.user = response.data.user;
              $scope.name = $scope.user.name;
             }
          })

          $scope.logout = function(){
          	publicService.logout_user().then(function(response){
	          	console.log("logged out");
              $location.url("/");
	          })
          }
  }])
})();
