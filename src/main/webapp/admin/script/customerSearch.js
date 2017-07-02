/**
 * Created by Lakshitha on 24-Jun-17.
 *
 */
$(function () {
    $('.navUrl').removeClass('active');
    $('#customerSearch').addClass('active');
    $('.datatable').DataTable({
        order: [[ 3, "desc" ]],
        dom: "B<'row'<'pull-left'l><'pull-right'f>><'row'<'col-sm-12'tr>><br><'row'<'pull-left'i><'pull-right'p>>",
        language: { search: "_INPUT_", searchPlaceholder: "Search"}
    });
});

function load_customer(customerId) {
    window.open('/admin/customer/customerManagement?customerId=' + customerId, '_blank');
}
