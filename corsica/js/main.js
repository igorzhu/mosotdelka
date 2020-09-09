$(document)['ready'](function () {
    lazyload();

    $('[data-toggle=\'offcanvas\']')['on']('click touchstart', function (showme) {
        var shop = $(this)['data']('target');
        $('body')['toggleClass']('overlay');
        $(shop)['toggleClass']('offcanvas-open');
        return false
    });
    // $(document)['on']('click touchstart', function (showme) {
    //     if ($(showme['target'])['hasClass']('navbar')) {
    //         $('body')['toggleClass']('overlay');
    //         $($(showme['target'])['find']('.navbar-offcanvas'))['toggleClass']('offcanvas-open');
    //         return false
    //     }
    // });
   
    // $(document)['on']('click', '.dropdown-megamenu .dropdown-menu', function (showme) {
    //     showme['stopPropagation']()
    // })

    // $('li.dropdown').on('click', function() {
    //     var $el = $(this);
    //     if ($el.hasClass('open')) {
    //         var $a = $el.children('a.dropdown-toggle');
    //         if ($a.length && $a.attr('href')) {
    //             location.href = $a.attr('href');
    //         }
    //     }
    // });

    $('ul.navbar-nav li.dropdown').hover(function() {
        $(this).addClass('open');
    }, function() {
        $(this).removeClass('open');
    });

    $('ul.navbar-nav li.dropdown > a').click(function() {
        var url = $(this).attr('href');

        document.location.href = url;
    });

    if($("#shipping_address_city").length) {
        $("#shipping_address_city").suggestions({
            token: "214adbdfe28724aeea33cfb2341f83ce2b125c28",
            type: "ADDRESS",
            hint: false,
            bounds: "city",
            constraints: {
                label: "",
                locations: { city_type_full: "город" }
            },
            onSelect: function(suggestion) {
                $("#shipping_address_city").val(suggestion.data.city);
            }
        });
    }

    $('.owl-brands').owlCarousel({
        loop: true,
        margin: 33,
        nav: true,
        dots: false,
        navText: ["", ""],
        smartSpeed: 750,
        responsive : {
            0 : {
                    items: 1
                },
            570 : {
                    items: 2
                },
            768 : {
                    items: 4
                }
        }
    });


    var mcVM_options = {
        menuId: "menu-v",
        alignWithMainMenu: true
    };
    init_v_menu(mcVM_options);

    function init_v_menu(a) {
        if (window.addEventListener) window.addEventListener("load", function () {
            start_v_menu(a)
        }, false);
        else window.attachEvent && window.attachEvent("onload", function () {
            start_v_menu(a)
        })
    }

    function start_v_menu(i) {
        var e = document.getElementById(i.menuId),
            j = e.offsetHeight,
            b = e.getElementsByTagName("ul"),
            g = /msie|MSIE 6/.test(navigator.userAgent);
        if (g)
            for (var h = e.getElementsByTagName("li"), a = 0, l = h.length; a < l; a++) {
                h[a].onmouseover = function () {
                    this.className = "onhover"
                };
                h[a].onmouseout = function () {
                    this.className = ""
                }
            }
        for (var k = function (a, b) {
                if (a.id == i.menuId) return b;
                else {
                    b += a.offsetTop;
                    return k(a.parentNode.parentNode, b)
                }
            }, a = 0; a < b.length; a++) {
            var c = b[a].parentNode;
            c.getElementsByTagName("a")[0].className += " arrow";
            b[a].style.left = c.offsetWidth + "px";
            b[a].style.top = c.offsetTop + "px";
            if (i.alignWithMainMenu) {
                var d = k(c.parentNode, 0);
                if (b[a].offsetTop + b[a].offsetHeight + d > j) {
                    var f;
                    if (b[a].offsetHeight > j) f = -d;
                    else f = j - b[a].offsetHeight - d;
                    b[a].style.top = f + "px"
                }
            }
            c.onmouseover = function () {
                if (g) this.className = "onhover";
                var a = this.getElementsByTagName("ul")[0];
                if (a) {
                    a.style.visibility = "visible";
                    a.style.display = "block"
                }
            };
            c.onmouseout = function () {
                if (g) this.className = "";
                this.getElementsByTagName("ul")[0].style.visibility = "hidden";
                this.getElementsByTagName("ul")[0].style.display = "none"
            }
        }
        for (var a = b.length - 1; a > -1; a--) b[a].style.display = "none"
    }

    var url = document.location.href;

    $.each($(".navbar-nav a"),function(){
        if(this.href == url) {
            $(this).parent().addClass('active');
        }
    });

    $(".menu__burger--white").click(function(){
        $(".menu__burger").toggleClass("menu__burger--active");
        $(".panel__left").toggleClass("panel__left--open");
        $(".overflow").toggleClass("overflow--open");
    })

    $(".submenu__burger").click(function(){
        $(".submenu__burger").toggleClass("submenu__burger--active");
        $(".panel__right").toggleClass("panel__right--open");
        $(".overflow").toggleClass("overflow--open");
    });

    $(".counter__btn--top").click(function () {
        var value = +$(this).siblings(".counter__input").attr("value");
        $(this).siblings(".counter__input").attr("value", value + 1);
    });

    $(".counter__btn--bottom").click(function () {
        var value = +$(this).siblings(".counter__input").attr("value");
        if (value <= 1) {
            $(this).siblings(".counter__input").attr("value", 1);
        } else {
            $(this).siblings(".counter__input").attr("value", value - 1);
        }
    });

    // matchHeight
    $('.goods__part').matchHeight();

    $('ul.tabs li a').click(function(e) {
        e.preventDefault();

        var tab_id = $(this).attr('href');

        $('ul.tabs li').removeClass('current');
        $('.tab-content').removeClass('current');

        $(this).parent().addClass('current');
        $("#"+tab_id).addClass('current');
    })
});

