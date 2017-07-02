/**
 * Created by Lakshitha on 02-Jul-17.
 */

$(function () {
    $('.navUrl').removeClass('active');
    $('#userTypeSearch').addClass('active');
    $('.datatable').dataTable();
});

function load_user_type(userTypeId) {
    window.open('/admin/config/userTypeManagement?userTypeId=' + userTypeId, '_blank');
}