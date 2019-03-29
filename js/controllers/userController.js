angular.module('shopApp')

.controller('userCtrl' , function($scope, db, $rootScope){
    console.log($rootScope.id);
    
    $scope.articles = [];

    db.user($rootScope.id)
    .then(function(res){
        // console.log(res.data);
        // $scope.products = res.data;
        $scope.articles = res.data;
        // console.log($scope.products);
        console.log($scope.articles);       
    })  
})