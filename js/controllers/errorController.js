angular.module('shopApp')

.controller('errorCtrl' , function($scope, $location){
    // $scope.name = 'Luka';
    $scope.login = function(){
        $location.path('/login.html');
    }
    $scope.register = function(){
        $location.path('/register.html');
    }
    $scope.home = function(){
        $location.path('/');
    }
})