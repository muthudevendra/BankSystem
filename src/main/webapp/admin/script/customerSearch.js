/**
 * Created by Lakshitha on 24-Jun-17.
 */
$(function () {
    $('.navUrl').removeClass('active')
    $('#customerSearch').addClass('active');
});

function load_customer(customerId) {
    alert('abc');
    window.open('#/admin/customer/customerManagement?customerId=' + customerId, '_blank');
    $('.datatable').DataTable();
}
