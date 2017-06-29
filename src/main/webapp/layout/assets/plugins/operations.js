/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */

function transform_form(form_id, url) {
    $('#'+form_id).attr('action', url);
}

function transformToUpdate() {
    $('.updateOperation').show();
    $('.createOperation').hide();
}

function form_validate(formId) {
    var result = true;
    $('#' + formId).validator('validate');
    $('#' + formId + ' .form-group').each(function () {
        if ($(this).hasClass('has-error')) {
            result = false;
            return false;
        }
    });
    return result;
}