angular.module('shopApp')

.factory('db' , function($http){
    return {
        getAllProducts : function(){
            return $http({
                url: 'php/allProducts.php',
                method: 'get'
            })
        },
        getDetailed : function(id){
            // console.log(id);
            
            return $http({
                url: 'php/getDetailed.php',
                method: 'post',
                data: {
                    id : id
                }
            })
        },
        male : function(coll){
            // console.log(coll);
            
            return $http({
                url: 'php/male.php',
                method: 'post',
                data: {
                    coll : coll
                }
            })
        },
        female : function(coll){
            // console.log(coll);

            return $http({
                url: 'php/female.php',
                method: 'post',
                data: {
                    coll : coll
                }
            })
        },
        newCol : function(){
            return $http({
                url: 'php/newCol.php',
                method: 'get'
            })
        },
        popular : function(){
            return $http({
                url: 'php/popular.php',
                method: 'get'
            })
        },
        action: function(){
            return $http({
                url: 'php/action.php',
                method: 'get'
            })
        },
        saveAccount: function (ime, prezime, email, sifra, adresa, postBroj, grad, telefon) {
            // console.log(postBroj);
            return $http({
                url: 'php/register/saveAccount.php',
                method: 'post',
                data: {
                    ime : ime,
                    prezime : prezime,
                    email : email,
                    sifra : sifra,
                    adresa : adresa,
                    postanski_broj : postBroj,
                    grad : grad,
                    telefon : telefon
                }
            })
        },
        login: function(email , sifra){
            // console.log(email);
            // console.log(sifra);
            return $http({
                url: 'php/login/login.php',
                method: 'post',
                data: {
                    email : email,
                    sifra : sifra
                }
            })
        },
        createOrder: function(user_id, productTitle, model, color, number, price, id, equal){
            // console.log(user_id);
            // console.log(productTitle);
            // console.log(model);
            // console.log(color);
            // console.log(number);
            // console.log(price);
            // console.log(id);
            // console.log(equal);
            
            return $http({
                url: 'php/createOrder.php',
                method: 'post',
                data: {
                    user_id : user_id,
                    productTitle : productTitle,
                    model : model,
                    color : color,
                    number : number,
                    price : price,
                    id : id,
                    equal: equal
                }
            })
            
        },
        user: function(user_id){
            console.log(user_id);
            return $http({
                url: 'php/user.php',
                method: 'post',
                data: {
                    user_id : user_id
                }
            })
        }
    }
}) 



            