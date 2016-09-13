<?php
/**
* Enqueues child theme stylesheet, loading first the parent theme stylesheet.
*/
function loadChildThemeRessources() {
    wp_enqueue_style( 'parent-theme-css', get_template_directory_uri() . '/style.css' );
}

function theme_js() {
    wp_enqueue_script( 'theme_js', get_stylesheet_directory_uri() . '/custom/forms.js', array( 'jquery' ), '1.0', true );
}

add_action('wp_enqueue_scripts', 'theme_js');
add_action( 'wp_enqueue_scripts', 'loadChildThemeRessources', 11 );

add_filter( 'woocommerce_checkout_fields' , 'custom_override_checkout_fields' );

// Our hooked in function - $fields is passed via the filter!
function custom_override_checkout_fields( $fields ) {
    unset($fields['billing']['billing_first_name']);
    unset($fields['billing']['billing_last_name']);
    unset($fields['billing']['billing_company']);
    unset($fields['billing']['billing_address_1']);
    unset($fields['billing']['billing_address_2']);
    unset($fields['billing']['billing_city']);
    unset($fields['billing']['billing_postcode']);
    unset($fields['billing']['billing_country']);
    unset($fields['billing']['billing_state']);
    unset($fields['billing']['billing_email']);
    unset($fields['billing']['billing_phone']);
    unset($fields['order']['order_comments']);
    return $fields;
}

add_action( 'woocommerce_after_order_notes', 'addChildrenInfoFields' );
function addChildrenInfoFields( $checkout ) {

    echo '</div></div></div><div class="col2-set"><div class="col-1"><div id="childrenInfo"><h2>' . __('Enfant') . '</h2>';

    woocommerce_form_field( 'child_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        'required'      => true,
        ), $checkout->get_value( 'child_firstName' ));
    woocommerce_form_field( 'child_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),        
        'required'      => true,
        ), $checkout->get_value( 'child_lastName' ));
    woocommerce_form_field( 'child_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        'required'      => true,
        ), $checkout->get_value( 'child_address' ));
    woocommerce_form_field( 'child_appartment', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'placeholder'   => __('Appartement'),
        ), $checkout->get_value( 'child_appartment' ));
    woocommerce_form_field( 'child_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        'required'      => true,
        ), $checkout->get_value( 'child_city' ));    
    woocommerce_form_field( 'child_state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'options'       => array(
            'Québec'   => 'Québec',
            'Alberta'   => 'Alberta',
            'Colombie-Britannique'   => 'Colombie-Britannique',
            'Manitoba'   => 'Manitoba',
            'Nouveau-Brunswick'   => 'Nouveau-Brunswick',            
            'Terre-Neuve-et-Labrador'   => 'Terre-Neuve-et-Labrador',
            'Territoires du Nord-Ouest'   => 'Territoires du Nord-Ouest',            
            'Nouvelle-Écosse'   => 'Nouvelle-Écosse',
            'Nunavut'   => 'Nunavut',            
            'Ontario'   => 'Ontario',            
            'Île du Prince-Édouard'   => 'Île du Prince-Édouard',
            'Saskatchewan'   => 'Saskatchewan',
            'Yukon'   => 'Yukon'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'child_state' ));
    woocommerce_form_field( 'child_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'required'      => true,
        'placeholder'   => __('Code postal')
        ), $checkout->get_value( 'child_zipcode' ));
    woocommerce_form_field( 'child_birthdate', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Date de naissance'),
        'required'      => true,
        'placeholder'   => __('jj/mm/aaaa')
        ), $checkout->get_value( 'child_birthdate' ));
    echo '</div></div>';
}

add_action( 'woocommerce_after_order_notes', 'addParentOneInfoFields' );

