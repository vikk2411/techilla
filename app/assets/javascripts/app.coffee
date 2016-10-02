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
      .when('/about',
        templateUrl: "about.html"
        controller: 'aboutCtrl'
      )
      .when('/contact',
        templateUrl: "index.html"
        controller: 'contactCtrl'
      )
])

controllers = angular.module('controllers',[])
