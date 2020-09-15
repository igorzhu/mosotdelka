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

    $('.menu-toggle').click(function(){
        $(this).toggleClass('active');
        $('.preheader').toggleClass('visible');
        $('html').toggleClass('fixed');
    })

    $('body').on('click', '.brend-nav-list_item > a', function(e){
        var winW = $(window).outerWidth();

        if (winW < 768) {
            e.preventDefault();

            $('.bottom-modal').hide().remove();

            var modalBottom = $('<div class="bottom-modal mob"><a class="bottom-modal__close" href="#"></a><div class="bottom-modal__inner"><div class="modal-brend-list-wrapper"></div></div></div>'),

                brendUl = $('<ul class="modal-brend-list"></ul>'),

                // brendList - должна формироваться ajax`ом. Пока стоит заглушка:

                brendList = '<li><a href="#">BODE Ceramica - Китай (4)</a></li><li><a href="#">Baldocer - Испания (89)</a></li><li><a href="#">Bardelli - Италия (1)</a></li><li><a href="#">Barro-co - Испания (1)</a></li><li><a href="#">Belleza - Россия (32)</a></li><li><a href="#">Belmar - Испания (9)</a></li><li><a href="#">Benadresa - Испания (43)</a></li><li><a href="#">Best stone - Россия (19)</a></li><li><a href="#">Bestile - Испания (26)</a></li><li><a href="#">Bars Crystal Mosaic - Китай (9)</a></li><li><a href="#">Bien Seramik - Турция (4)</a></li><li><a href="#">Bayker - Италия (3)</a></li><li><a href="#">Blustyle - Италия (2)</a></li><li><a href="#">Belani - Беларусь (46)</a></li><li><a href="#">Bonaparte - Китай (7)</a></li><li><a href="#">Bellavista - Испания (4)</a></li><li><a href="#">Brennero - Италия (23)</a></li><li><a href="#">Belani - Беларусь (46)</a></li><li><a href="#">Bars Crystal Mosaic - Китай (9)</a></li><li><a href="#">Bien Seramik - Турция (4)</a></li><li><a href="#">Bayker - Италия (3)</a></li><li><a href="#">Blustyle - Италия (2)</a></li>';

            var listWrapper = modalBottom.find('.modal-brend-list-wrapper');

            $(brendList).appendTo(brendUl);
            brendUl.appendTo(listWrapper);
            modalBottom.insertAfter('.footer');

            $('.bottom-modal').slideDown();

            /*$('.modal-brend-list-wrapper').mCustomScrollbar({
                theme:"minimal-dark"
            });*/
        }
    });

    $('body').on('click', '.bottom-modal__close', function(e){
        $(this).parents('.bottom-modal').slideUp(function(){
            $(this).remove()
        });
    });



});
