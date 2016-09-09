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

    echo '</div></div></div><div class="col2-set"><div class="col-1"><div id="my_custom_checkout_field"><h2>' . __('Enfant') . '</h2>';

    woocommerce_form_field( 'child_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'child_firstName' ));
    woocommerce_form_field( 'child_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'child_lastName' ));
    woocommerce_form_field( 'child_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'child_address' ));
    woocommerce_form_field( 'child_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'child_city' ));    
    woocommerce_form_field( 'child_state', array(
        'type'          => 'state',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'child_state' ));
    woocommerce_form_field( 'child_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'placeholder'   => __('Code postal')
        ), $checkout->get_value( 'child_zipcode' ));
    woocommerce_form_field( 'child_birthdate', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Date de naissance'),
        'placeholder'   => __('Date de naissance')
        ), $checkout->get_value( 'child_birthdate' ));
    woocommerce_form_field( 'child_phone', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'child_phone' ));    
    woocommerce_form_field( 'child_email', array(
        'type'          => 'email',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'child_email' ));
    echo '</div></div>';
}

add_action( 'woocommerce_after_order_notes', 'addParentOneInfoFields' );

function addParentOneInfoFields( $checkout ) {

    echo '<div class="col-2"><div id="my_custom_checkout_field"><h2>' . __('Parent 1 ou Tuteur') . '</h2>';

    woocommerce_form_field( 'parentOne_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'parentOne_firstName' ));
    woocommerce_form_field( 'parentOne_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'parentOne_lastName' ));
    woocommerce_form_field( 'sameAddress', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser la même adresse que l\'enfant'),
        'placeholder'   => __('Utiliser la même adresse que l\'enfant'),
        ), $checkout->get_value( 'sameAddress' ));    
    woocommerce_form_field( 'parentOne_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'parentOne_address' ));
    woocommerce_form_field( 'parentOne_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'parentOne_city' ));
    woocommerce_form_field( 'parentOne_state', array(
        'type'          => 'state',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'parentOne_state' )); 
    woocommerce_form_field( 'parentOne_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'placeholder'   => __('Code postal')
        ), $checkout->get_value( 'parentOne_zipcode' ));
    woocommerce_form_field( 'parentOne_phone', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'parentOne_phone' ));     
    woocommerce_form_field( 'parentOne_phoneOther', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Autre téléphone'),
        'placeholder'   => __('Autre téléphone')
        ), $checkout->get_value( 'parentOne_phoneOther' ));    
    woocommerce_form_field( 'parentOne_email', array(
        'type'          => 'email',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'parentOne_email' ));
    echo '</div></div></div>';
}

add_action( 'woocommerce_after_order_notes', 'addParentTwoInfoFields' );

function addParentTwoInfoFields( $checkout ) {

    echo '<div class="col2-set"><div class="col-1"><div id="my_custom_checkout_field"><h2>' . __('Parent 2') . '</h2>';

    woocommerce_form_field( 'parentTwo_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'parentTwo_firstName' ));
    woocommerce_form_field( 'parentTwo_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'parentTwo_lastName' ));
    woocommerce_form_field( 'sameAddress', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser la même adresse que l\'enfant'),
        'placeholder'   => __('Utiliser la même adresse que l\'enfant'),
        ), $checkout->get_value( 'sameAddress' ));    
    woocommerce_form_field( 'parentTwo_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'parentTwo_address' ));
    woocommerce_form_field( 'parentOne_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'parentTwo_city' ));
    woocommerce_form_field( 'parentOne_state', array(
        'type'          => 'state',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'parentTwo_state' )); 
    woocommerce_form_field( 'parentTwo_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'placeholder'   => __('Code postal')
        ), $checkout->get_value( 'parentTwo_zipcode' ));
    woocommerce_form_field( 'parentTwo_phone', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'parentTwo_phone' ));     
    woocommerce_form_field( 'parentTwo_phoneOther', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Autre téléphone'),
        'placeholder'   => __('Autre téléphone')
        ), $checkout->get_value( 'parentTwo_phoneOther' ));    
    woocommerce_form_field( 'parentTwo_email', array(
        'type'          => 'email',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'parentTwo_email' ));
    echo '</div></div>';
}

