/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */

$(function () {
   $('.datatable').dataTable();
});

function load_customer_account(customerAccountId) {
    window.open('/admin/account/customerAccountManagement?customerAccountId=' + customerAccountId, '_blank');
}