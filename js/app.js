angular.module('shopApp' , ['ngRoute'])

.config(function($routeProvider,$locationProvider){
    $locationProvider.hashPrefix('')
    $routeProvider
    .when('/' , {
        templateUrl : 'pages/naslovna.html',
        controller : 'naslovnaCtrl'
    })
    .when('/detailed.html', {
        templateUrl : 'pages/detailed.html',
        controller : 'detailedCtrl'
    })
    .when('/male.html' , {
        templateUrl : 'pages/male.html',
        controller : 'maleCtrl'
    })
    .when('/female.html', {
        templateUrl: 'pages/female.html',
        controller: 'femaleCtrl'
    })
    .when('/newCol.html', {
        templateUrl: 'pages/newCol.html',
        controller: 'newColCtrl'
    })
    .when('/popular.html', {
        templateUrl: 'pages/popular.html',
        controller: 'popularCtrl'
    })
    .when('/action.html', {
        templateUrl: 'pages/action.html',
        controller: 'actionCtrl'
    })
    .when('/register.html', {
        templateUrl: 'pages/register.html',
        controller: 'registerCtrl'
    })
    .when('/login.html' , {
        templateUrl: 'pages/login.html',
        controller: 'loginCtrl'
    })
    .when('/logged.html' , {
        templateUrl: 'pages/logged.html',
        controller: 'loggedCtrl'
    })
    .when('/error.html' , {
        templateUrl: 'pages/error.html',
        controller: 'errorCtrl'
    })
    .when('/user.html' , {
        templateUrl: 'pages/user.html',
        controller: 'userCtrl'
    })
})