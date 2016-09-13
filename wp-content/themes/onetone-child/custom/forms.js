jQuery(document).ready(function ($) {
    $("#sameAddress1").change(function () {
        sameAddressChecked("parentOne", this);
    });
    $("#sameAddress2").change(function () {
        sameAddressChecked("parentTwo", this);
    });
    $("#sameAddress3").change(function () {
        sameAddressChecked("otherContact", this);
    });

    function sameAddressChecked($destination, $field) {
        if ($field.checked) {
            $("#" + $destination + "_address").val($("#child_address").val());
            $("#" + $destination + "_appartment").val($("#child_appartment").val());
            $("#" + $destination + "_city").val($("#child_city").val());
            $("#" + $destination + "_state").val($("#child_state").val());
            $("#" + $destination + "_zipcode").val($("#child_zipcode").val());
        }
    }

    $("#parentOne_billing").change(function () {
        if (this.checked) {
            $("#parentTwo_billing").removeAttr('checked');
            $("#otherContact_billing").removeAttr('checked');

            addValidation("parentOne");
            removeValidation("parentTwo");
            removeValidation("otherContact");
        }
    });

    $("#parentTwo_billing").change(function () {
        if (this.checked) {
            $("#parentOne_billing").removeAttr('checked');
            $("#otherContact_billing").removeAttr('checked');

            removeValidation("parentOne");
            addValidation("parentTwo");
            removeValidation("otherContact");
        }
    });

    $("#otherContact_billing").change(function () {
        if (this.checked) {
            $("#parentOne_billing").removeAttr('checked');
            $("#parentTwo_billing").removeAttr('checked');

            removeValidation("parentOne");
            removeValidation("parentTwo");
            addValidation("otherContact");
        }
    });

    function removeValidation($fieldSet) {
        $("#" + $fieldSet + "_firstName_field").removeClass("validate-required");
        $("#" + $fieldSet + "_firstName_field label abbr").remove();

        $("#" + $fieldSet + "_lastName_field").removeClass("validate-required");        
        $("#" + $fieldSet + "_lastName_field label abbr").remove();

        $("#" + $fieldSet + "_address_field").removeClass("validate-required");        
        $("#" + $fieldSet + "_address_field label abbr").remove();

        $("#" + $fieldSet + "_appartment_field").removeClass("validate-required");        
        $("#" + $fieldSet + "_appartment_field label abbr").remove();

        $("#" + $fieldSet + "_city_field").removeClass("validate-required");        
        $("#" + $fieldSet + "_city_field label abbr").remove();

        $("#" + $fieldSet + "_zipcode_field").removeClass("validate-required");       
        $("#" + $fieldSet + "_zipcode_field label abbr").remove();

        $("#" + $fieldSet + "_phone_field").removeClass("validate-required");        
        $("#" + $fieldSet + "_phone_field label abbr").remove();

        $("#" + $fieldSet + "_email_field").removeClass("validate-required");       
        $("#" + $fieldSet + "_email_field label abbr").remove();
    }

    function addValidation($fieldSet) {
        $("#" + $fieldSet + "_firstName_field").addClass("validate-required");
        $("#" + $fieldSet + "_firstName_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");
        
        $("#" + $fieldSet + "_lastName_field").addClass("validate-required");
        $("#" + $fieldSet + "_lastName_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_address_field").addClass("validate-required");
        $("#" + $fieldSet + "_address_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_appartment_field").addClass("validate-required");
        $("#" + $fieldSet + "_appartment_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_city_field").addClass("validate-required");
        $("#" + $fieldSet + "_city_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_zipcode_field").addClass("validate-required");
        $("#" + $fieldSet + "_zipcode_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_phone_field").addClass("validate-required");
        $("#" + $fieldSet + "_phone_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

        $("#" + $fieldSet + "_email_field").addClass("validate-required");
        $("#" + $fieldSet + "_email_field label").append("<abbr class=\"required\" title=\"requis\">*</abbr>");

    }
});