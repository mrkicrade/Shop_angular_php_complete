angular.module('shopApp')

.run(function($rootScope){
    $rootScope.id;
    $rootScope.ime;
    $rootScope.prezime;
})

.controller('loginCtrl' , function($scope , db , $location , $rootScope){
    // $scope.name = 'Luka';
    $scope.logg = function(){
        // console.log($scope.email);
        // console.log($scope.sifra);
        db.login($scope.email , $scope.sifra)
        .then(function(res){
            // console.log(res.data);
            $scope.id = res.data.user_id;
            $scope.ime = res.data.ime;
            $scope.prezime = res.data.prezime;

            $rootScope.id = $scope.id;
            $rootScope.ime = $scope.ime;
            $rootScope.prezime = $scope.prezime;

            // console.log($rootScope.id);
            // console.log($rootScope.ime);
            // console.log($rootScope.prezime);

            // console.log($scope.id);
            // console.log($scope.ime);
            // console.log($scope.prezime);
            // db.userLog($scope.id, $scope.ime, $scope.prezime);
            if ($scope.id) {
                $location.path('/logged.html');
            } else {
                $location.path('/error.html');
            }
        })
    }
})