(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService',
        function($scope, publicService) {
          $scope.name = "Joshua";
          $scope.users = publicService.fake_data()
          $scope.test = publicService.test_data();
          console.log($scope.test)
  }])
})();
