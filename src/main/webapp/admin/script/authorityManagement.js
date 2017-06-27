/**
 * Created by Oshada on 6/25/2017.
 */


$(function () {
    $('.navUrl').removeClass('active')
    $('#authorityManagement').addClass('active');
    var authorityId = $('#authorityId').val();
    if (authorityId != '') {
        transform_form('authorityForm', '/admin/customer/authorityManagement/updateAuthority')
        transformToUpdate();
    }
});
