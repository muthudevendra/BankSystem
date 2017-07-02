/**
 * Created by shehan on 6/30/2017.
 *
 */
$(function () {
    $('.navUrl').removeClass('active')
    $('#moduleSearch').addClass('active');
    $('.datatable').dataTable({
        order: [[ 3, "desc" ]],
        dom: "B<'row'<'pull-left'l><'pull-right'f>><'row'<'col-sm-12'tr>><br><'row'<'pull-left'i><'pull-right'p>>",
        language: { search: "_INPUT_", searchPlaceholder: "Search"}
    });
});

function load_module(moduleId) {
    window.open('/admin/config/moduleManagement?moduleId=' + moduleId, '_blank');
}