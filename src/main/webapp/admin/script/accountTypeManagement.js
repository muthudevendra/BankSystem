/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

$(function () {
    $('.navUrl').removeClass('active')
    $('#accountTypeManagement').addClass('active');

    var accountTypeId = $('#accountTypeId').val();
    if(accountTypeId != ''){
        transform_form('accountTypeForm', '/admin/account/accountTypeManagement/updateAccountType')
        transformToUpdate();
    }
    display_messages();
});
