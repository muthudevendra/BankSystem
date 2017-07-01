/**
 * Created by lakshithar on 6/29/2017.
 *
 */
function get_account_balance() {
    var customerAccountId = $('#fromAccount').val();
    if (customerAccountId != '') {
        var data =
            {'customerAccountId': customerAccountId}
        var accountBalance = load_object_data('/ebank/transfer/ownAccount/findAccountBalance', 'GET', data);
        var currency = load_object_data('/ebank/transfer/ownAccount/findCurrency', 'GET', data);
        $('#amountInHand').html(accountBalance + " " + currency);
    }
    else{
        $('#amountInHand').html(null);
    }
}