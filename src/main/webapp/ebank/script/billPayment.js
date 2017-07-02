/**
 * Created by lakshithar on 7/1/2017.
 *
 */

$(function () {
    $(".datepicker").datepicker({
        format: 'yyyy-mm-dd'
    });
    var billPaymentId = $('#billPaymentId').val();
    if(billPaymentId != ''){
        transformToUpdate();
        $("#billPaymentForm :input").prop("disabled", true);
    }
    display_messages();
});

function get_account_balance() {
    var customerAccountId = $('#fromAccount').val();
    if(customerAccountId != '') {
        var data =
            {'customerAccountId': customerAccountId}
        var accountBalance = load_object_data('/ebank/payment/billPayment/findAccountBalance', 'GET', data);
        var currency = load_object_data('/ebank/payment/billPayment/findCurrency', 'GET', data);
        $('#amountInHand').html(accountBalance + " " + currency);
    }
    else{
        $('#amountInHand').html(null);
    }
}

function check_transfer_date() {
    var transferDate = $('#paymentDate').val();
    var today = new Date();
    if(new Date(transferDate) > today) {
        $('#paymentDateDetail').html("Transaction will be scheduled");
    }
    else{
        $('#paymentDateDetail').html(null);
    }
}