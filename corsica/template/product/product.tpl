<?php echo $header; ?>
<div class="container">
   <ul class="breadcrumb">
      <?php foreach ($breadcrumbs as $breadcrumb) { ?>
         <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
      <?php } ?>
   </ul>
   <div class="row">
      <div class="col-xs-12">
         <div id="content" class="<?php echo $class; ?> ">
            <div class="main-part" itemscope itemtype="http://schema.org/Product">
               <h1 class="section__title--big" itemprop="name"><?=$heading_title;?></h1>
               <div class="goods">
                  <div class="feature-acc">
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Легко выбрать</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Доставка заказа</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Самовывоз со склада</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Закзать одним кликом на сайте</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Нам доверяют за индивидуальный подход</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Возможность отгрузить в день заказа</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Опытные консультанты</div>
                      </div>
                      <div class="feature-acc__item">
                          <div class="feature-acc__title"><i class="fa fa-check"></i> Наличие шоу-румов</div>
                      </div>
                  </div>
                  <div class="goods-top">
                      <?php if ($thumb || $image) { ?>
                          <div class="goods__part goods__part--left">
                              <link itemprop="image" content="<?=($thumb ? $thumb : $image); ?>">
                              <div class="goods__item-img zoom" itemscope itemtype="http://schema.org/ImageObject">
                                  <img src="<?=($thumb ? $thumb : $image); ?>" alt="<?=$heading_title;?>" itemprop="image">
                                  <meta itemprop="name" content="<?=$heading_title;?>">
                                  <div class="goods__img">
                                      <img src="<?=($thumb ? $thumb : $image); ?>" alt="<?php echo $name; ?>" class="goods__image" id="zoom1" data-zoom-image="<?=$thumb; ?>">
                                  </div>
                                  <?php if ($special) { ?>
                                  <div class="goods__item-sale">
                                      <img src="catalog/view/theme/<?php echo $this->config->get('config_template') ?>/img/tags.png" alt="tags">
                                  </div>
                                  <?php } ?>
                              </div>  <!-- zoom -->
                          </div>  <!-- goods__part -->
                      <?php } ?>
                      <div class="goods__part goods__part--right" id="overview">
                          <div class="goods__params-top">
                              <?php if ($special_cat) { ?>
                                  <div class="goods__charact">
                                      <strong>Коллекция:</strong> <a href="<?=$breadcrumbs[count($breadcrumbs)-2]['href']; ?>"><?=$breadcrumbs[count($breadcrumbs)-2]['text']; ?></a>
                                  </div>
                              <?php } ?>

                              <?php if ($manufacturer) { ?>
                                  <div class="goods__charact">
                                      <strong><?=$text_manufacturer; ?></strong> <a href="<?=$manufacturers; ?>" itemprop="brand"><?=$manufacturer; ?></a>
                                  </div>
                                  <div class="goods__charact">
                                      <strong>Страна:</strong> <span><?=$country_name; ?></span>

                                      <?php if($is_country_image) { ?>
                                          <img src="/image/<?php echo $country_image; ?>" alt="<?php echo $country_name; ?>" />
                                      <?php }?>
                                  </div>
                              <?php } else { ?>
                                  <div class="goods__charact">
                                      <strong><?=$text_manufacturer; ?></strong> <span class="goods__charact">Неизвестно</span>
                                  </div>
                              <?php }?>

                              <?php if ($model) { ?>
                                  <div class="goods__charact">
                                      <strong>Артикул:</strong> <span class="goods__charact" itemprop="sku"><?=$model;?></span>
                                  </div>
                              <?php } ?>

                              <div class="goods__charact">
                                  <strong><?=$text_stock; ?></strong>
                                  <?php if($stock_warning) { ?>
                                      <span class="goods__charact--red"><?=$stock; ?></span>
                                  <?php } else { ?>
                                      <span class=""><?=$stock; ?></span>
                                  <?php } ?>
                              </div>

                              <?php if($length > 0) { ?>
                                  <div class="goods__charact">
                                      <strong><?=$text_dimension;?></strong>
                                      <span>
                                          <?php if($length >0){ ?>
                                          <?=$length; if(!empty($width)and($width >0)) echo " x "?>
                                          <?php } ?>
                                          <?php if($width >0){ ?>
                                              <?=$width; if(!empty($height)and($height >0)) echo " x "?>
                                          <?php } ?>
                                          <?php if($height >0){ ?>
                                              <?=$height ?>
                                          <?php } ?>
                                      </span>
                                  </div>
                              <?php } ?>

                              <?php if($weight > 0) { ?>
                                  <div class="goods__charact">
                                      <strong><?=$text_weight;?></strong> <span class="goods__charact"><?=$weight; ?></span>
                                  </div>
                              <?php } ?>
                          </div>
                          <div class="cart">
                              <?php if ($price) { ?>
                                  <div class="product__stock">
                                      <div class="product__storage product__storage--big" itemprop="offers" itemscope itemtype="http://schema.org/Offer">
                                          <meta itemprop="url" content="<?php echo $url; ?>">
                                          <meta itemprop="priceCurrency" content="RUB">
                                          <?php if(!$stock_warning) { ?>
                                              <link itemprop="availability" href="http://schema.org/InStock" />
                                          <?php } ?>
                                          <?php if (!$special) { ?>
                                              <?php echo $price; ?>
                                          <?php } else { ?>
                                              <span class="price-old"><?php echo $price; ?></span> <span class="price-new"><?php echo $special; ?></span>
                                          <?php } ?>
                                            <?php if ($ean) { ?>/ <?php echo $ean; ?><?php } ?>
                                          <?php if ($boxing) { ?>
                                              <div>
                                                  <?php if($boxing_special) { ?>
                                                      <span class="price-old"><?php echo $boxing_price; ?></span>
                                                      <?php echo $boxing_special; ?>
                                                  <?php } else { ?>
                                                      <?php echo $boxing_price; ?></span>
                                                      <meta itemprop="price" content="<?php echo str_replace(array(' ', ',', 'р.', '₽'), array('', '.', '', ''), $price); ?>">
                                                  <?php } ?>
                                                  / <?php echo $text_boxing; ?>.<br>
                                              </div>
                                          <?php } else { ?>
                                              <meta itemprop="price" content="<?php echo str_replace(array(' ', ',', 'р.', '₽'), array('', '.', '', ''), $price); ?>">
                                          <?php } ?>
                                      </div>
                                  </div>
                              <?php } ?>
                              <div class="category-product-cart">
                                  <div class="product__offer">
                                      <div class="counter product-counter">
                                          <span class="counter__btn counter__btn--bottom">-</span>
                                          <input type="text" class="counter__input" name="quantity" value="1" id="quantity">
                                          <span class="counter__btn counter__btn--top">+</span>
                                      </div>
                                      <?php if(!$stock_warning) { ?>
                                          <button class="button btn-cart" onclick="cart.add('<?php echo $product_id; ?>', $('.counter__input').val());">В корзину</button>
                                          <button class="button btn-cart btn-border" data-toggle="modal" data-target="#oneclick_modal">Купить в 1 клик</button>
                                       <?php } ?>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
               </div>
               <div class="goods__tabs">
                  <ul class="tabs clearfix">
                      <li class="tab-link current"><a href="tab-1">Описание</a></li>
                      <li class="tab-link"><a href="tab-2">Характеристки</a></li>
                      <li class="tab-link"><a href="tab-3">Доставка</a></li>
                  </ul>
                  <div id="tab-1" class="tab-content current">
                      <div class="tab-bg">
                          <div class="section__text" itemprop="description">
                              <?php if (in_array($top_category, array(247, 397))) { ?>
                                  <?= $heading_title; ?>
                                  <?php if($special_cat) { echo 'из коллекции '. $breadcrumbs[count($breadcrumbs)-2]['text']; } ?>
                                  <?php if(!empty($manufacturer)) { echo 'производства фабрики '. $manufacturer; } ?> – купить по розничной цене можно в интернет-магазине в Москве по адресу: ул. Нагатинская д.3Б, офис № 315 или через наш интернет-магазин «mosotdelka.ru». Для оптовых покупок можно оставить заявку здесь.
                                  <?php if(!empty($country_name)) {echo 'Страна происхождения – '.$country_name.'. '; }?>
                                  <?php if(!empty($filters['Поверхность'])) {echo 'Поверхность – '.implode(', ', $filters['Поверхность']).'. '; }?>
                                  <?php if(!empty($filters['Применение'])) {echo 'Область применения материала – '.implode(', ', $filters['Применение']).'. '; }?>
                                  Мы осуществляем доставку по Москве и Московской области. Продукция нашей компании может быть доставлена в города России транспортными компаниями. Узнать о наличии товара на складе можно по телефону +7 (495) 645-80-85 и +7 (916) 778-99-88. Реальный вид продукта может отличаться от приведенного изображения. В нашем каталоге представлена керамическая плитка и керамогранит из Италии, Испании, Португалии и России. Представленные на сайте коллекции имеют фотографии интерьеров и отдельных плиток.
                              <?php } ?>
                          </div>
                      </div>
                  </div>
                  <div id="tab-2" class="tab-content">
                      <div class="tab-bg">
                          <?php if (!empty($attribute_groups)) { ?>
                              <ul class="tabs__list">
                                  <?php foreach ($attribute_groups as $attribute_group) { ?>
                                      <?php foreach ($attribute_group['attribute'] as $attribute) {
                                          $attribute['text'] = html_entity_decode($attribute['text'], ENT_QUOTES, 'UTF-8');
                                      ?>
                                          <li>
                                              <p class="tabs__list--left tabs__list--grey"><?php echo $attribute['name']; ?></p>
                                              <p class="tabs__list--right"><?php echo $attribute['text']; ?></p>
                                          </li>
                                      <?php } ?>
                                  <?php } ?>
                              </ul>
                          <?php } ?>
                      </div>
                  </div>
                  <div id="tab-3" class="tab-content">
                      <div class="tab-bg">
                          <table border="1" cellpadding="2" cellspacing="1">
                              <colgroup>
                                  <col width="100">
                                  <col width="172">
                                  <col width="101">
                                  <col width="208">
                              </colgroup>
                              <tbody>
                                  <tr>
                                      <td>
                                          <strong>Вес заказа</strong></td>
                                      <td>
                                          <strong>Москва (в пределах МКАД)</strong></td>
                                      <td>
                                          <strong>за МКАД</strong></td>
                                      <td>
                                          <strong>Регионы</strong></td>
                                  </tr>
                                  <tr align="center">
                                      <td>
                                          <p>
                                              до 1,5 тонн</p>
                                      </td>
                                      <td>
                                          2000 руб</td>
                                      <td>
                                          +25 руб/км</td>
                                      <td>
                                          До транспортной компании по прайсу. Услуги транспортной компании оплачивает покупатель.</td>
                                  </tr>
                                  <tr align="center">
                                      <td>
                                          <p>
                                              до 3 тонн</p>
                                      </td>
                                      <td>
                                          3000 руб</td>
                                      <td>
                                          +30 руб/км</td>
                                      <td>
                                          До транспортной компании по прайсу. Услуги транспортной компании оплачивает покупатель.</td>
                                  </tr>
                                  <tr align="center">
                                      <td>
                                          <p>
                                              до 5 тонн</p>
                                      </td>
                                      <td>
                                          4000 руб</td>
                                      <td>
                                          +35 руб/км</td>
                                      <td>
                                          До транспортной компании по прайсу. Услуги транспортной компании оплачивает покупатель.</td>
                                  </tr>
                                  <tr align="center">
                                      <td>
                                          <p>
                                              до 10 тонн</p>
                                      </td>
                                      <td>
                                          Цена оговаривается</td>
                                      <td>
                                          +35 руб/км</td>
                                      <td>
                                          До транспортной компании по прайсу. Услуги транспортной компании оплачивает покупатель.</td>
                                  </tr>
                                  <tr align="center">
                                      <td>
                                          до 20 тонн</td>
                                      <td>
                                          Цена оговаривается</td>
                                      <td>
                                          +35 руб/км</td>
                                      <td>
                                          &nbsp;</td>
                                  </tr>
                              </tbody>
                          </table>
                      </div>
                  </div>
              </div>
              <?php if ($products_similar) { ?>
                    <div class="similar__products" id="similar">
                        <div class="title__container">
                            <h2 class="section-title">ПОХОЖИЕ ТОВАРЫ</h2>
                        </div>

                       <div class="products">
               <?php foreach ($products_similar as $product) { ?>
               <div class="product">
                  <a href="<?php echo $product['href']; ?>" class="product__img">
                  <?php if ($product['thumb']) { ?>
                  <img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
                  <?php } ?>
                  </a>
                  <div class="product__body">
                     <a href="<?php echo $product['href']; ?>"  class="product__name">
                     <?=mb_substr($product['name'], 0, 40) . "...";?>
                     </a>  <!-- product__name -->
                     <div class="product__instock"><i class="fa fa-check"></i> В наличии</div>
                     <div class="product__info">
                        <?php if ($product['manufacturer']) { ?>
                            <div class="manufacturer">
                               <?php echo $text_manufacturer; ?>
                               <a href="<?php echo $product['manufacturer']['href']; ?>"><?php echo $product['manufacturer']['name']; ?></a>
                            </div>
                        <?php } ?>
                       <?php if(!empty($product['country_name'])) { ?>
                           <div class="manufacturer_country">
                                Страна:
                               <?php echo $product['country_name']; ?>
                               <?php if($product['is_country_image']) { ?>
                                <img src="<?php echo $product['country_image']; ?>" alt="<?php echo $product['country_name']; ?>" />
                               <?php }?>
                           </div>
                       <?php } ?>
                     </div>
                     <!-- product__info -->
                     <div class="category-product-cart">
                        <div class="product__stock">
                           <?php if ($product['price']) { ?>
                           <div class="product__storage">
                              <?php if (!$product['special']) { ?>
                              <?php echo $product['price']; ?><?php if(!empty($product['ean'])){ ?>(<?php echo $product['ean']; ?>)<?php } ?>
                              <?php } else { ?>
                              <span class="price-old">
                              <?php echo $product['price']; ?><?php if(!empty($product['ean'])){ ?>(<?php echo $product['ean']; ?>)<?php } ?>
                              </span>
                              <span class="price-new">
                              <?php echo $product['special']; ?><?php if(!empty($product['ean'])){ ?>(<?php echo $product['ean']; ?>)<?php } ?>
                              </span>
                              <?php } ?>
                              <?php if ($product['boxing'] != 0) { ?>
                              <div>
                                 <?php if (!$product['special']) { ?>
                                 <?php echo $product['boxing_price']; ?> (<?php echo $text_boxing; ?>)
                                 <?php } else { ?>
                                 <span class="price-old">
                                 <?php echo $product['boxing_price']; ?>
                                 </span>
                                 <span class="price-new">
                                 <?php echo $product['boxing_special']; ?>(<?php echo $text_boxing; ?>)
                                 </span>
                                 <?php } ?>
                              </div>
                              <?php } ?>
                           </div>
                           <?php } ?>
                            <div class="counter">
                                <span class="counter__btn counter__btn--bottom">-</span>
                                <input type="text" class="counter__input" name="quantity" value="1">
                                <span class="counter__btn counter__btn--top">+</span>
                            </div>
                        </div>
                        <div class="buttons">
                           <button class="button btn-cart button-category-cart" onclick="cart.add(<?php echo $product['product_id']; ?>, $(this).closest('.product').find('.counter__input').val())">В корзину</button>
                           <button class="button btn-cart btn-border button-category-cart" data-toggle="modal" data-target="#oneclick_modal">Купить в 1 клик</button>
                     </div>
                     </div>
                  </div>
               </div>
               <!-- product -->
               <?php } ?>
            </div>
                    </div>
                    <?php } ?>
            </div>
         </div>
      </div>
   </div>
              <!--div class="advantages">
   <h2 class="section-title">
      НАШИ ПРЕИМУЩЕСТВА</h2>
   <div class="advantage__row">
      <div class="advantage">
         <div class="advantage__img">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv1.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Нам доверяют</h4>
            <ul class="advantage__list">
               <li>за качество </li>
               <li>за индивидуальный подход </li>
               <li>за широкий ассортимент</li>
            </ul>
         </div>
      </div>
      <!-- advantage >
      <div class="advantage">
         <div class="advantage__img advantage__img--center">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv2.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Удобно выбирать</h4>
            <ul class="advantage__list">
                <li>большой ассортимент товаров</li>
               <li>наличие шоу-рума</li>
               <li>опытные консультанты</li>
            </ul>
         </div>
      </div>
      <!-- advantage >
      <div class="advantage">
         <div class="advantage__img">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv3.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Просто заказать</h4>
            <ul class="advantage__list">
               <li>одним кликом на сайте </li>
               <li>одним звонком по телефону</li>
               <li>одним визитом в шоу-рум</li>
            </ul>
         </div>
      </div>
      <!-- advantage ></div>
   <!-- advantages__row
   <div class="advantage__row">
    <div class="advantage">
         <div class="advantage__img">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv4.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Доставка и самовывоз</h4>
            <ul class="advantage__list">
               <li>Экспресс доставка в течении дня</li>
               <li>Самовывоз в день заказ</li>
               <li>Мгновенная взаимосвязь</li>
            </ul>
         </div>
      </div>
      <!-- advantage >
      <div class="advantage">
         <div class="advantage__img">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv5.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Легко оплатить</h4>
            <ul class="advantage__list">
               <li>Онлайн-перевод на карту</li>
               <li>Оплата при получении</li>
               <li>Расчет безналичными</li>
            </ul>
         </div>
      </div>
      <!-- advantage >
      <div class="advantage">
         <div class="advantage__img">
            <img alt="advantages" src="catalog/view/theme/corsica/img/advantages/adv6.png" /></div>
         <!-- advantage__img >
         <div class="advantage__content">
            <h4 class="advantage__title">
               Скидки и акции</h4>
            <ul class="advantage__list">
               <li>сезонные предложения</li>
               <li>особые условия для специальных заказов</li>
               <li>акции от производителей</li>
            </ul>
         </div>
      </div>
      <!-- advantage ></div>
   <!-- advantages__row ></div-->
   <?php echo $content_bottom; ?>
