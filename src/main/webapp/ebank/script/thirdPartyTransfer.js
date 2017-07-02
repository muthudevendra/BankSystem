/**
 * Created by lakshithar on 6/30/2017.
 *
 */

$(function () {
   $(".datepicker").datepicker({
      format: 'yyyy-mm-dd'
   });
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