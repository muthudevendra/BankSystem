<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="accountInquiry.jsp">Account Inquiry</a></li>
            <li><a href="#">Account Statement</a></li>
            <li><a href="#">Transaction History</a></li>
            <li><a href="#">Schedule Payments</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>My Account</li>
            <li class="active">Inquiry</li>
        </ul>
        <div class="content-page col-md-9 col-md-offset-1">
            <form action="#" class="content-search-view2">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <label class="control-label col-sm-2" for="accountNumber">Account Number</label>
                            </span>
                            <input type="text" class="form-control" id="accountNumber">
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <label class="control-label col-sm-2" for="accounttype">Account Type</label>
                            </span>
                            <select class="form-control" id="accounttype">
                                <option>select account type</option>
                                <option>Saving's account</option>
                                <option>Current Account</option>
                                <option></option>
                            </select>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <br>
        <div class="col-md-9 col-md-offset-1 table-striped table-responsive">
            <table class="table">
                <thead>
                    <tr>
                        <th>Account Number</th>
                        <th>Account Name</th>
                        <th class="text-right">Effective Available Balance</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>
