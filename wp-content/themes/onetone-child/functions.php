<?php
/**
* Enqueues child theme stylesheet, loading first the parent theme stylesheet.
*/
function themify_custom_enqueue_child_theme_styles() {
    wp_enqueue_style( 'parent-theme-css', get_template_directory_uri() . '/style.css' );
}

add_action( 'wp_enqueue_scripts', 'themify_custom_enqueue_child_theme_styles', 11 );

add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );

// Our hooked in function - $fields is passed via the filter!
function custom_override_checkout_fields( $fields ) {
     unset($fields['order']['order_comments']);
     return $fields;
}

add_action( 'woocommerce_after_order_notes', 'addChildrenInfoFields' );

function addChildrenInfoFields( $checkout ) {

    echo '<div id="my_custom_checkout_field"><h2>' . __('Enfant') . '</h2>';

    woocommerce_form_field( 'firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'firstName' ));
    woocommerce_form_field( 'lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'lastName' ));
    woocommerce_form_field( 'child_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'child_address' ));
    woocommerce_form_field( 'city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'city' ));
    woocommerce_form_field( 'state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Province'),
        'placeholder'   => __('Province'),
        'options'       => array(
        'option_1' => 'Québec',
        'option_2' => 'Alberta')
        ), $checkout->get_value( 'state' ));
    woocommerce_form_field( 'birth_date', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Date de naissance'),
        'placeholder'   => __('Date de naissance')
        ), $checkout->get_value( 'birth_date' ));
    woocommerce_form_field( 'phone_child', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'phone_child' ));    
    woocommerce_form_field( 'email_child', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'email_child' ));
    echo '</div>';
}

add_action( 'woocommerce_after_order_notes', 'addParentOneInfoFields' );

function addParentOneInfoFields( $checkout ) {

    echo '<div id="my_custom_checkout_field"><h2>' . __('Enfant') . '</h2>';

    woocommerce_form_field( 'firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'firstName' ));
    woocommerce_form_field( 'lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'lastName' ));
    woocommerce_form_field( 'child_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'child_address' ));
    woocommerce_form_field( 'city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'city' ));
    woocommerce_form_field( 'state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Province'),
        'placeholder'   => __('Province'),
        'options'       => array(
        'option_1' => 'Québec',
        'option_2' => 'Alberta')
        ), $checkout->get_value( 'state' ));
    woocommerce_form_field( 'birth_date', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Date de naissance'),
        'placeholder'   => __('Date de naissance')
        ), $checkout->get_value( 'birth_date' ));
    woocommerce_form_field( 'phone_child', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'phone_child' ));    
    woocommerce_form_field( 'email_child', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'email_child' ));
    echo '</div>';
}

/**
 * Update the order meta with field value
 */
add_action( 'woocommerce_checkout_update_order_meta', 'my_custom_checkout_field_update_order_meta' );

function my_custom_checkout_field_update_order_meta( $order_id ) {
    if ( ! empty( $_POST['firstName'] ) ) {
        update_post_meta( $order_id, 'Prénom', sanitize_text_field( $_POST['firstName'] ) );
    } 
    if ( ! empty( $_POST['lastName'] ) ) {
        update_post_meta( $order_id, 'Nom', sanitize_text_field( $_POST['lastName'] ) );
    }
    if ( ! empty( $_POST['child_address'] ) ) {
        update_post_meta( $order_id, 'Adresse', sanitize_text_field( $_POST['child_address'] ) );
    }
}

/**
 * Display field value on the order edit page
 */
add_action( 'woocommerce_admin_order_data_after_billing_address', 'my_custom_checkout_field_display_admin_order_meta', 10, 1 );

function my_custom_checkout_field_display_admin_order_meta($order){
    echo '<p><strong>'.__('My Field').':</strong> ' . get_post_meta( $order->id, 'My Field', true ) . '</p>';
}