/**
 * Created by lakshithar on 6/29/2017.
 *
 */

$(function () {
    $('.navUrl').removeClass('active');
    $('#accountStatement').addClass('active');
    $('#account').addClass('active');

    $('.datatable').DataTable({
        order: [[0, "desc"]],
    });
});