function addParentOneInfoFields( $checkout ) {

    echo '<div class="col-2"><div id="parentOneInfo"><h2>' . __('Parent 1 ou Tuteur') . '</h2>';
    $checked = $checkout->get_value( 'parentOne_billing' ) ? $checkout->get_value( 'parentOne_billing' ) : 1;

     woocommerce_form_field( 'parentOne_billing', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser ces informations pour la facturation'),
        'placeholder'   => __('Utiliser ces informations pour la facturation'),
        ), $checked); 
    woocommerce_form_field( 'parentOne_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),        
        'required'      => true,
        ), $checkout->get_value( 'parentOne_firstName' ));
    woocommerce_form_field( 'parentOne_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        'required'      => true,
        ), $checkout->get_value( 'parentOne_lastName' ));
    woocommerce_form_field( 'sameAddress1', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser la même adresse que l\'enfant'),
        'placeholder'   => __('Utiliser la même adresse que l\'enfant'),
        ), $checkout->get_value( 'sameAddress1' ));    
    woocommerce_form_field( 'parentOne_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        'required'      => true,
        ), $checkout->get_value( 'parentOne_address' ));
    woocommerce_form_field( 'parentOne_appartment', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'placeholder'   => __('Appartement'),
        ), $checkout->get_value( 'parentOne_appartment' ));
    woocommerce_form_field( 'parentOne_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        'required'      => true,
        ), $checkout->get_value( 'parentOne_city' ));
    woocommerce_form_field( 'parentOne_state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'options'       => array(
            'Québec'   => 'Québec',
            'Alberta'   => 'Alberta',
            'Colombie-Britannique'   => 'Colombie-Britannique',
            'Manitoba'   => 'Manitoba',
            'Nouveau-Brunswick'   => 'Nouveau-Brunswick',            
            'Terre-Neuve-et-Labrador'   => 'Terre-Neuve-et-Labrador',
            'Territoires du Nord-Ouest'   => 'Territoires du Nord-Ouest',            
            'Nouvelle-Écosse'   => 'Nouvelle-Écosse',
            'Nunavut'   => 'Nunavut',            
            'Ontario'   => 'Ontario',            
            'Île du Prince-Édouard'   => 'Île du Prince-Édouard',
            'Saskatchewan'   => 'Saskatchewan',
            'Yukon'   => 'Yukon'),
        'placeholder'   => __('Province')
        ), $checkout->get_value( 'parentOne_state' )); 
    woocommerce_form_field( 'parentOne_zipcode', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Code postal'),
        'placeholder'   => __('Code postal'),      
        'required'      => true
        ), $checkout->get_value( 'parentOne_zipcode' ));
    woocommerce_form_field( 'parentOne_phone', array(
        'type'          => 'tel',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Téléphone'),
        'required'      => true,
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
        'required'      => true,
        'placeholder'   => __('Courriel')
        ), $checkout->get_value( 'parentOne_email' ));
    echo '</div></div></div>';
}

add_action( 'woocommerce_after_order_notes', 'addParentTwoInfoFields' );

