(function ($, window, document, undefined) {

    var pluginName = "mosotdelka";

    function mosotdelka(element, options) {
        this.element = $(element);

        this.settings = $.extend({
            mobW: 768   // при ширине меньше этой показывается мобильная версия
        }, options);

        this.init();
    }

    $.extend(mosotdelka.prototype, {

        setup: {
            isMobile: false
        },

        init: function () {
            var self = this;

            self.setup = $.extend(self.setup, self.settings);

            var winW = $(window).outerWidth();

            if (winW <= self.setup.mobW) {
                self.setup.isMobile = true;
            }

            self.bind();
            self.resize();
        },

        bind: function(){
            var self = this;

            $(".variable").slick({
                dots: true,
                infinite: true,
                variableWidth: true,
                autoplay: false,
                autoplaySpeed: 3000
            });

            $('.menu-toggle').click(function(){
                $(this).toggleClass('active');
                $('.preheader').toggleClass('visible');
                $('html').toggleClass('fixed');
            })

            $('body').on('click', '.brend-nav-list_item > a', function(e){

                if (self.setup.isMobile) {
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

        },

        resize: function(){
            var self = this;

            $(window).on('resize', function(){

                var winW = $(window).outerWidth();

                if (winW <= self.setup.mobW) {

                    if (self.setup.isMobile == false){
                        self.setup.isMobile = true;


                    }
                }

                else if (winW > self.setup.mobW){

                    if (self.setup.isMobile == true){
                        self.setup.isMobile = false;

                        if ($('.bottom-modal').length){
                            $('.bottom-modal').hide().remove();
                        }

                        $('.menu-toggle').removeClass('active');
                        $('.preheader').removeClass('visible');
                        $('html').removeClass('fixed');

                    }
                }
            });

        }
    });


    $.fn[ pluginName ] = function (options) {
        this.each(function () {
            if (!$.data(this, "plugin_" + pluginName)) {
                $.data(this, "plugin_" + pluginName, new mosotdelka(this, options));
            }
        });
        return this;
    };


})(jQuery, window, document);