add_action( 'woocommerce_after_order_notes', 'addOtherContactInfoFields' );

function addOtherContactInfoFields( $checkout ) {

    echo '<div class="col-2"><div id="my_custom_checkout_field"><h2>' . __('Autre Contact') . '</h2>';

    woocommerce_form_field( 'otherContact_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'parentTwo_firstName' ));
    woocommerce_form_field( 'otherContact_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'otherContact_lastName' ));
    woocommerce_form_field( 'sameAddress', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser la même adresse que l\'enfant'),
        'placeholder'   => __('Utiliser la même adresse que l\'enfant'),
        ), $checkout->get_value( 'sameAddress' ));    
    woocommerce_form_field( 'otherContact_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'otherContact_address' ));
    woocommerce_form_field( 'otherContact_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'otherContact_city' ));
    woocommerce_form_field( 'otherContact_state', array(
        'type'          => 'state',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'otherContact_state' )); 
    woocommerce_form_field( 'otherContact_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'placeholder'   => __('Code postal')
        ), $checkout->get_value( 'otherContact_zipcode' ));
    woocommerce_form_field( 'otherContact_phone', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'placeholder'   => __('Téléphone')
        ), $checkout->get_value( 'otherContact_phone' ));     
    woocommerce_form_field( 'otherContact_phoneOther', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Autre téléphone'),
        'placeholder'   => __('Autre téléphone')
        ), $checkout->get_value( 'otherContact_phoneOther' ));    
    woocommerce_form_field( 'otherContact_email', array(
        'type'          => 'email',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Courriel'),
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'otherContact_email' ));
    echo '</div></div></div>';
}
/**
 * Update the order meta with field value
 */
add_action( 'woocommerce_checkout_update_order_meta', 'my_custom_checkout_field_update_order_meta' );

