/**
 * Created by Muthu Devendra on 7/6/2017.
 * 
 */
$('.navUrl').removeClass('active');
$('#dashboard').addClass('active');

function load_transfer(thirdPartyTransferId) {
    window.open('/ebank/transfer/thirdPartyTransfer?thirdPartyAccountTransferId=' + thirdPartyTransferId, '_blank');
}

function load_bill(billPaymentId) {
    window.open('/ebank/payment/billPayment?billPaymentId=' + billPaymentId, '_blank');
}

function load_customer_account(customerAccountId) {
    window.open('/ebank/account/accountStatement/searchCustomerAccount?customerAccountId=' + customerAccountId, '_blank');
}