function addParentTwoInfoFields( $checkout ) {

    echo '<div class="col2-set"><div class="col-1"><div id="parentTwoInfo"><h2>' . __('Parent 2') . '</h2>';
    
    woocommerce_form_field( 'parentTwo_billing', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser ces informations pour la facturation'),
        'placeholder'   => __('Utiliser ces informations pour la facturation'),
        ), $checkout->get_value( 'parentTwo_billing' )); 
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
    woocommerce_form_field( 'sameAddress2', array(
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
    woocommerce_form_field( 'parentTwo_appartment', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'placeholder'   => __('Appartement'),
        ), $checkout->get_value( 'parentTwo_appartment' ));
    woocommerce_form_field( 'parentTwo_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'parentTwo_city' ));
    woocommerce_form_field( 'parentTwo_state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'options'       => array(
            'Québec'   => 'Québec',
            'Alberta'   => 'Alberta',
            'Colombie-Britannique'   => 'Colombie-Britannique',
            'Manitoba'   => 'Manitoba',
            'Nouveau-Brunswick'   => 'Nouveau-Brunswick',            
            'Terre-Neuve-et-Labrador'   => 'Terre-Neuve-et-Labrador',
            'Territoires du Nord-Ouest'   => 'Territoires du Nord-Ouest',            
            'Nouvelle-Écosse'   => 'Nouvelle-Écosse',
            'Nunavut'   => 'Nunavut',            
            'Ontario'   => 'Ontario',            
            'Île du Prince-Édouard'   => 'Île du Prince-Édouard',
            'Saskatchewan'   => 'Saskatchewan',
            'Yukon'   => 'Yukon'),
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

    echo '<div class="col-2"><div id="otherContactInfo"><h2>' . __('Autre Contact') . '</h2>';
    
    woocommerce_form_field( 'otherContact_billing', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser ces informations pour la facturation'),
        'placeholder'   => __('Utiliser ces informations pour la facturation'),
        ), $checkout->get_value( 'otherContact_billing' )); 
    woocommerce_form_field( 'otherContact_firstName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Prénom'),
        'placeholder'   => __('Prénom'),
        ), $checkout->get_value( 'otherContact_firstName' ));
    woocommerce_form_field( 'otherContact_lastName', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-last'),
        'label'         => __('Nom'),
        'placeholder'   => __('Nom'),
        ), $checkout->get_value( 'otherContact_lastName' ));
    woocommerce_form_field( 'sameAddress3', array(
        'type'          => 'checkbox',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Utiliser la même adresse que l\'enfant'),
        'placeholder'   => __('Utiliser la même adresse que l\'enfant'),
        ), $checkout->get_value( 'sameAddress3' ));    
    woocommerce_form_field( 'otherContact_address', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Adresse'),
        'placeholder'   => __('Adresse'),
        ), $checkout->get_value( 'otherContact_address' ));
    woocommerce_form_field( 'otherContact_appartment', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'placeholder'   => __('Appartement'),
        ), $checkout->get_value( 'otherContact_appartment' ));
    woocommerce_form_field( 'otherContact_city', array(
        'type'          => 'text',
        'class'         => array('my-field-class form-row-wide'),
        'label'         => __('Ville'),
        'placeholder'   => __('Ville'),
        ), $checkout->get_value( 'otherContact_city' ));
    woocommerce_form_field( 'otherContact_state', array(
        'type'          => 'select',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Province'),
        'options'       => array(
            'Québec'   => 'Québec',
            'Alberta'   => 'Alberta',
            'Colombie-Britannique'   => 'Colombie-Britannique',
            'Manitoba'   => 'Manitoba',
            'Nouveau-Brunswick'   => 'Nouveau-Brunswick',            
            'Terre-Neuve-et-Labrador'   => 'Terre-Neuve-et-Labrador',
            'Territoires du Nord-Ouest'   => 'Territoires du Nord-Ouest',          
            'Nouvelle-Écosse'   => 'Nouvelle-Écosse',
            'Nunavut'   => 'Nunavut',            
            'Ontario'   => 'Ontario',            
            'Île du Prince-Édouard'   => 'Île du Prince-Édouard',
            'Saskatchewan'   => 'Saskatchewan',
            'Yukon'   => 'Yukon'),
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
    echo '</div></div></div><div><div><div>';
}

add_action( 'woocommerce_after_order_notes', 'addConsentment' );

function addConsentment( $checkout ) {

    echo '<h2>' . __('Consentement') . '</h2>';
    echo "<p>J’autorise la Société scoute de Ste-Ursule, Les Scouts du Canada et le district de Québec à photographier ou faire des enregistrements de mes enfants et à les publier sur leur site internet, Facebook ou autres publications ou médias.</p>";

    woocommerce_form_field( 'consentement_accept', array(
        'type'          => 'radio',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __('Consentement photo/vidéo:'),
        'required'      => true,
        'placeholder'   => __('Oui'),
        'options'       => array(
        'Oui'   => 'Oui',
        'Non'   => 'Non')
        ), $checkout->get_value( 'consentement_accept' )); 
    echo '<h2>' . __('Autres informations') . '</h2>';
    echo "<p>Veuillez spécifier toutes autres informations importante. Ex. Allergie, besoins spécifique, etc.</p>";
    woocommerce_form_field( 'otherInfo', array(
        'type'          => 'textarea',
        'class'         => array('my-field-class form-row-first'),
        'label'         => __(''),
        'placeholder'   => __('Ex. Allergie, besoins spécifique, etc.')
        ), $checkout->get_value( 'otherInfo' )); 
    echo '</div></div></div><div><div><div>';
}

/**
 * Update the order meta with field value
 */
add_action( 'woocommerce_checkout_update_order_meta', 'updateOrderData' );

function updateOrderData( $order_id ) {    
    
    $order = new WC_Order( $order_id );
    $source = "parentOne";
    if (isset($_POST['parentOne_billing'])) {
        $source = "parentOne";
    } else if (isset($_POST['parentTwo_billing'])) {
        $source = "parentTwo";
    } else if (isset($_POST['otherContact_billing'])) {
        $source = "otherContact";
    }
    
    $test['first_name'] = $_POST[$source . '_firstName'];
    $test['last_name'] = $_POST[$source . '_lastName'];
    $test['address_1'] = $_POST[$source . '_address'];
    $test['address_2'] = $_POST[$source . '_appartment'];
    $test['city'] = $_POST[$source . '_city'];
    $test['postcode'] = $_POST[$source . '_zipcode'];
    $test['country'] = 'Canada';
    $test['state'] = $_POST[$source . '_state'];
    $test['email'] = $_POST[$source . '_email'];
    $test['phone'] = $_POST[$source . '_phone'];
    
    $order->set_address( $test, 'billing');
    $order->set_address( $test, 'shipping');
    
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
    if ( ! empty( $_POST['child_appartment'] ) ) {
        update_post_meta( $order_id, 'child_appartment', sanitize_text_field( $_POST['child_appartment'] ) );
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
    if ( ! empty( $_POST['parentOne_appartment'] ) ) {
        update_post_meta( $order_id, 'parentOne_appartment', sanitize_text_field( $_POST['parentOne_appartment'] ) );
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
    if ( ! empty( $_POST['parentTwo_appartment'] ) ) {
        update_post_meta( $order_id, 'parentTwo_appartment', sanitize_text_field( $_POST['parentTwo_appartment'] ) );
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
    if ( ! empty( $_POST['otherContact_appartement'] ) ) {
        update_post_meta( $order_id, 'otherContact_appartement', sanitize_text_field( $_POST['otherContact_appartement'] ) );
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
    
    if ( ! empty( $_POST['consentement_accept'] ) ) {
        update_post_meta( $order_id, 'consentement_accept', sanitize_text_field( $_POST['consentement_accept'] ) );
    }
    
    if ( ! empty( $_POST['otherInfo'] ) ) {
        update_post_meta( $order_id, 'consentement_accept', sanitize_text_field( $_POST['otherInfo'] ) );
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
        . get_post_meta( $order->id, 'child_address', true );
    
    $appChild = get_post_meta( $order->id, 'child_appartment', true);
    if ( !empty($appChild)) {
        $temp .= '<br> Appartement: ' . $appChild;
    }        
    $temp .= '<br>' . get_post_meta( $order->id, 'child_city', true ) . ', ' . get_post_meta( $order->id, 'child_state', true ) . ', ' . get_post_meta( $order->id, 'child_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Date de naissance: </strong>' . get_post_meta( $order->id, 'child_birthdate', true ) . '</p>';
    $temp .= '</div>';
    
    //Show Parent 1 or tutor info
    $temp .= '<div class="order_data_column"><h3>Parent 1 ou Tuteur</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'parentOne_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'parentOne_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'parentOne_address', true );
    
    $appOne = get_post_meta( $order->id, 'parentOne_appartment', true);
    if ( !empty($appOne)) {
        $temp .= '<br> Appartement: ' . $appOne;
    }
    
    $temp .= '<br>' . get_post_meta( $order->id, 'parentOne_city', true ) . ', ' . get_post_meta( $order->id, 'parentOne_state', true ) . ', ' . get_post_meta( $order->id, 'parentOne_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'parentOne_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'parentOne_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'parentOne_email', true ) . '</p>';
    $temp .= '</div>';
    
    //Show Parent 2 info
    $temp .= '<div class="order_data_column"><h3>Parent 2</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'parentTwo_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'parentTwo_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'parentTwo_address', true );
    
    $appTwo = get_post_meta( $order->id, 'parentTwo_appartment', true);
    if ( !empty($appTwo)) {
        $temp .= '<br> Appartement: ' . $appTwo;
    }
    
    $temp .= '<br>' . get_post_meta( $order->id, 'parentTwo_city', true ) . ', ' . get_post_meta( $order->id, 'parentTwo_state', true ) . ', ' . get_post_meta( $order->id, 'parentTwo_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'parentTwo_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'parentTwo_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'parentTwo_email', true ) . '</p>';
    $temp .= '</div></div>'; 
    
    //Show Other contact info
    $temp .= '<div class="order_data_column_container"><div class="order_data_column"><h3>Autre contact</h3>';
    $temp .= '<p><strong>'.__('Prénom').':</strong> ' . get_post_meta( $order->id, 'otherContact_firstName', true ) . ' &nbsp; <strong>'.__('Nom').':</strong> ' . get_post_meta( $order->id, 'otherContact_lastName', true ) . '</p>';
    $temp .= '<p><strong>Adresse: </strong> <br>' 
        . get_post_meta( $order->id, 'otherContact_address', true );
    
    $appOther = get_post_meta( $order->id, 'otherContact_appartment', true);
    if ( !empty($appOther)) {
        $temp .= '<br> Appartement: ' . $appOther;
    }
        
    $temp .='<br>' . get_post_meta( $order->id, 'otherContact_city', true ) . ', ' . get_post_meta( $order->id, 'otherContact_state', true ) . ', ' . get_post_meta( $order->id, 'otherContact_zipcode', true ) . '</p>';
    $temp .= '<p><strong>Téléphone: </strong>' . get_post_meta( $order->id, 'otherContact_phone', true ) . '</p>';
    $temp .= '<p><strong>Autre téléphone: </strong>' . get_post_meta( $order->id, 'otherContact_phoneOther', true ) . '</p>';
    $temp .= '<p><strong>Courriel: </strong>' . get_post_meta( $order->id, 'otherContact_email', true ) . '</p>';
    $temp .= '</div>';

    //Show Children consentement
    $temp .='<div class="order_data_column"><h3>Autres Informations</h3>';
    $temp .= '<p><strong>'.__('Informations importantes').':</strong> ' . get_post_meta( $order->id, 'otherInfo', true ) . '</p>';
    $temp .= '</div>';
    
    //Show Children consentement
    $temp .='<div class="order_data_column"><h3>Consentement</h3>';
    $temp .= '<p><strong>'.__('Autorisation Photo/Vidéo').':</strong> ' . get_post_meta( $order->id, 'consentement_accept', true ) . '</p>';
   
    $temp .= '<div></div>';
    echo $temp;
}

/**
* Fields Validation
*/
add_action('woocommerce_checkout_process', 'validation_process');

function validation_process() {
    //Validate Child info
    if ( ! $_POST['child_firstName'] ) {
        wc_add_notice( __( 'Veuillez saisir le prénom de votre enfant' ), 'error' );
    }    
    if ( !$_POST['child_lastName'] ) {
        wc_add_notice( __( 'Veuillez saisir le nom de votre enfant' ), 'error' );
    }    
    if ( !$_POST['child_address'] ) {
        wc_add_notice( __( 'Veuillez saisir l\'adresse de résidence de votre enfant' ), 'error' );
    }     
    if ( !$_POST['child_city'] ) {
        wc_add_notice( __( 'Veuillez saisir la ville de résidence de votre enfant' ), 'error' );
    } 
    if ( !$_POST['child_state'] ) {
        wc_add_notice( __( 'Veuillez saisir la province de résidence de votre enfant' ), 'error' );
    } 
    if ( !$_POST['child_zipcode'] ) {
        wc_add_notice( __( 'Veuillez saisir le code postal de résidence de votre enfant' ), 'error' );
    } 
    if ( !$_POST['child_birthdate'] ) {
        wc_add_notice( __( 'Veuillez saisir la date de naissance de votre enfant' ), 'error' );
    }
    
    //Validate billing info  
    $source = "parentOne";
    if (isset($_POST['parentOne_billing'])) {
        $source = "parentOne";
    } else if (isset($_POST['parentTwo_billing'])) {
        $source = "parentTwo";
    } else if (isset($_POST['otherContact_billing'])) {
        $source = "otherContact";
    }
    
    if ( !$_POST[$source . '_firstName'] ) {
        wc_add_notice( __( 'Veuillez saisir votre prénom pour la facturation.' ), 'error' );
    }    
    if ( !$_POST[$source . '_lastName'] ) {
        wc_add_notice( __( 'Veuillez saisir votre nom pour la facturation.' ), 'error' );
    }    
    if ( !$_POST[$source . '_address'] ) {
        wc_add_notice( __( 'Veuillez saisir votre adresse pour la facturation.' ), 'error' );
    }
    if ( !$_POST[$source . '_city'] ) {
        wc_add_notice( __( 'Veuillez saisir votre ville pour la facturation.' ), 'error' );
    } 
    if ( !$_POST[$source . '_state'] ) {
        wc_add_notice( __( 'Veuillez saisir votre province pour la facturation.' ), 'error' );
    } 
    if ( !$_POST[$source . '_zipcode']) {
        wc_add_notice( __( 'Veuillez saisir votre code postal valide pour la facturation.' ), 'error' );
    } 
    if ( !$_POST[$source . '_phone'] ) {
        wc_add_notice( __( 'Veuillez saisir votre numéro de téléphone pour la facturation.' ), 'error' );
    } 
    if ( !$_POST[$source . '_email'] ) {
        wc_add_notice( __( 'Veuillez saisir votre courriel pour la facturation.' ), 'error' );
    }
    
    
    $regexPhone = "/^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$/im";    
    if ( !preg_match($regexPhone, $_POST['parentOne_phone']) && !empty($_POST['parentOne_phone'])) {
        wc_add_notice( __( 'Veuillez saisir un numéro de téléphone valide pour le parent 1 ou tuteur.' ), 'error' );
    }     
    if ( !preg_match($regexPhone, $_POST['parentTwo_phone']) && !empty($_POST['parentTwo_phone'])) {
        wc_add_notice( __( 'Veuillez saisir un numéro de téléphone valide pour le parent 2.' ), 'error' );
    }     
    if ( !preg_match($regexPhone, $_POST['otherContact_phone']) && !empty($_POST['otherContact_phone'])) {
        wc_add_notice( __( 'Veuillez saisir un numéro de téléphone valide pour l\'autre contact.' ), 'error' );
    } 
        
    $regexZip = "/^([a-zA-Z]\d[a-zA-Z])\ {0,1}(\d[a-zA-Z]\d)$/";
    if ( !preg_match($regexZip, strtoupper($_POST['child_zipcode'])) && !empty($_POST['child_zipcode'])) {
        wc_add_notice( __( 'Veuillez saisir un code postal valide pour votre enfant.' ), 'error' );
    }
    if ( !preg_match($regexZip, strtoupper($_POST['parentOne_zipcode'])) && !empty($_POST['parentOne_zipcode'])) {
        wc_add_notice( __( 'Veuillez saisir un code postal valide pour le parent 1 ou tuteur.' ), 'error' );
    }    
    if ( !preg_match($regexZip, strtoupper($_POST['parentTwo_zipcode'])) && !empty($_POST['parentTwo_zipcode'])) {
        wc_add_notice( __( 'Veuillez saisir un code postal valide pour le parent 2.' ), 'error' );
    }    
    if ( !preg_match($regexZip, strtoupper($_POST['otherContact_zipcode'])) && !empty($_POST['otherContact_phone'])) {
        wc_add_notice( __( 'Veuillez saisir un code postal valide pour l\'autre contact.' ), 'error' );
    }
    
    $regexDate = "/^[0-9]{1,2}\/[0-9]{1,2}\/[0-9]{4}$/";
    if ( !preg_match($regexDate, $_POST['child_birthdate']) && !empty($_POST['child_birthdate'])) {
        wc_add_notice( __( 'Veuillez saisir la date de naissance dans le format suivant: JJ/MM/AAAA' ), 'error' );
    }
    
    //Validate photo/video autorisation
    if ( !$_POST['consentement_accept'] ) {
        wc_add_notice( __( 'Veuillez spécifier si vous acceptez le consentement photo/vidéo.' ), 'error' );
    }
}