</div>
<section class="section-bg slider-not-benefits" id="">
<div class="wrapper">

  <div class="heading">
    <h2>Наши преимущества</h2>
  </div>

  <div class="benefits-list list">
    <div class="benefits-list_item item">
      <span class="benefits-icon parthners-icon"></span>
      <h5>Нам доверяют</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>за качество
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>за индивидуальный подход
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>за широкий ассортимент
        </li>
      </ul>
    </div>
    <div class="benefits-list_item item">
      <span class="benefits-icon easy-choise-icon"></span>
      <h5>Удобно выбирать</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>большой ассортимент товаров
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>наличие шоу-рума
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>опытные консультанты
        </li>
      </ul>
    </div>
    <div class="benefits-list_item item">
      <span class="benefits-icon easy-buy-icon"></span>
      <h5>Просто заказать</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>одним кликом на сайте
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>одним звонком по телефону
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>одним визитом в шоу-рум
        </li>
      </ul>
    </div>
    <div class="benefits-list_item item">
      <span class="benefits-icon delivery-icon"></span>
      <h5>Доставка и самовывоз</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Доставка в течении дня
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Самовывоз в день заказ
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Мгновенная взаимосвязь
        </li>
      </ul>
    </div>
    <div class="benefits-list_item item">
      <span class="benefits-icon pay-icon"></span>
      <h5>Легко оплатить</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Онлайн-перевод на карту
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Оплата при получении
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>Расчет безналичными
        </li>
      </ul>
    </div>
    <div class="benefits-list_item item">
      <span class="benefits-icon sale-icon"></span>
      <h5>Скидки и акции</h5>
      <ul class="benefits-list_ul">
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>сезонные предложения
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>особые условия для спец. заказов
        </li>
        <li class="benefits-list_ul_item">
          <span class="span-icon drop-down-button-icon-3"></span>за широкий ассортимент
        </li>
      </ul>
    </div>
  </div>


