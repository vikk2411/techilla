(function(){
  angular.module('rangular').controller('homeCtrl', ['$scope', 'publicService',
        function($scope, publicService) {
          $scope.name = "Joshua";
          $scope.lines = [{
                              text: 'res1'},
                          {
                              text: 'res2'},
                              {
                              text: 'res3'},
                              {
                              text: 'res4'},
                              {
                              text: 'res5'},
                              {
                              text: 'res6'},
                              {
                              text: 'res7'}
                              ];


          $scope.test = publicService.test_data();
          console.log($scope.test)
  }])
})();
