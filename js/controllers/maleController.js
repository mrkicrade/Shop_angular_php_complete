angular.module('shopApp')

.controller('maleCtrl', function ($scope, $routeParams, db, $rootScope) {
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
    $scope.coll = $routeParams.coll;
    // console.log($scope.coll);
    $scope.products = [];
    
    db.male($scope.coll)
    .then(function(res){
        // console.log(res);
        // console.log(res.data);
        $scope.products = res.data;
        console.log(res.data);
    })
})