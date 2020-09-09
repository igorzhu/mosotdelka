
  <section class="main-cat-box">
                  <div class="row">
                    <?php foreach ($categories as $category) { ?>
                     <div class="col-lg-3 col-md-3 col-xs-6 cat-box">
                        <div class="box">
                           <a href="<?php echo $category['href']; ?>">
          <img src="<?php echo $category['thumb']; ?>" alt="<?php echo $category['name']; ?>" title="<?php echo $category['name']; ?>" class="img-responsive" />
        </a>
                           <div class="box-text">
                             <h2><?php echo $category['name']; ?></h2>
                           </div>
                        </div>
                        <a class="btn btn-bord btn-lg btn-block visible-lg" href="<?php echo $category['href']; ?>">Подробнее</a>
                     </div>
                       <?php } ?>
       </div>
       </section>





