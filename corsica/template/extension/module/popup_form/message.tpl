<!-- Button trigger modal -->
<a data-toggle="modal" style="width:100%;" class="btn btn-primary" data-target="#form_message">
    Напишите нам
</a>
<!-- Modal -->
<div class="modal fade" id="form_message" tabindex="-1" role="dialog" aria-labelledby="form_message_label">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="form_message_label"><?= $name; ?></h4>
      </div>
      <div class="modal-body">
          <form name="massage" class="popup_form" action="<?= $action ?>" >    
              <input type="hidden" name="form_subject" value="<?= $name; ?>">
              
              <?php if ($form_name['action'])  { ?>
                <div class="form-group">
                    <label for="form_name"><?= $form_name['label']; ?></label>
                    <input type="text" name="form_name" class="form-control" id="form_name">
                </div>
              <?php } ?>              
              <?php if ($phone['action']) { ?>
                <div class="form-group">
                    <label for="phone"><?= $phone['label']; ?></label>
                    <input type="text" name="phone" class="form-control" id="phone">
                    <span style="display: none;" class="popup_form_error_phone text-danger popup_form_error">  
                        <?= $text_error_phone; ?>  
                    </span>
                </div>
              <?php } ?>
              <?php if ($email['action']) { ?>
                <div class="form-group">
                    <label for="email"><?= $email['label']; ?></label>
                    <input type="email" name="email" class="form-control" id="email">
                    <span style="display: none;" class="text-danger popup_form_error_email popup_form_error">  
                        <?= $text_error_email ?>
                    </span>
                </div>
              <?php } ?>
              <?php if ($report['action']) { ?>
                <div class="form-group">
                    <label for="report"><?= $report['label']; ?></label>
                    <textarea name="report" class="form-control" id="report"></textarea>
                </div>
              <?php } ?>

          </form>
          <div class="popup_form_success" style="display: none;">
              <p class="text-danger success_style"><?= $text_success  ?></p>
         </div>
      </div>
        <div class="modal-footer">
            <a id="form_send" class="form_send btn btn-primary" data-type="#form_message" >Отправить</a>
            <a id="form_close" class="btn btn-danger" data-dismiss="modal" class="pull-left">Закрыть</a>
        </div>
    </div>

  </div>
</div>
