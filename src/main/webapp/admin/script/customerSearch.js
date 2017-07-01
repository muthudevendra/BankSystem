/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
$(function () {
    $('.navUrl').removeClass('active');
    $('#customerSearch').addClass('active');
    $('.datatable').DataTable();
    noty({text: "Your session has expired !!", layout: 'topCenter', type: 'error'});
});

function load_customer(customerId) {
    window.open('/admin/customer/customerManagement?customerId=' + customerId, '_blank');
}
