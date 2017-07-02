/**
 * Created by lakshithar on 6/30/2017.
 *
 */

$(function () {
   $(".datepicker").datepicker({
      format: 'yyyy-mm-dd'
   });
    var thirdPartyAccountTransferId = $('#thirdPartyAccountTransferId').val();
    if(thirdPartyAccountTransferId != ''){
        transformToUpdate();
        $("#thirdPartyTransferForm :input").prop("disabled", true);
        $('#viewSlip').prop('disabled', false);
    }
    display_messages();
});

function get_account_balance() {
   var customerAccountId = $('#fromAccount').val();
   if(customerAccountId != '') {
       var data = {'customerAccountId': customerAccountId};
       var accountBalance = load_object_data('/ebank/transfer/thirdPartyTransfer/findAccountBalance', 'GET', data);
       var currency = load_object_data('/ebank/transfer/thirdPartyTransfer/findCurrency', 'GET', data);
       $('#amountInHand').html(accountBalance + " " + currency);
   }
   else{
       $('#amountInHand').html(null);
   }
}

function view_slip(){
    var thirdPartyAccountTransferId = $('#thirdPartyAccountTransferId').val();
    window.open('/ebank/transfer/thirdPartyTransfer?thirdPartyAccountTransferId=' + thirdPartyAccountTransferId, '_blank');
}