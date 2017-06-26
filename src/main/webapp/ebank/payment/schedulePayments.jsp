<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/payment/billPayment">Bill Payment</a></li>
            <li class="active"><a href="/ebank/payment/schedulePayment">Schedule Payment</a></li>
            <li><a href="/ebank/payment/paymentHistory">Payment History</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Bill Payment</li>
            <li class="active">Schedule Payment</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Schedule Payment</legend>
            </div>
        </div>
        <div class="content-page col-md-9">
            <form action="#">
                <div class="row">
                    <div class="col-lg-3 col-md-offset-8">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="Search">
                        </div>
                    </div>
                    <div class="col-md-1">
                        <span class="input-group-btn">
                            <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-md-9 col-md-offset-2 table-striped table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>From Account</th>
                        <th>To </th>
                        <th>Amount</th>
                        <th>Date</th>
                        <th class="text-right">Status</th>
                        <th class="text-right">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td><span class="input-group-btn text-right"><button class="btn btn-default btn-xs" data-toggle="tooltip" data-placement="top" title="Discard Transaction"><i class="fa fa-minus"></i></button></span></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
