
<!-- Modal -->
<div class="modal fade" id="form_order" tabindex="-1" role="dialog" aria-labelledby="form_order_label">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

      <div class="modal-body">
          <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h3 style="text-align: center; margin-bottom: 25px;" class="modal-title" id="form_order_label"><?= $name; ?></h3>
		
         <div class="popup_form_success alert alert-success" style="display: none;">
              <p class=" success_style"><?= $text_success; ?> 
         </div>
          <form name="order" class="popup_form" action="<?= $action ?>" >
              <input type="hidden" name="form_subject" value="<?= $name; ?>">
              <?php if ($form_name['action']) { ?>
                <div class="form-group">
                    <input type="text" name="form_name" class="form-control" id="form_name" placeholder="<?= $form_name['label']; ?>">
                </div>
              <?php } ?>              
              <?php if ($phone['action']) { ?>
                <div class="form-group">
                    <input type="text" name="phone" class="form-control" id="phone" placeholder="<?= $phone['label']; ?>">
<script>
//Код jQuery, установливающий маску для ввода телефона элементу input
//1. После загрузки страницы,  когда все элементы будут доступны выполнить...
$(function(){
  //2. Получить элемент, к которому необходимо добавить маску
  $("#phone").mask("+7(999) 999-9999");
});
</script>
                    <span style="display: none;" class="popup_form_error_phone text-danger popup_form_error">  
                        <?= $text_error_phone; ?>  
                    </span>
                </div>
              <?php } ?>
              <?php if ($email['action']) { ?>
                <div class="form-group">
                    <input type="email" name="email" class="form-control" id="email" placeholder="<?= $email['label']; ?>">
                    <span style="display: none;" class="text-danger popup_form_error_email popup_form_error">  
                        <?= $text_error_email ?>
                    </span>
                </div>
              <?php } ?>
              <?php if ($report['action']) { ?>
                <div class="form-group">
                    <textarea name="report" class="form-control" id="report" placeholder="<?= $report['label']; ?>"></textarea>
                </div>
              <?php } ?>
              <a id="form_send" data-type="#form_order" class="form_send btn btn-success btn-lg btn-block">Отправить</a>
          </form>    
      </div>
    </div>
  </div>
</div>
