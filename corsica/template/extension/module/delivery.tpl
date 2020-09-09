  
      <section id="delivery" class="mail">
       <form id="data-content" class="form" >
         <div class="container">
            <div class="row">
               <div class="col-lg-1 col-md-1 hidden-sm hidden-xs">
                  <img class="img-responsive" src="catalog/view/theme/corsica/img/i6.svg" alt="">
               </div>
               <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                  <h4>Подпишитесь</h4>
                  <h6>Рассылаем только значимую информацию</h6>
               </div>
               <div class="col-lg-5 col-md-4 col-sm-8 col-xs-12">
                  <div class="inner-addon left-addon">
                     <i class="fa fa-envelope-o" aria-hidden="true"></i>
                      <input type="text" class="email_form form-control" name="email" placeholder="Укажите ваш E-mail">
                  </div>
               </div>
               <div class="col-lg-2 col-md-3 col-sm-4">
                  <input type="submit" class="button_form btn btn-subscr btn-block">            
                       <span id="popover_email" data-container="body" data-toggle="popover" data-placement="top" data-content=""  ></span>
               </div>
            </div>
         </div>
            </form>

      </section>




<script>
    $('#data-content').on('submit', function() {
        var send = $(this).serialize();
        $.ajax({
            url: '<?php echo $action ?>',
            type: 'POST',
            data: send,
            dataType: 'text',
            success: handler
        });

        function handler(answer) {
            function hidePopup(){
                setTimeout(function(){$('#popover_email').popover('hide');},3000);
            };
            if (answer === 'success')
            {
                $('#popover_email')[0].dataset.content = '<?php echo $textSuccess ?>';
                $('#popover_email').popover('show');
                 hidePopup();
            }
            else if (answer === 'notValid')
            {
                $('#popover_email')[0].dataset.content = '<?php echo $textNotValid ?>';
                $('#popover_email').popover('show');
                hidePopup();
            }
            else if (answer === 'issetEmail')
            {
                $('#popover_email')[0].dataset.content = '<?php echo $textRegisterEmail ?>';
                $('#popover_email').popover('show');
                 hidePopup();
            }
            else
            {
                $('#popover_email')[0].dataset.content = '<?php echo $textErrorEmeil ?>';
                $('#popover_email').popover('show');
                hidePopup();
            }
            console.log(answer);
        }       
        return false;
    });
    $('#popover_email').popover();
</script>
