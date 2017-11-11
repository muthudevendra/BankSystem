/**
 * Created by Oshada on 6/29/2017.
 *
 */


$(function () {
    $('.navUrl').removeClass('active')
    $('#userTypeAuthority').addClass('active');

    var userTypeAuthorityId = $('#userTypeAuthorityId').val();
    if (userTypeAuthorityId != '') {
        transform_form('userTypeAuthorityForm', '/admin/config/userTypeAuthorityManagement/updateUserTypeAuthority');
        transformToUpdate();
    }
    display_messages();
});
