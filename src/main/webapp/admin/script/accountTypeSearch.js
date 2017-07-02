/**
 * Created by Lakshitha on 02-Jul-17.
 */

$(function () {
    $('.datatable').dataTable();
});

function load_account_type(accountTypeId) {
    window.open('/admin/account/accountTypeManagement?accountTypeId=' + accountTypeId, '_blank');
}
