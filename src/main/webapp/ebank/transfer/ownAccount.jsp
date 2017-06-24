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
            <li class="active"><a href="ownAccount.jsp">Transfer From Own Account</a></li>
            <li><a href="#">Third-Party Transfer</a></li>
            <li><a href="#">Scheduled Transfer</a></li>
        </ul>
    </div>
</div>

<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#l">E-Banking</a></li>
            <li>Fund Transfer</li>
            <li class="active">Transfer</li>
        </ul>

        <div class="content-page col-md-9 col-md-offset-1">

            <div class="panel panel-success">
                <div class="panel-heading">
                    Recipient Details
                </div>
                <div class="panel-body">
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="account">Select Account: </label>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control" id="account">
                                <option>select account</option>
                            </select>
                        </div>
                        <div class="col-md-3">
                            <p class="align-left">Amount in Hand </p>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2">
                            <label class="control-label" for="targetAccount">Select Target Account: </label>
                        </div>
                        <div class="col-md-6">
                            <select class="form-control" id="targetAccount">
                                <option>select account</option>
                            </select>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-sm-2">
                            <label class="control-label" for="password">Password: </label>
                        </div>
                        <div class="col-sm-6">
                            <input type="password" class="form-control" id="password">
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-sm-2">
                            <label class="control-label" for="amount">Amount : </label>
                        </div>
                        <div class="col-sm-6">
                            <div class="input-group">
                                <span class="input-group-addon">Rs</span><input type="text" class="form-control" id="amount">
                            </div>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-3 col-md-offset-7">
                        <span class="input-group-btn">
                          <button class="btn btn-primary" type="submit">Transfer</button>
                        </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
