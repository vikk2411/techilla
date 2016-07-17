rangular = angular.module('rangular',[
  'templates',
  'ngRoute',
  'controllers',
])

rangular.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'homeCtrl'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("homeCtrl", [ '$scope',
  ($scope)->
])