/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */

$(function () {
    $('.navUrl').removeClass('active')
    $('#moduleManagement').addClass('active');

    var moduleId = $('#moduleId').val();
    if (moduleId != '') {
        transform_form('moduleForm', '/admin/config/moduleManagement/updateModule')
        transformToUpdate();
    }
});
