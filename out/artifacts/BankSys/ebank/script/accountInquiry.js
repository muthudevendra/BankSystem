/**
 * Created by Lakshitha on 30-Jun-17.
 *
 */

$(function () {
    $('.navUrl').removeClass('active');
    $('#accountInquiry').addClass('active');
    $('#account').addClass('active');
});

function load_account_statement(customerAccountId) {
    window.open('/ebank/account/accountStatement/searchCustomerAccount?customerAccountId=' + customerAccountId, '_blank');
}