/**
 * Created by Oshada on 6/29/2017.
 *
 */


$(function () {
    $('.navUrl').removeClass('active')
    $('#userType').addClass('active');
    var userTypeId = $('#userTypeId').val();
    if (userTypeId != '') {
        transform_form('userTypeForm', '/admin/config/userTypeManagement/updateUserTypeManagement')
        transformToUpdate();
    }
    display_messages();
});

