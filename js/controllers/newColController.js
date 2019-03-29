angular.module('shopApp')

.controller('newColCtrl', function ($scope, db, $rootScope) {
    $scope.nmb = 0;
    if ($rootScope.number) {
           $scope.nmb = $rootScope.number     
        } else {
            $scope.nmb = 0;
        }
    if ($rootScope.id) {
        $scope.ime = $rootScope.ime + $rootScope.prezime
    } else {
        $scope.ime = 'Prijavi se'
    }

    $scope.products = [];
    db.newCol()
    .then(function (res) {
        // console.log(res);
        console.log(res.data);
        $scope.products = res.data;
        // console.log(res.data);
        console.log($scope.products);
        $scope.id = $scope.products.id;
        $scope.imgSrc = $scope.products.imgSrc;
        $scope.productTitle = $scope.products.productTitle;
        $scope.model = $scope.products.model;
        $scope.price = $scope.products.price;
        $scope.color1 = $scope.products.color1;
        $scope.color2 = $scope.products.color2;
        $scope.color3 = $scope.products.color3;
    })
})