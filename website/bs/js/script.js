// event saat link di klik
$('.nav-link').on('click', function(a){
    var tujuan = $(this).attr('href');
    var elementujuan = $(tujuan);
    
    $('html, body').animate({
        scrollTop: elementujuan.offset().top - 100  
    }, 1200, 'easeOutBounce');

    a.preventDefault();
});
// $('.page-scroll').on('click', function(e) {

//     var tujuan = $(this).attr('href');
   
//     var elemenTujuan = $(tujuan);
   
//     $('html , body').animate({
//      scrollTop: elemenTujuan.offset().top - 50
//     });
   
//     e.preventDefault();
//    });﻿
$('.navbar-brand').on('click', function(){
    console.log('ok');
});