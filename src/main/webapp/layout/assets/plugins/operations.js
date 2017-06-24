/**
 * Created by Lakshitha on 24-Jun-17.
 */

function transform_form(form_id, url) {
    form_id.attr('action', url);
}

function transformToUpdate() {
    $('.updateOperation').show();
    $('.createOperation').hide();
}