function my_custom_checkout_field_update_order_meta( $order_id ) {
    //Add Child info    
    if ( ! empty( $_POST['child_firstName'] ) ) {
        update_post_meta( $order_id, 'child_firstName', sanitize_text_field( $_POST['child_firstName'] ) );
    }    
    if ( ! empty( $_POST['child_lastName'] ) ) {
        update_post_meta( $order_id, 'child_lastName', sanitize_text_field( $_POST['child_lastName'] ) );
    }    
    if ( ! empty( $_POST['child_address'] ) ) {
        update_post_meta( $order_id, 'child_address', sanitize_text_field( $_POST['child_address'] ) );
    }     
    if ( ! empty( $_POST['child_city'] ) ) {
        update_post_meta( $order_id, 'child_city', sanitize_text_field( $_POST['child_city'] ) );
    } 
    if ( ! empty( $_POST['child_state'] ) ) {
        update_post_meta( $order_id, 'child_state', sanitize_text_field( $_POST['child_state'] ) );
    } 
    if ( ! empty( $_POST['child_zipcode'] ) ) {
        update_post_meta( $order_id, 'child_zipcode', sanitize_text_field( $_POST['child_zipcode'] ) );
    } 
    if ( ! empty( $_POST['child_birthdate'] ) ) {
        update_post_meta( $order_id, 'child_birthdate', sanitize_text_field( $_POST['child_birthdate'] ) );
    } 
    if ( ! empty( $_POST['child_phone'] ) ) {
        update_post_meta( $order_id, 'child_phone', sanitize_text_field( $_POST['child_phone'] ) );
    } 
    if ( ! empty( $_POST['child_email'] ) ) {
        update_post_meta( $order_id, 'child_email', sanitize_text_field( $_POST['child_email'] ) );
    } 
    
    //Add Parent 1 info   
    if ( ! empty( $_POST['parentOne_firstName'] ) ) {
        update_post_meta( $order_id, 'parentOne_firstName', sanitize_text_field( $_POST['parentOne_firstName'] ) );
    }    
    if ( ! empty( $_POST['parentOne_lastName'] ) ) {
        update_post_meta( $order_id, 'parentOne_lastName', sanitize_text_field( $_POST['parentOne_lastName'] ) );
    }    
    if ( ! empty( $_POST['parentOne_address'] ) ) {
        update_post_meta( $order_id, 'parentOne_address', sanitize_text_field( $_POST['parentOne_address'] ) );
    }     
    if ( ! empty( $_POST['parentOne_city'] ) ) {
        update_post_meta( $order_id, 'parentOne_city', sanitize_text_field( $_POST['parentOne_city'] ) );
    } 
    if ( ! empty( $_POST['parentOne_state'] ) ) {
        update_post_meta( $order_id, 'parentOne_state', sanitize_text_field( $_POST['parentOne_state'] ) );
    } 
    if ( ! empty( $_POST['parentOne_zipcode'] ) ) {
        update_post_meta( $order_id, 'parentOne_zipcode Postal', sanitize_text_field( $_POST['parentOne_zipcode'] ) );
    } 
    if ( ! empty( $_POST['parentOne_phone'] ) ) {
        update_post_meta( $order_id, 'parentOne_phone', sanitize_text_field( $_POST['parentOne_phone'] ) );
    } 
    if ( ! empty( $_POST['parentOne_phoneOther'] ) ) {
        update_post_meta( $order_id, 'parentOne_phoneOther', sanitize_text_field( $_POST['parentOne_phoneOther'] ) );
    } 
    if ( ! empty( $_POST['parentOne_email'] ) ) {
        update_post_meta( $order_id, 'parentOne_email', sanitize_text_field( $_POST['parentOne_email'] ) );
    }
    
    //Add Parent 2 info   
    if ( ! empty( $_POST['parentTwo_firstName'] ) ) {
        update_post_meta( $order_id, 'parentTwo_firstName', sanitize_text_field( $_POST['parentTwo_firstName'] ) );
    }    
    if ( ! empty( $_POST['parentTwo_lastName'] ) ) {
        update_post_meta( $order_id, 'parentTwo_lastName', sanitize_text_field( $_POST['parentTwo_lastName'] ) );
    }    
    if ( ! empty( $_POST['parentTwo_address'] ) ) {
        update_post_meta( $order_id, 'parentTwo_address', sanitize_text_field( $_POST['parentTwo_address'] ) );
    }     
    if ( ! empty( $_POST['parentTwo_city'] ) ) {
        update_post_meta( $order_id, 'parentTwo_city', sanitize_text_field( $_POST['parentTwo_city'] ) );
    } 
    if ( ! empty( $_POST['parentTwo_state'] ) ) {
        update_post_meta( $order_id, 'parentTwo_state', sanitize_text_field( $_POST['parentTwo_state'] ) );
    } 
    if ( ! empty( $_POST['parentTwo_zipcode'] ) ) {
        update_post_meta( $order_id, 'parentTwo_zipcode', sanitize_text_field( $_POST['parentTwo_zipcode'] ) );
    } 
    if ( ! empty( $_POST['parentTwo_phone'] ) ) {
        update_post_meta( $order_id, 'parentTwo_phone', sanitize_text_field( $_POST['parentTwo_phone'] ) );
    } 
    if ( ! empty( $_POST['parentTwo_phoneOther'] ) ) {
        update_post_meta( $order_id, 'parentTwo_phoneOther', sanitize_text_field( $_POST['parentTwo_phoneOther'] ) );
    } 
    if ( ! empty( $_POST['parentTwo_email'] ) ) {
        update_post_meta( $order_id, 'parentTwo_email', sanitize_text_field( $_POST['parentTwo_email'] ) );
    }
    
    //Add Other contact info   
    if ( ! empty( $_POST['otherContact_firstName'] ) ) {
        update_post_meta( $order_id, 'otherContact_firstName', sanitize_text_field( $_POST['otherContact_firstName'] ) );
    }    
    if ( ! empty( $_POST['otherContact_lastName'] ) ) {
        update_post_meta( $order_id, 'otherContact_lastName', sanitize_text_field( $_POST['otherContact_lastName'] ) );
    }    
    if ( ! empty( $_POST['otherContact_address'] ) ) {
        update_post_meta( $order_id, 'otherContact_address', sanitize_text_field( $_POST['otherContact_address'] ) );
    }     
    if ( ! empty( $_POST['otherContact_city'] ) ) {
        update_post_meta( $order_id, 'otherContact_city', sanitize_text_field( $_POST['otherContact_city'] ) );
    } 
    if ( ! empty( $_POST['otherContact_state'] ) ) {
        update_post_meta( $order_id, 'otherContact_state', sanitize_text_field( $_POST['otherContact_state'] ) );
    } 
    if ( ! empty( $_POST['otherContact_zipcode'] ) ) {
        update_post_meta( $order_id, 'otherContact_zipcode', sanitize_text_field( $_POST['otherContact_zipcode'] ) );
    } 
    if ( ! empty( $_POST['otherContact_phone'] ) ) {
        update_post_meta( $order_id, 'otherContact_phone', sanitize_text_field( $_POST['otherContact_phone'] ) );
    } 
    if ( ! empty( $_POST['otherContact_phoneOther'] ) ) {
        update_post_meta( $order_id, 'otherContact_otherPhone', sanitize_text_field( $_POST['otherContact_phoneOther'] ) );
    } 
    if ( ! empty( $_POST['otherContact_email'] ) ) {
        update_post_meta( $order_id, 'otherContact_email', sanitize_text_field( $_POST['otherContact_email'] ) );
    }
}

