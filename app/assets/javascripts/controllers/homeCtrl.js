(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService',
        function($scope, publicService) {
          $scope.name = "Joshua";

          $scope.test = publicService.test_data();
          console.log($scope.test)
  }])
})();
