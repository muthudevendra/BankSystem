/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
var token = $("meta[name='_csrf']").attr("content");
var header = $("meta[name='_csrf_header']").attr("content");

$.ajaxSetup({
    beforeSend: function (xhr) {
        xhr.setRequestHeader('X-CSRF-TOKEN', token);
    }
});

function transform_form(form_id, url) {
    $('#' + form_id).attr('action', url);
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

function load_object_data(url, type, data) {
    var responseObject = null;
    $.ajax({
        type: type,
        contentType: "application/json",
        url: url,
        data: data,
        async: false,
        success: function (data) {
            responseObject = data;
        },
        error: function (e) {
            console.log("ERROR: ", e);
        },
        done: function (e) {
            console.log("DONE");
        }
    });
    return responseObject;
}