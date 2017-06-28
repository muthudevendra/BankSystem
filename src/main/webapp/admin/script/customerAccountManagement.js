/**
 * Created by Muthu Devendra on 6/26/2017.
 *
 */

$(function () {
    $('.navUrl').removeClass('active')
    $('#accountManagement').addClass('active');

    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd'
    });
    var customerAccountId = $('#customerAccountId').val();
    if(customerAccountId != ''){
        transform_form('customerAccountForm', '/admin/account/customerAccountManagement/updateCustomerAccount')
        transformToUpdate();
    }
});
