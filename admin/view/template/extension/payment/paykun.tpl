<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" form="form-paykun" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-body">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-paykun" class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-general" data-toggle="tab"><?php echo $tab_general; ?></a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-general">

                            <div class="form-group">
                                <label class="control-label col-sm-3" for="paykun_status">
                                    <span data-toggle="tooltip" title="<?php echo $entry_status_help; ?>"><?php echo $entry_status; ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <select name="paykun_status" class="form-control">
                                        <?php if ($paykun_status) { ?>
                                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                        <option value="0"><?php echo $text_disabled; ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_enabled; ?></option>
                                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group required">
                                <label class="control-label col-sm-3" for="paykun_merchant_id">
                                    <span data-toggle="tooltip" title="<?php echo $entry_merchant_id_help; ?>"><?php echo $entry_merchant_id; ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <input type="text" name="paykun_merchant_id" id="paykun_merchant_id" value="<?php echo $paykun_merchant_id; ?>" class="form-control"/>
                                    <?php if ($error_merchant_id) { ?>
                                    <div class="text-danger"><?php echo $error_merchant_id; ?></div>
                                    <?php } ?>
                                </div>
                            </div>



                            <div class="form-group required">
                                <label class="control-label col-sm-3" for="paykun_access_token">
									<span data-toggle="tooltip" title="<?php echo $entry_access_token_help; ?>">
										<?php echo $entry_access_token; ?>
									</span>
                                </label>
                                <div class="col-sm-9">
                                    <input type="text" name="paykun_access_token" id="paykun_access_token" value="<?php echo $paykun_access_token; ?>" class="form-control"/>
                                    <?php if ($error_access_token) { ?>
                                    <div class="text-danger"><?php echo $error_access_token; ?></div>
                                    <?php } ?>
                                </div>
                            </div>


                            <div class="form-group required">
                                <label class="control-label col-sm-3" for="paykun_enc_key">
                                    <span data-toggle="tooltip" title="<?php echo $entry_enc_key_help; ?>"><?php echo $entry_enc_key; ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <input type="text" name="paykun_enc_key" id="paykun_enc_key" value="<?php echo $paykun_entry_enc_key; ?>" class="form-control"/>
                                    <?php if ($error_access_token) { ?>
                                    <div class="text-danger"><?php echo $error_access_token; ?></div>
                                    <?php } ?>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-sm-3" for="paykun_order_success_status_id">
                                    <span data-toggle="tooltip" title="<?php echo $entry_order_success_status_help; ?>"><?php echo $entry_order_success_status; ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <select name="paykun_order_success_status_id" id="paykun_order_success_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $paykun_order_success_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-sm-3" for="paykun_order_failed_status_id">
                                    <span data-toggle="tooltip" title="<?php echo $entry_order_failed_status_help; ?>"><?php echo $entry_order_failed_status; ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <select name="paykun_order_failed_status_id" id="paykun_order_failed_status_id" class="form-control">
                                        <?php foreach ($order_statuses as $order_status) { ?>
                                        <?php if ($order_status['order_status_id'] == $paykun_order_failed_status_id) { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" selected="selected"><?php echo $order_status['name']; ?></option>
                                        <?php } else { ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>"><?php echo $order_status['name']; ?></option>
                                        <?php } ?>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="control-label col-sm-3" for="paykun_log_status">
                                    <span data-toggle="tooltip" title="<?php echo $entry_log_status_help ?>"><?php echo $entry_log_status ?></span>
                                </label>
                                <div class="col-sm-9">
                                    <select name="paykun_log_status" class="form-control">
                                        <?php if ($paykun_log_status){ ?>
                                        <option value="1" selected="selected"><?php echo $text_enabled ?></option>
                                        <option value="0"><?php echo $text_disabled ?></option>
                                        <?php } else { ?>
                                        <option value="1"><?php echo $text_enabled ?></option>
                                        <option value="0" selected="selected"><?php echo $text_disabled ?></option>
                                        <?php } ?>
                                    </select>
                                </div>
                            </div>



                        </div>

                        <div class="tab-pane" id="tab-order-status">


                            <div class="row-fluid">
                                <div class="pull-right btn btn-primary" onclick="switchToTab('tab-promo-code');"><?php echo $text_next; ?></div>
                            </div>

                        </div>



                    </div>

                </form>
            </div>

            <div class="panel-footer">
                <?php if(isset($footer_text) && !empty($footer_text)) echo $footer_text; ?>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"><!--
    $('#tabs a:first').tab('show');

    var default_callback_url = "<?php echo $default_callback_url; ?>";

    function toggleCallbackUrl(){
        if($("select[name=\"paykun_callback_url_status\"]").val() == "1"){
            $(".callback_url_group").removeClass("hidden");
            $("input[name=\"paykun_callback_url\"]").prop("readonly", false);
        } else {
            $(".callback_url_group").addClass("hidden");
            $("#paykun_callback_url").val(default_callback_url);
            $("input[name=\"paykun_callback_url\"]").prop("readonly", true);
        }
    }

    $(document).on("change", "select[name=\"paykun_callback_url_status\"]", function(){
        toggleCallbackUrl();
    });
    toggleCallbackUrl();

    $(document).ready(function(){
        var active_tab = $(".tab-pane .text-danger").eq(0).parents(".tab-pane").attr("id");
        $("a[href='#"+active_tab+"'").trigger("click");
    });

    function switchToTab(tab_name){
        $('.nav-tabs a[href="#'+tab_name+'"]').tab('show');
    }

    //--></script>
<?php echo $footer; ?>