/**
 * Created by Oshada on 6/29/2017.
 */


$(function () {
    var userTypeAuthorityId = $('#userTypeAuthorityId').val();
    if (userTypeAuthorityId != '') {
        transform_form('userTypeAuthorityform', '/admin/config/userTypeAuthorityManagement/updateUserTypeAuthority')
        transformToUpdate();
    }
});
