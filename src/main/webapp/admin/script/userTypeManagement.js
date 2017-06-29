/**
 * Created by Oshada on 6/29/2017.
 */


$(function () {
    var userTypeId = $('#userTypeId').val();
    if (userTypeId != '') {
        transform_form('userTypeform', '/admin/config/userTypeManagement/updateUserTypeManagement')
        transformToUpdate();
    }
});

