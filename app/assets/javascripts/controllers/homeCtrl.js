(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService',
        function($scope, publicService) {
          $scope.user = {}

          $scope.user.name = "Joshua";
          $scope.users = publicService.fake_data()
          $scope.test = publicService.test_data();

          console.log($scope.test)

          publicService.current_user().then(function(response){
          	$scope.user = response.data.user;
          	$scope.name = $scope.user.name;
          })
  }])
})();
