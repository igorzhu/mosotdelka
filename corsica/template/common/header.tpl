<!DOCTYPE html>
      <html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
         <head>
          <!-- Global site tag (gtag.js) - Google Analytics -->
            <!-- <script async src="https://www.googletagmanager.com/gtag/js?id=UA-89478663-1"></script> -->
            <script>
                window.dataLayer = window.dataLayer || [];
                function gtag(){dataLayer.push(arguments);}
                gtag('js', new Date());

                gtag('config', 'UA-89478663-1');
            </script>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title><?php echo $title;  ?></title>
            <base href="<?php echo $base; ?>" />
            <link rel="shortcut icon" href="/favicon.ico"/>
            <?php if ($description) { ?>
            <meta name="description" content="<?php echo $description; ?>" />
            <?php } ?>
            <?php if ($keywords) { ?>
            <meta name="keywords" content= "<?php echo $keywords; ?>" />
            <?php } ?>
            <meta name='yandex-verification' content='6b189abbfffaaa29' />
            <meta name='yandex-verification' content='43928854571ef015' />
            <meta name='yandex-verification' content='6c105e79d8cf36bf' />
            <meta name="yandex-verification" content="4d18a8ff61daeca1" />
            <meta name="google-site-verification" content="FUKEcFSiVg2HYp4cj0rZcUDJZ1nDFmoOJ3cpVk40PVU" />
            <meta name="google-site-verification" content="W9JGurppJvG3yKAGwzigXB4Kj3a7zCs1dpNfuFcdtZs" />
            <meta name="google-site-verification" content="2UaLAvI1Yq9DXC23EXUb08HOigue01qlQLiI2KLqXTs" />
            <meta property="og:title" content="<?php echo $title; ?>" />
            <meta property="og:type" content="website" />
            <meta property="og:url" content="<?php echo $og_url; ?>" />
            <?php if ($og_image) { ?>
            <meta property="og:image" content="<?php echo $og_image; ?>" />
            <?php } else { ?>
            <meta property="og:image" content="<?php echo $logo; ?>" />
            <meta property="og:locale" content="ru_RU">
            <?php } ?>
            <meta property="og:site_name" content="<?php echo $name; ?>" />
            <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js?v1.2.0" type="text/javascript"></script>
            <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css?v1.2.0" rel="stylesheet" media="screen" />
            <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js?v1.2.0" type="text/javascript"></script>
            <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
            <link href="catalog/view/javascript/jquery.fancybox.min.css" rel="stylesheet" type="text/css" />
            <script src="catalog/view/javascript/jquery.fancybox.min.js" type="text/javascript"></script>
			 <link href="catalog/view/javascript/malihu-custom-scrollbar/jquery.mCustomScrollbar.min.css" rel="stylesheet" type="text/css" />
			 <script src="catalog/view/javascript/malihu-custom-scrollbar/jquery.mCustomScrollbar.concat.min.js" type="text/javascript"></script>
            <link href="catalog/view/theme/corsica/stylesheet/stylesheet.css" rel="stylesheet">
            <?php foreach ($styles as $style) { ?>
            <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="    <?php echo $style['media']; ?>" />
            <?php } ?>
            <script src="catalog/view/javascript/jquery/jquery.matchHeight-min.js" type="text/javascript"></script>
            <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
            <?php foreach ($links as $link) { ?>
            <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
            <?php } ?>
            <script type="text/javascript" src="/catalog/view/javascript/lazyload.min.js"></script>
			<script src="catalog/view/javascript/popup_form/jquery.maskedinput.min.js" type="text/javascript"></script>
            <?php foreach ($scripts as $script) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
            <?php } ?>
            <?php foreach ($analytics as $analytic) { ?>
            <?php echo $analytic; ?>
            <?php } ?>

            <link href="catalog/view/theme/corsica/css/normalize.css" rel="stylesheet">
            <link href="catalog/view/theme/corsica/css/style2.css" rel="stylesheet">
			<link href="catalog/view/theme/corsica/css/style.css?v=1" rel="stylesheet">
			 <link href="catalog/view/theme/corsica/css/media.css" rel="stylesheet" type="text/css">
            <!--link href="catalog/view/theme/corsica/css/responsive.css" rel="stylesheet"-->
            <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
            <script src="//code-ya.jivosite.com/widget/r4EgjCSVBH" async></script>
			<meta name="yandex-verification" content="d145405f417735b0" />
         </head>
         <body class="<?php echo $class; ?>">
           <div class="preheader">
           	<div class="wrapper">

           		<div class="preheader-list list">
           			<div class="preheader-list_item item">
           				<ul class="preheader_menu">
           					<li class="preheader-menu_item">
           					<a href="/specials/" class="">Акции</a>
           					</li>
           					<li class="preheader-menu_item">
           					<a href="#" class="">Дизайн интерьера</a>
           					</li>
           					<li class="preheader-menu_item">
           					<a href="/delivery/" class="">Доставка и оплата</a>
           					</li>
           					<li class="preheader-menu_item">
           					<a href="#" class="">Прайс лист</a>
           					</li>
           					<li class="preheader-menu_item">
           					<a href="/contact-us/" class="">Контакты</a>
           					</li>
           				</ul>
           			</div>
					<div class="preheader-list_item item">
						<div class="preheader_item-list list">
							<div class="preheader_item-list_item item">
							    <a data-fancybox="" data-type="iframe" data-src="https://yandex.ru/map-widget/v1/?um=constructor%3Ae8177bbe1099d3c5534c42b2a855ed780f779d50189b14b8038608ecd9db2790&amp;source=constructor" href="javascript:;">
								    <span class="span-icon location-icon"></span>
								    <span>г. Москва ул. Нагатинская д.3Б,<br>офис № 315</span>
								</a>
							</div>
							<div class="preheader_item-list_item item">
								<span class="span-icon time-icon"></span>
								<span>Пн-Пт: 8:00 - 19:00<br>(офис, склад)</span>
							</div>
							<div class="preheader_item-list_item item">
								<span>Сб-Вс: 9:00 - 16:00<br>(склад выходной)</span>
								<span class="span-icon drop-down-button-icon"></span>
							</div>
							<div class="mob">
								<div class="preheader_item-list_item item">
									<span class="span-icon phone2-icon"></span>
									<a href="tel:+74956458085">+7 (495) 645-80-85</a>
								</div>
								<div class="preheader_item-list_item item">
									<span class="span-icon phone2-icon"></span>
									<a href="tel:+79167789988">+7 (916) 778-99-88</a>
								</div>
								<div class="preheader_item-list_item item">
									<span class="span-icon email-icon"></span>
									<a href="mailto:info@mosotdelka.ru">info@mosotdelka.ru</a>
								</div>
							</div>
						</div>
					</div>
           		</div>

           	</div>
           </div>

           <header>
	<div class="wrapper">
		<div class="header-list list">


			<div class="header-list_item logo-item item">
				<div class="logo">
					<a href="/">
					<span class="logo-img"></span>
					<span class="logo-text"><span>СТРОЙ</span>КОМ</span>
					</a>
				</div>
			</div>

			<div class="header-list_item menu-toggle-item item">
				<button class="menu-toggle">
				<span></span>
				<span></span>
				<span></span>
				</button>
			</div>

			<div class="header-list_item search-item item" id="search">
        <?php echo $search; ?>

			</div>


			<div class="header-list_item item">
        <?php echo $cart; ?>

				<a href="#form_order" class="btn-recall" data-toggle="modal"><span class="btn-recall-text">ПЕРЕЗВОНИТЕ МНЕ</span> <span class="span-icon phone-icon"></span></a>
			</div>

		</div>

		<div class="alphavite-nav-list list">
			<div class="alphavite-nav-list_item country-item item">
				<span class="alphavite-nav-list_title">СТРАНЫ</span>
				<span class="span-icon drop-down-button-icon"></span>
				<ul class="country-nav-list">
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-tu"></span>Турция</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-it"></span>Италия</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-ru"></span>Россия</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-in"></span>Индия</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-ge"></span>Германия</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-sp"></span>Испания</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-be"></span>Белоруссия</a>
					</li>
					<li class="country-nav-list_item">
						<a href="#" class=""><span class="country-icon flag-ch"></span>Китай</a>
					</li>
				</ul>
			</div>
			<div class="alphavite-nav-list_item brend-nav item">
				<span class="alphavite-nav-list_title">БРЕНДЫ:</span>
					<ul class="brend-nav-list">
            <?php foreach ($alphabet as $char => $manufacturers) { ?>
                  <li class="brend-nav-list_item has-dropdown">
					  <a href="/brands/#<?=$char?>"><?php echo $char; ?></a>
					  <div class="brend-nav-list__drop-down">
						  <ul class="brend-nav-list__brends columns--3">
							  <li><a href="#">BODE Ceramica - Китай (4)</a></li>
							  <li><a href="#">Baldocer - Испания (89)</a></li>
							  <li><a href="#">Bardelli - Италия (1)</a></li>
							  <li><a href="#">Barro-co - Испания (1)</a></li>
							  <li><a href="#">Belleza - Россия (32)</a></li>
							  <li><a href="#">Belmar - Испания (9)</a></li>
							  <li><a href="#">Benadresa - Испания (43)</a></li>
							  <li><a href="#">Best stone - Россия (19)</a></li>
							  <li><a href="#">Bestile - Испания (26)</a></li>
							  <li><a href="#">Bars Crystal Mosaic - Китай (9)</a></li>
							  <li><a href="#">Bien Seramik - Турция (4)</a></li>
							  <li><a href="#">Bayker - Италия (3)</a></li>
							  <li><a href="#">Blustyle - Италия (2)</a></li>
							  <li><a href="#">Belani - Беларусь (46)</a></li>
							  <li><a href="#">Bonaparte - Китай (7)</a></li>
							  <li><a href="#">Bellavista - Испания (4)</a></li>
							  <li><a href="#">Brennero - Италия (23)</a></li>
							  <li><a href="#">Belani - Беларусь (46)</a></li>
							  <li><a href="#">Bars Crystal Mosaic - Китай (9)</a></li>
							  <li><a href="#">Bien Seramik - Турция (4)</a></li>
							  <li><a href="#">Bayker - Италия (3)</a></li>
							  <li><a href="#">Blustyle - Италия (2)</a></li>
						  </ul>
					  </div>
              </li>
            <?php } ?>
					</ul>
			</div>
		</div>
	</div>
