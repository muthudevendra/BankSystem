/**
 * Created by shehan on 7/6/2017.
 */
$(function () {
    $('.datatable').dataTable( {
            order: [[ 3, "desc" ]],
            dom: "B<'row'<'pull-left'l><'pull-right'f>><'row'<'col-sm-12'tr>><br><'row'<'pull-left'i><'pull-right'p>>",
            language: { search: "_INPUT_", searchPlaceholder: "Search"}
        }
    );
});