/**
 * Display field value on the order edit page
 */
add_action( 'woocommerce_admin_order_data_after_shipping_address', 'my_custom_checkout_field_display_admin_order_meta', 10, 1 );

function my_custom_checkout_field_display_admin_order_meta($order){
    //Show Child info
    $temp = '</div></div><div class="order_data_column_container"><div class="order_data_column"><h3>Enfant</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'child_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'child_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'child_address', true ) 
        . '<br>' . get_post_meta( $order->id, 'child_city', true ) . ', ' . get_post_meta( $order->id, 'child_state', true ) . ', ' . get_post_meta( $order->id, 'child_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Date de naissance: </strong>' . get_post_meta( $order->id, 'child_birthdate', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'child_phone', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'child_email', true ) . '</p>';
    $temp .= '</div>';
    
    //Show Parent 1 or tutor info
    $temp .= '<div class="order_data_column"><h3>Parent 1 ou Tuteur</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'parentOne_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'parentOne_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'parentOne_address', true ) 
        . '<br>' . get_post_meta( $order->id, 'parentOne_city', true ) . ', ' . get_post_meta( $order->id, 'parentOne_state', true ) . ', ' . get_post_meta( $order->id, 'parentOne_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'parentOne_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'parentOne_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'parentOne_email', true ) . '</p>';
    $temp .= '</div>';
    
    //Show Parent 2 info
    $temp .= '<div class="order_data_column"><h3>Parent 2</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'parentTwo_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'parentTwo_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'parentTwo_address', true ) 
        . '<br>' . get_post_meta( $order->id, 'parentTwo_city', true ) . ', ' . get_post_meta( $order->id, 'parentTwo_state', true ) . ', ' . get_post_meta( $order->id, 'parentTwo_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'parentTwo_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'parentTwo_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'parentTwo_email', true ) . '</p>';
    $temp .= '</div>'; 
    
    //Show Other contact info
    $temp .= '</div><div class="order_data_column_container"><div class="order_data_column"><h3>Autre contact</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'otherContact_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'otherContact_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'otherContact_address', true ) 
        . '<br>' . get_post_meta( $order->id, 'otherContact_city', true ) . ', ' . get_post_meta( $order->id, 'otherContact_state', true ) . ', ' . get_post_meta( $order->id, 'otherContact_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'otherContact_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'otherContact_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'otherContact_email', true ) . '</p>';
    $temp .= '<div></div>';
    echo $temp;
}