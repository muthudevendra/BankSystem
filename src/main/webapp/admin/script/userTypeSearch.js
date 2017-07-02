/**
 * Created by Lakshitha on 02-Jul-17.
 *
 */

$(function () {
    $('.navUrl').removeClass('active');
    $('#userTypeSearch').addClass('active');
    $('.datatable').dataTable({
        order: [[ 1, "desc" ]],
        dom: "B<'row'<'pull-left'l><'pull-right'f>><'row'<'col-sm-12'tr>><br><'row'<'pull-left'i><'pull-right'p>>",
        language: { search: "_INPUT_", searchPlaceholder: "Search"}
    });
});

function load_user_type(userTypeId) {
    window.open('/admin/config/userTypeManagement?userTypeId=' + userTypeId, '_blank');
}