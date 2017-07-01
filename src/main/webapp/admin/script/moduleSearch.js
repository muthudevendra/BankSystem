/**
 * Created by shehan on 6/30/2017.
 */
$(function () {
    $('.navUrl').removeClass('active')
    $('#moduleSearch').addClass('active');
    $('.datatable').dataTable( {
        order: [[ 3, "desc" ]],
        dom: "B<'row'<'col-sm-3'l><'col-sm-4 col-sm-offset-5'f>><'row'<'col-sm-12'tr>><br><'row'<'col-sm-5'i><'col-sm-4 col-sm-offset-3'p>>",
        }
     );
});

function load_module(moduleId) {
    window.open('/admin/config/moduleManagement?moduleId=' + moduleId, '_blank');
}