</div>
</section>
<script type="text/javascript"><!--
   $('select[name=\'recurring_id\'], input[name="quantity"]').change(function(){
    $.ajax({
      url: 'index.php?route=product/product/getRecurringDescription',
      type: 'post',
      data: $('input[name=\'product_id\'], input[name=\'quantity\'], select[name=\'recurring_id\']'),
      dataType: 'json',
      beforeSend: function() {
        $('#recurring-description').html('');
      },
      success: function(json) {
        $('.alert, .text-danger').remove();

        if (json['success']) {
          $('#recurring-description').html(json['success']);
        }
      }
    });
   });
   //-->
</script>
<script type="text/javascript"><!--
   $('#button-cart').on('click', function() {
    $.ajax({
      url: 'index.php?route=checkout/cart/add',
      type: 'post',
      data: $('#product input[type=\'text\'], #product input[type=\'hidden\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select, #product textarea'),
      dataType: 'json',
      beforeSend: function() {
        $('#button-cart').button('loading');
      },
      complete: function() {
        $('#button-cart').button('reset');
      },
      success: function(json) {
        $('.alert, .text-danger').remove();
        $('.form-group').removeClass('has-error');

        if (json['error']) {
          if (json['error']['option']) {
            for (i in json['error']['option']) {
              var element = $('#input-option' + i.replace('_', '-'));

              if (element.parent().hasClass('input-group')) {
                element.parent().after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              } else {
                element.after('<div class="text-danger">' + json['error']['option'][i] + '</div>');
              }
            }
          }

          if (json['error']['recurring']) {
            $('select[name=\'recurring_id\']').after('<div class="text-danger">' + json['error']['recurring'] + '</div>');
          }

          // Highlight any found errors
          $('.text-danger').parent().addClass('has-error');
        }

        if (json['success']) {
          $('.breadcrumb').after('<div class="alert alert-success cart-add-msg">' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

          setTimeout(function () {
             $('.btn-cart #cart-total').text(json['count']);
          //   $('.header-cart #cart-text').text(json['total'] ? json['total'] : 'Корзина');
          }, 100);

          $('html, body').animate({ scrollTop: 0 }, 'slow');

          $('#cart > ul').load('index.php?route=common/cart/info ul li');
        }
      },
           error: function(xhr, ajaxOptions, thrownError) {
               alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
           }
    });
   });
   //-->
</script>
<script type="text/javascript"><!--
   $('.date').datetimepicker({
    pickTime: false
   });

   $('.datetime').datetimepicker({
    pickDate: true,
    pickTime: true
   });

   $('.time').datetimepicker({
    pickDate: false
   });

   $('button[id^=\'button-upload\']').on('click', function() {
    var node = this;

    $('#form-upload').remove();

    $('body').prepend('<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" /></form>');

    $('#form-upload input[name=\'file\']').trigger('click');

    if (typeof timer != 'undefined') {
        clearInterval(timer);
    }

    timer = setInterval(function() {
      if ($('#form-upload input[name=\'file\']').val() != '') {
        clearInterval(timer);

        $.ajax({
          url: 'index.php?route=tool/upload',
          type: 'post',
          dataType: 'json',
          data: new FormData($('#form-upload')[0]),
          cache: false,
          contentType: false,
          processData: false,
          beforeSend: function() {
            $(node).button('loading');
          },
          complete: function() {
            $(node).button('reset');
          },
          success: function(json) {
            $('.text-danger').remove();

            if (json['error']) {
              $(node).parent().find('input').after('<div class="text-danger">' + json['error'] + '</div>');
            }

            if (json['success']) {
              alert(json['success']);

              $(node).parent().find('input').val(json['code']);
            }
          },
          error: function(xhr, ajaxOptions, thrownError) {
            alert(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
          }
        });
      }
    }, 500);
   });
   //-->
</script>
<script type="text/javascript"><!--
   $('#review').delegate('.pagination a', 'click', function(e) {
       e.preventDefault();

       $('#review').fadeOut('slow');

       $('#review').load(this.href);

       $('#review').fadeIn('slow');
   });

   $('#review').load('index.php?route=product/product/review&product_id=<?php echo $product_id; ?>');

   $('#button-review').on('click', function() {
    $.ajax({
      url: 'index.php?route=product/product/write&product_id=<?php echo $product_id; ?>',
      type: 'post',
      dataType: 'json',
      data: $("#form-review").serialize(),
      beforeSend: function() {
        $('#button-review').button('loading');
      },
      complete: function() {
        $('#button-review').button('reset');
      },
      success: function(json) {
        $('.alert-success, .alert-danger').remove();

        if (json['error']) {
          $('#review').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '</div>');
        }

        if (json['success']) {
          $('#review').after('<div class="alert alert-success "><i class="fa fa-check-circle"></i> ' + json['success'] + '</div>');

          $('input[name=\'name\']').val('');
          $('textarea[name=\'text\']').val('');
          $('input[name=\'rating\']:checked').prop('checked', false);
        }
      }
    });
       grecaptcha.reset();
   });

   $(document).ready(function() {
    $('.thumbnails').magnificPopup({
      type:'image',
      delegate: 'a',
      gallery: {
        enabled:true
      }
    });
   });

   $(document).ready(function() {
    var hash = window.location.hash;
    if (hash) {
      var hashpart = hash.split('#');
      var  vals = hashpart[1].split('-');
      for (i=0; i<vals.length; i++) {
        $('div.options').find('select option[value="'+vals[i]+'"]').attr('selected', true).trigger('select');
        $('div.options').find('input[type="radio"][value="'+vals[i]+'"]').attr('checked', true).trigger('click');
      }
    }
   })
   //-->
</script>
<?php echo $footer; ?>
