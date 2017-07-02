/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */

$(function () {
    $('.navUrl').removeClass('active');
    $('#customerManagement').addClass('active');
    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd'
    });
    var customerId = $('#customerId').val();
    if(customerId != ''){
        transform_form('customerForm', '/admin/customer/customerManagement/updateCustomer');
        transformToUpdate();
    }
    display_messages();
});