</header>

<nav class="navbar">
	<div class="wrapper">
			<ul class="navbar_menu">
        <?php foreach ($categories as $category) { ?>
           <?php foreach ($category['children'] as $children) { ?>
             <li class="navbar-menu_item"><a href="<?= $children['href'] ?>"><?= $children['name'] ?></a></li>
           <?php } ?>
        <?php } ?>
			</ul>
	</div>
</nav>



            <!--div class="panel panel__left">
                <div class="menu">
                    <div class="container">
                        <div class="menu__wrapper">
                            <div class="menu__burger menu__burger--white">
                                <span></span>
                            </div>
                        </div>  <!-- menu__wrapper --
                    </div>  <!-- wrapper --
                </div>  <!-- menu --
                <div class="panel__body">
                    <ul class="def-list panel__menu">
                        <li><a href="/specials/">Акции</a></li>
                        <li><a href="/about_us/">О компании</a></li>
                        <li><a href="/delivery/">Доставка и оплата</a></li>
                        <li><a href="/contact-us/">Контакты</a></li>
                    </ul>
                </div>
            </div>

            <div class="panel panel__right">
                <div class="submenu submenu__mobile">
                    <div class="container">
                        <div class="submenu__burger">
                            Back
                        </div>
                    </div>
                </div>
                <div class="panel__body" style="color: green">
                    <ul class="def-list panel__menu">
                    <?php foreach ($categories as $category) : ?>
                        <?php foreach ($category['children'] as $children) : ?>
                            <li><a href="<?= $children['href'] ?>"><?= $children['name'] ?></a></li>
                        <?php endforeach; ?>
                    <?php endforeach; ?>
                </div>
            </div>
            <header>
              <div class="overflow">
               <div class="menu">
                <div class="container">
                    <div class="menu__wrapper">
                        <div class="menu__burger menu__burger--white">
                            <span></span>
                        </div>
                        <div class="menu__inner">
                            <ul class="def-list menu__list">

                        <li><a href="/specials/">Акции</a></li>
                        <li><a href="/about_us/">О компании</a></li>
                        <li><a href="/delivery/">Доставка и оплата</a></li>
                        <li><a href="/contact-us/">Контакты</a></li>
                            </ul>
                        </div>  <!-- menu__inner --
                        <div class="menu__navbar menu__navbar--right">
                            <div id="search">
                                <?php echo $search; ?>
                            </div>
                            <?php echo $cart; ?>
                        </div>
                    </div>  <!-- menu__wrapper --
                </div>  <!-- wrapper --
            </div>
               <div class="nav">
                <div class="container">
                    <div class="nav__inner">
                        <a href="<?php echo $home; ?>" class="logo">
                            <div class="logo__img">
                                <img src="/image/catalog/logo_color.png" title="<?php echo $name; ?>" alt="СТРОЙКОМ – интернет-магазин керамической плитки и отделочных материалов" />
                            </div>
                            <div class="logo__part">
                                <h2 class="logo__title"><span>СТРОЙ</span>КОМ</h2>
                                <p>Строительные и отделочные  материалы оптом и в розницу</p>
                            </div>
                        </a>  <!-- logo --
                        <div class="nav__container">
                            <div class="nav__part nav__part--left">
                                <div class="nav__part--col">
                                    <div class="nav__item nav__item--geo">
                                   г. Москва ул. Нагатинская д.3Б, офис № 315
                                    </div>
                                </div>
                                <div class="nav__part--col">
                                    <div class="nav__item nav__item--mail">
                                        <a href="mailto:info@mosotdelka.ru">info@mosotdelka.ru</a>
                                    </div>
                                </div>
                                <div class="nav__part--col">
                                    <div class="nav__item">
                                        <div class="nav__item--time">
                                            Пн-Пт: 9:00 - 18:00
                                        </div>
                                        <div class="nav__item--time">
                                            Сб-Вс: по согласованию
                                        </div>
                                    </div>
                                </div>
                            </div>  <!-- nav__part --
                            <div class="nav__part nav__part--right">
                                <div class="nav__item nav__item--bold nav__item--call">
                                    <a href="tel:+7 (495) 645-80-85"><i class="fa fa-phone"></i> +7 (495) 645-80-85</a>
                                    <a href="tel:+7 (916) 778-99-88"><i class="fa fa-phone"></i> +7 (916) 778-99-88</a>
                                </div>
                                <a href="#form_order" class="button button__callback" data-toggle="modal">Перезвоните мне</a>
                            </div>  <!-- nav__part --
                        </div>  <!-- nav__container --
                    </div>
                </div>  <!-- wrapper --
              </div>  <!-- nav --
              <div class="manufacturers_alphabet">
                <div class="container">
                  <ul>
                    <li style="display:none;">
                      СТРАНЫ >
                      <div class="manufacturers_list countries_list">
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/turkey.svg"> <a href="#">Турция</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/italy.svg"> <a href="#">Италия</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/russia.svg"> <a href="#">Россия</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/india.svg"> <a href="#">Индия</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/germany.svg"> <a href="#">Германия</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/spain.svg"> <a href="#">Испания</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/belarus.svg"> <a href="#">Белоруссия</a></div>
                        <div class="country"><img src="/catalog/view/theme/corsica/img/flag/china.svg"> <a href="#">Китай</a></div>
                      </div>
                    </li>
                    <li>Бренды:</li>
                    <?php foreach ($alphabet as $char => $manufacturers) { ?>
                      <?php foreach ($alphabet as $char => $manufacturers) { ?>
                            <li class="char"><a href="/brands/#<?=$char?>"><?php echo $char; ?></a>
                        <?php if(isset($manufacturers) && is_array($manufacturers)){ ?>
                          <div class="manufacturers_list">
                            <div class="row">
                              <?php foreach (array_chunk($manufacturers, ceil(count($manufacturers) / 6)) as $children) { ?>
                                <div class="col">
                                  <?php foreach ($children as $child) { ?>
                                    <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                  <?php } ?>
                                </div>
                              <?php } ?>
                            </div>
                          </div>
                        <?php } ?>
                        </li>
                      <?php } ?>
                          <li class="char"><a href="/brands/#<?=$char?>"><?php echo $char; ?></a>
                      <?php if(isset($manufacturers) && is_array($manufacturers)){ ?>
                        <div class="manufacturers_list">
                          <div class="row">
                            <?php foreach (array_chunk($manufacturers, ceil(count($manufacturers) / 6)) as $children) { ?>
                              <div class="col">
                                <?php foreach ($children as $child) { ?>
                                  <a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a>
                                <?php } ?>
                              </div>
                            <?php } ?>
                          </div>
                        </div>
                      <?php } ?>
                      </li>
                    <?php } ?>
                  </ul>
                </div>
              </div>
               <?php if ($categories) { ?>
               <nav class="submenu">
                  <div class="container">
                    <div class="submenu__burger">
                      <span></span>
                          Каталог
                      </div>
                    <ul class="def-list submenu__list submenu__inner">
                       <?php foreach ($categories as $category) { ?>
                          <?php foreach ($category['children'] as $children) { ?>
                            <li><a href="<?= $children['href'] ?>"><?= $children['name'] ?></a></li>
                          <?php } ?>
                       <?php } ?>
                    </ul>
                  </div>
               </nav>
               <?php } ?>
           </header-->
