<?php
class ModelExtensionPaymentPaykun extends Model {
    public function getMethod($address, $total) {

        $method_data = array();

        $this->language->load('extension/payment/paykun');

        $method_data = array(
            'code'			=> 'paykun',
            'title'			=> $this->language->get('text_title'),
            'sort_order'	=> $this->config->get('paykun_sort_order'),
            'terms'			=> ''
        );

        return $method_data;
    }
}
?>