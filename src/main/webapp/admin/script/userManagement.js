/**
 * Created by Oshada on 7/5/2017.
 *
 */

$(function () {
    $('.navUrl').removeClass('active')
    $('#newUser').addClass('active');

    var userId = $('#userId').val();
    if (userId != '') {
        transform_form('userForm', '/admin/config/userManagement/updateUser');
        transformToUpdate();
    }
    display_messages();
});
