/**
 * Created by Lakshitha on 30-Jun-17.
 *
 */

function load_account_statement(customerAccountId) {
    window.open('/ebank/account/accountStatement/searchCustomerAccount?customerAccountId=' + customerAccountId, '_blank');
}