<?php echo $header; ?>
<div class="container">
    <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
    </ul>
    <div class="row"><?php echo $column_left; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
            <div class="text-block">
                <div class="section-title"> <h4><?php echo $heading_title; ?></h4></div>
                
                <h3 style="margin-bottom:30px"><?php echo $text_location; ?></h3>
                <div class="anel-default">
                    <div class="table-responsive">
                        <table class="table">
                            <tr>
                                <td>Название</td>
                                <td>ООО «Стройком»</td>
                            </tr>
                            <tr>
                                <td>Адрес офиса</td>
                                <td>г. Москва ул. Нагатинская д.3Б, офис № 315</td>
                            </tr>
                            <tr>
                                <td>Адрес склада</td>
                                <td>г. Москва, Хованская промзона, поселение Сосенское ул. Адмирала Корнилова</td>
                            </tr>
                            <tr>
                                <td>Телефон</td>
                                <td><a href="tel:+74956458085">+7 (495) 645-80-85</a><br/><a href="tel:+79167789988">+7 (916) 778-99-88</a></td>
                            </tr>
                            <tr>
                                <td>E-mail</td>
                                <td><a href="mailto:info@mosotdelka.ru">info@mosotdelka.ru</a></td>
                            </tr>
                            <tr>
                                <td>Факс</td>
                                <td>+7 (985) 086-37-23</td>
                            </tr>
                            <tr>
                                <td>Реквизиты</td>
                                <td>ООО «Стройком»<br/>ИНН: 7730240287<br/>КПП: 773001001</td>
                            </tr>
                        </table>
                        </div>
                    </div>
                    <?php if ($locations) { ?>
                    <h3 style="margin-bottom:30px"><?php echo $text_store; ?></h3>
                    <div class="panel-group" id="accordion">
                        <?php foreach ($locations as $location) { ?>
                        <h4 style="margin-bottom:15px"><?php echo $location['name']; ?></h4>
                        <div class="table-responsive">
                            <table class="table">
                                <tr>
                                    <td width="150">Адрес</td>
                                    <td><?php echo $location['address']; ?></td>
                                </tr>
                                <tr>
                                    <td width="150">Телефон</td>
                                    <td><?php echo $location['telephone']; ?></td>
                                </tr>
                            </table>
                        </div>
                        <?php } ?>
                    </div>
                    <?php } ?>
                    <div style="display: table; width: 100%;">
                    <div style="display: table-row;">
                    <div style="display: table-cell; width: 50%;">
                    <h3 style="margin-bottom:10px;">Офис</h3>
                    </div>
                    <div style="display: table-cell; width: 15px;">
                    </div>
                    <div style="display: table-cell;">
                    <h3 style="margin-bottom:10px;">Склад</h3>
                    </div>
                    </div>
                    <div style="display: table-row;">
                    <div style="display: table-cell; table-cell;border: 1px solid #bbc2c6;">
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A3c20cbae62a0180b40bf629d616ac92d8a481e44b239b193e97be87fdcb97ede&width=100%25&height=400&lang=ru_RU&scroll=true"></script>
                    </div>
                    <div style="display: table-cell; width: 15px;">
                    </div>
                    <div style="display: table-cell;border: 1px solid #bbc2c6;">
                    <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A64f2cc172a55a6d9a3c7aeaf58a3753db169490f0575416f36c8fb89ff701de1&width=100%&height=400&lang=ru_RU&scroll=true"></script>
                    </div>
                    </div>
                    </div>
                    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" class="form-horizontal">
                        <fieldset>
                            <h3 style="margin:30px 0"><?php echo $text_contact; ?></h3>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" value="<?php echo $name; ?>" id="input-name" class="form-control" />
                                    <?php if ($error_name) { ?>
                                    <div class="text-danger"><?php echo $error_name; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
                                <div class="col-sm-10">
                                    <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" />
                                    <?php if ($error_email) { ?>
                                    <div class="text-danger"><?php echo $error_email; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
                                <div class="col-sm-10">
                                    <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                                    <?php if ($error_enquiry) { ?>
                                    <div class="text-danger"><?php echo $error_enquiry; ?></div>
                                    <?php } ?>
                                </div>
                            </div>
                            <?php echo $captcha; ?>
                        </fieldset>
                        <div class="buttons">
                            <div class="pull-right">
                                <input class="btn btn-primary" type="submit" value="<?php echo $button_submit; ?>" />
                            </div>
                        </div>
                    </form>
                    
                </div>
            </div>
        <?php echo $column_right; ?></div>
    </div>
    <?php echo $content_bottom; ?>
    <?php echo $footer; ?>