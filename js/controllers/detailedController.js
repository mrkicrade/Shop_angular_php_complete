angular.module('shopApp')

.controller('detailedCtrl', function ($scope, $routeParams, db, $rootScope, $location) {
    // console.log($rootScope.id);
    $scope.nmb = 0;
    if ($rootScope.nmb) { // $rootScope.number je kolicina
           $scope.nmb = $rootScope.nmb     
        } else {
            $scope.nmb = 0;
        }
    if ($rootScope.id) {
        $scope.ime = $rootScope.ime + $rootScope.prezime
    } else {
        $scope.ime = 'Prijavi se'
    }
    $scope.id = $routeParams.id;
    // console.log($scope.id);
    $scope.img = $scope.id;
    $scope.orders = [];
    db.getDetailed($scope.id)
    .then(function(res){
        // console.log(res.data);
        $scope.id = res.data.id;
        $scope.productTitle = res.data.productTitle;
        $scope.model = res.data.model;
        $scope.price = res.data.price;
        $scope.color1 = res.data.color1;
        $scope.color2 = res.data.color2;
        $scope.color3 = res.data.color3;
        $scope.description = res.data.description;
        // console.log($scope.description);
    })

    $scope.color = function($event){
        productColor = angular.element($event.target).attr('id');
        console.log(productColor);
        $rootScope.productColor = productColor;
    }

    $scope.buy = function(){
        if (!$rootScope.productColor) {
            alert('Niste izabrali boju.')
            console.log('ne radi');
            
        } else {
            console.log('radi');
            
            console.log($rootScope.id); //user_id
            // console.log($scope.productTitle); //productTitle
            // console.log($scope.model); // model
            // console.log(productColor); //color
            // console.log($scope.number); //kolicina
            // console.log($scope.price); //cena
            
            // console.log($scope.nmb); //korpa
            // console.log($scope.id); //id proizvoda
            $scope.equal = $scope.number * $scope.price;
            $scope.user_id = $rootScope.id;
            $rootScope.number = $scope.number;
            console.log($scope.user_id);
            
            // $scope.nmb = $rootScope.number;
            if ($rootScope.number) {
               $scope.nmb = $scope.nmb + $scope.number;
               $rootScope.nmb = $scope.nmb;
               console.log($rootScope.nmb);
            } else {
                $scope.nmb = 0;
            }
            // console.log($scope.nmb);
            // $rootScope.nmb = $scope.nmb;
            if ($rootScope.id) {
                console.log('radi');
            } else {
                $location.path('/error.html');
            }
            db.createOrder($scope.user_id, $scope.productTitle, $scope.model, productColor, $scope.number, $scope.price, $scope.id, $scope.equal);
        } 
    }
})