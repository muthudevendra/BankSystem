/**
 * Created by shehan on 6/30/2017.
 */
$(function () {
    $('.navUrl').removeClass('active')
    $('#moduleSearch').addClass('active');
    $('.datatable').DataTable();
});

function load_module(moduleId) {
    window.open('/admin/config/moduleManagement?moduleId=' + moduleId, '_blank');
}