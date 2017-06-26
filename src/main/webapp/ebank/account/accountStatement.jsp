<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 12:22 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/account/accountInquiry">Account Inquiry</a></li>
            <li class="active"><a href="/ebank/account/accountStatement">Account Statement</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">

        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>My Account</li>
            <li class="active">Statement</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Account Summary</legend>
            </div>
        </div>

        <div class="content-page col-md-8 col-md-offset-2">
            <form action="#">
                <div class="row">
                    <div class="col-lg-5">
                        <div class="input-group">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="control-label" for="accounttype">Account Type</label>
                                </div>
                                <div class="col-md-7">
                                    <select class="form-control" id="accounttype">
                                        <option>select type</option>
                                        <option>Saving's account</option>
                                        <option>Current Account</option>
                                        <option></option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-5">
                        <div class="input-group">
                            <div class="row">
                                <div class="col-md-5">
                                    <label class="control-label col-sm-2" for="accountnumber">Account Number</label>
                                </div>
                                <div class="col-md-7">
                                    <input type="text" class="form-control" id="accountnumber">
                                </div>
                            </div>
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
        <br>
        <div class="col-md-9 col-md-offset-2 table-striped table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Reference</th>
                    <th>Withdraw</th>
                    <th>Deposit</th>
                    <th class="text-right">Available Balance</th>
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
