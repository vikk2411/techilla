rangular = angular.module('rangular',[
  'templates',
  'ngRoute',
  'controllers',
  'LocalStorageModule'
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
