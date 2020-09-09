$(document).on('ready', function() {
    $(".variable").slick({
        dots: true,
        infinite: true,
        variableWidth: true,
        autoplay: false,
        autoplaySpeed: 3000
    });
});

$(function(){

    /*$('.menu-toggle').click(function(){
        $(this).toggleClass('active')
        $('.navbar_menu').slideToggle(400)
    })

    $('.menu-toggle').click(function(){
        $(this).toggleClass('active')
        $('.alphavite-nav-list').slideToggle(400)
    })*/



    $('.menu-toggle').click(function(){
        $(this).toggleClass('active')
        $('.preheader').slideToggle(400);
    })

});
