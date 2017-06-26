<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:07 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="/ebank/payment/billPayment">Bill Payment</a></li>
            <li><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
            <li><a href="/ebank/payment/paymentHistory">Payment History</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Bill Payment</li>
            <li class="active">Pay</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Pay Bill</legend>
            </div>
        </div>
        <div class="content-page col-md-8 col-md-offset-3">
            <div class="row form-group">
                <div class="col-md-2">
                    <label class="control-label" for="account">From Account </label>
                </div>
                <div class="col-md-6">
                    <select class="form-control" id="account">
                        <option>select account type</option>
                    </select>
                </div>
                <div class="col-md-3">
                    <p class="align-left">Amount in Hand </p>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-2">
                    <label class="control-label" for="payment">Pay To </label>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="payment">
                        <option>select payment Type</option>
                    </select>
                </div>
                <div class="col-md-4">
                    <select class="form-control" id="payee">
                        <option>select payee</option>
                    </select>
                </div>
            </div>

            <div class="row form-group">
                <div class="col-md-2">
                    <label class="control-label" for="amount">Amount </label>
                </div>
                <div class="col-md-6">
                    <div class="input-group">
                        <span class="input-group-addon">Rs</span><input type="text" class="form-control" id="amount"><span class="input-group-addon">.00</span>
                    </div>
                </div>
                <div class="col-md-3">
                    <p class="align-left"></p>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-2">
                    <label class="control-label" for="date">Payment Date</label>
                </div>
                <div class="col-md-6">
                    <div class="input-group">
                        <input type="text" class="form-control" id="date">
                    </div>
                </div>
                <div class="col-md-3">
                    <p class="align-left"></p>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-3 col-md-offset-7">
                    <span class="input-group-btn">
                        <button class="btn btn-primary" type="submit">Pay</button>
                    </span>
                </div>
            </div>
        </div>
    </div>
</div>
