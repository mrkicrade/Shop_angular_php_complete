angular.module('shopApp')

.controller('registerCtrl', function($scope , db , $location){
    // $scope.name = 'Luka';
    $scope.save = function(){
        // console.log($scope.ime);
        // console.log($scope.prezime);
        // console.log($scope.postBroj);
        db.saveAccount($scope.ime, $scope.prezime, $scope.email, $scope.sifra, $scope.adresa, $scope.postBroj, $scope.grad, $scope.telefon)
        .then(function(res){
            console.log(res.data);
            $location.path('/');
        })
    }
})