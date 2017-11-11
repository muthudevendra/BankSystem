/**
 * Created by Muthu Devendra on 7/6/2017.
 */
$('.navUrl').removeClass('active');
$('#transfer').addClass('active');
$('#scheduleTransfer').addClass('active');

$(function () {
    var ownAccountTransferId = $('#ownAccountTransferId').val();
    if(ownAccountTransferId != ''){
        transformToUpdate();
        $("#ownAccountTransferForm :input").prop("disabled", true);
        $('#viewSlip').prop('disabled', false);
    }
    display_messages();
});

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

function view_slip(){
    var ownAccountTransferId = $('#ownAccountTransferId').val();
    window.open('/ebank/transfer/ownAccount?ownAccountTransferId=' + ownAccountTransferId, '_blank');
}