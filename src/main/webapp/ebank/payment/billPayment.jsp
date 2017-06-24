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
            <li class="active"><a href="billPayment.jsp">Pay a Bill</a></li>
            <li><a href="#">Payment History</a></li>
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

        <div class="content-page col-md-9 col-md-offset-1">
            <div class="panel panel-success">
                <div class="panel-heading">
                    Payment Details
                </div>
                <div class="panel-body">
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="account">From Account: </label>
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
                            <label class="control-label" for="targetPayee">Pay To: </label>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control" id="targetPayee">
                                <option>select payment</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <p class="align-left"></p>
                        </div>
                    </div>

                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="amount">Amount: </label>
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
                        <div class="col-md-3 col-md-offset-7">
                          <span class="input-group-btn">
                            <button class="btn btn-primary" type="submit">Schedule</button>
                          </span>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <div class="col-md-9 col-md-offset-1 table-striped table-responsive">
                <table class="table">
                    <thead>
                        <tr>
                            <th>Account Number</th>
                            <th>Payment Receiver</th>
                            <th class="text-right">Date</th>
                            <th class="text-right">Amount</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row form-group">
                <div class="col-md-3 col-md-offset-10">
                <span class="input-group-btn">
                  <button class="btn btn-primary" type="submit">Pay</button>
                </span>
                </div>
            </div>
        </div>
    </div>
</div>
