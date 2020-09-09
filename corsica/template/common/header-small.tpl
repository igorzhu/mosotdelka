<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8">
   <![endif]-->
   <!--[if IE 9 ]>
   <html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9">
      <![endif]-->
      <!--[if (gt IE 9)|!(IE)]><!-->
      <html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
         <!--<![endif]-->
         <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title><?php echo $title;  ?></title>
            <base href="<?php echo $base; ?>" />
            <?php if ($description) { ?>
            <meta name="description" content="<?php echo $description; ?>" />
            <?php } ?>
            <?php if ($keywords) { ?>
            <meta name="keywords" content= "<?php echo $keywords; ?>" />
            <?php } ?>  
            <meta property="og:title" content="<?php echo $title; ?>" />
            <meta property="og:type" content="website" />
            <meta property="og:url" content="<?php echo $og_url; ?>" />
            <?php if ($og_image) { ?>
            <meta property="og:image" content="<?php echo $og_image; ?>" />
            <?php } else { ?>
            <meta property="og:image" content="<?php echo $logo; ?>" />
            <?php } ?>
            <meta property="og:site_name" content="<?php echo $name; ?>" />
            <script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
            <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
            <script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
            <link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
            <link href="catalog/view/theme/corsica/stylesheet/stylesheet.css" rel="stylesheet">
            <?php foreach ($styles as $style) { ?>
            <link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="    <?php echo $style['media']; ?>" />
            <?php } ?>
            <script src="catalog/view/javascript/common.js" type="text/javascript"></script>
            <?php foreach ($links as $link) { ?>
            <link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
            <?php } ?>
            <?php foreach ($scripts as $script) { ?>
            <script src="<?php echo $script; ?>" type="text/javascript"></script>
            <?php } ?>
            <?php foreach ($analytics as $analytic) { ?>
            <?php echo $analytic; ?>
            <?php } ?>
            <link href="catalog/view/theme/corsica/css/navbar.css" rel="stylesheet">
            <link href="catalog/view/theme/corsica/css/style.css" rel="stylesheet">
            <link href="catalog/view/theme/corsica/css/responsive.css" rel="stylesheet">
            <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
            <![endif]-->
         </head>
         <body class="<?php echo $class; ?>">
            <header>
               <div class="head-line">
                  <div class="container-fluid">
                     <div class="row">
                        <div class="col-lg-6 col-md-5 col-sm-5 col-xs-4">
                           <ul class="list-unstyled list-inline">
                              <li class="phone"> <i class="fa fa-headphones" aria-hidden="true"></i>
                                 <span class="hidden-xs hidden-sm">Поддержка:</span>  <?php echo $telephone; ?>
                              </li>
                              <li class="hidden-xs"><a href="/delivery/">Информация о доставке</a></li>
                              <li class="hidden-xs"><a href="/about_us/">О нас</a></li>
                           </ul>
                        </div>
                        <div class="col-lg-6 col-md-7 col-sm-7 col-xs-8 head-links ">
                           <ul class="list-unstyled list-inline pull-right">
                              <?php echo $currency; ?>
                              <li role="presentation" class="dropdown">
                                 <a href="<?php echo $account; ?>" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><i class="fa fa-user-o" aria-hidden="true"></i> <?php echo $text_account; ?></a>  <i class="fa fa-angle-down" aria-hidden="true"></i>
                                 <ul class="dropdown-menu dropdown-menu-right">
                                    <?php if ($logged) { ?>
                                    <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                    <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                    <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
                                    <?php } else { ?>
                                    <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
                                    <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
                                    <?php } ?>
                                 </ul>
                              </li>
                              <li class="hidden-xs"><a href="<?php echo $wishlist; ?>"><i class="fa fa-heart-o" aria-hidden="true"></i> <?php echo $text_wishlist; ?></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               <div class="head-main">
                  <div class="container-fluid">
                     <div class="row">
                        <div class="col-lg-2 col-md-2 col-sm-3 col-xs-12 logo">
                           <div id="logo">
                              <?php if ($logo) { ?>
                              <?php if ($home == $og_url) { ?>
                              <h3>CORSICA<span>.</span></h3>
                              <?php } else { ?>
                              <a href="<?php echo $home; ?>">
                                 <h3>CORSICA<span>.</span></h3>
                              </a>
                              <?php } ?>
                              <?php } else { ?>
                              <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
                              <?php } ?>
                           </div>
                        </div>
                        <div class="col-lg-6 col-md-5 col-sm-6 col-xs-12">
                           <?php echo $search; ?>
                        </div>
                        <div class="col-lg-2 col-md-2 col-sm-3 support hidden-sm hidden-xs">
                           <img class="visible-lg" src="catalog/view/theme/corsica/img/i2.svg" alt="">
                           <h5><?php echo $telephone; ?></h5>
                           <a style="cursor: pointer" data-toggle="modal" data-target="#form_order">Обратный звонок</a>   
                        </div>
                        <div class="col-lg-2 col-md-3 col-sm-3 col-xs-12 cart">
                           <?php echo $cart; ?>
                        </div>
                     </div>
                  </div>
               </div>
            </header>
            <?php if ($categories) { ?>
            <nav class="navbar">
               <div class="container">
                  <div class="pull-left visible-xs mob-menu">
                     <a href="/specials/">Акции</a>
                     <a href="/contact-us/">Контакты</a>
                  </div>
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle" data-toggle="offcanvas" data-target="#navbar">
                     <span class="sr-only">Toggle navigation</span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     </button>
                  </div>
                  <div id="navbar" class="navbar-offcanvas" data-direction="left">
                     <button type="button" class="hidden-sm hidden-md hidden-lg" data-toggle="offcanvas" data-target="#navbar">
                     &#10005;
                     </button>
                     <ul class="nav navbar-nav navbar-left">
                        <li class="active visible-lg"><a href="/"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                        <li class="dropdown dropdown-megamenu">
                           <a href="javascript:void(0)" class="dropdown-toggle " data-toggle="dropdown" role="button">Каталог товаров</a>
                           <ul class="dropdown-menu">
                              <li>
                                 <div class="megamenu">
                                    <div class="megamenu-lists">
                                       <?php foreach (array_chunk($categories, ceil(count($categories) / 4)) as $children) { ?>
                                          <ul class="megamenu-list list-col-4">
                                             <?php foreach ($children as $child) { ?>
                                                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                                             <?php } ?>
                                          </ul>
                                       <?php } ?>
                                    </div>
                                 </div>
                              </li>
                           </ul>
                        </li>
                     </ul>
                  </div>
               </div>
            </nav>
            <?php } ?>
            <section class="icon-block hidden-xs hidde">
               <div class="container-fluid">
                  <div class="row">
                     <div class="col-lg-3 col-md-3 col-sm-3">
                        <img class="hidden-sm"  src="catalog/view/theme/corsica/img/i2.svg" alt="">
                        <h4>Поддержка клиентов</h4>
                        <p>(012) 345 678 90</p>
                     </div>
                     <div class="col-lg-3 col-md-3 col-sm-3 b-left">
                        <img class="hidden-sm" src="catalog/view/theme/corsica/img/i3.svg" alt="">
                        <h4>Принимаем заказы</h4>
                        <p>Принимаем заказы 24/7</p>
                     </div>
                     <div class="col-lg-3 b-left col-md-3 col-sm-3">
                        <img class="hidden-sm" src="catalog/view/theme/corsica/img/i4.svg" alt="">
                        <h4>Бесплатная доставка</h4>
                        <p>При заказе от 2000 руб.</p>
                     </div>
                     <div class="col-lg-3 b-left col-md-3 col-sm-3">
                        <img class="hidden-sm" src="catalog/view/theme/corsica/img/i5.svg" alt="">
                        <h4>Защита покупателя</h4>
                        <p>Возврат течении 14 дней.</p>
                     </div>
                  </div>
               </div>
            </section>