{#Form is rendered by paykunData#}

<?php echo $paykunData; ?>
<div class="buttons">
    <div class="pull-right">
        <input type="button" value="<?php echo $button_confirm; ?>" id="button-confirm" class="btn btn-primary" />
    </div>
</div>

<script type="text/javascript">
    $('#button-confirm').bind('click', function() {
        document.server_request.submit()
    });
</script>