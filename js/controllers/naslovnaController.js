angular.module('shopApp')

.controller('naslovnaCtrl' , function($scope, db, $rootScope, $location){

    // console.log($rootScope.id);
    // console.log($rootScope.ime);
    // console.log($rootScope.prezime);

    $scope.nmb = 0;
    // if ($rootScope.number) { //korpa
    if ($rootScope.nmb) { //korpa
           $scope.nmb = $rootScope.nmb     
        } else {
            $scope.nmb = 0;
        }
    if ($rootScope.id) {
        $scope.ime = $rootScope.ime + $rootScope.prezime
        $location.path('/logged.html');
    } else {
        // $scope.ime = 'Prijavi se/Registracija';
        $location.path('/');
    }

    $scope.products = [];
    db.getAllProducts()
    .then(function(res){
        $scope.products = res.data;
        // console.log(res.data);
        // console.log($scope.products);
        $scope.id = $scope.products.id;
        $scope.imgSrc = $scope.products.imgSrc;
        $scope.productTitle = $scope.products.productTitle;
        $scope.model = $scope.products.model;
        $scope.price = $scope.products.price;
        $scope.color1 = $scope.products.color1;
        $scope.color2 = $scope.products.color2;
        $scope.color3 = $scope.products.color3;
        $scope.collection = $scope.products.collection;
        $scope.newCol = $scope.products.newCol;
        $scope.popular = $scope.products.popular;
        $scope.action = $scope.products.action;
        $scope.description = $scope.products.description;

        // console.log($scope.imgSrc);
        
    })
})