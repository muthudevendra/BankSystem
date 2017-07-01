<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="container">
        <form action="" id="confirmForm" role="form">
            <div class="panel panel-success col-md-offset-1">
                <div class="panel-body">
                    <div class="row form-group">
                        <legend class="text-center">Transfer Details</legend>
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="senderAccount">Sending Account </label>
                        </div>
                        <div class="col-md-6">
                            <input name="senderAccount" type="text" class="form-control" id="senderAccount" disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="amount">Amount</label>
                        </div>
                        <div class="col-md-6">
                            <input name="amount" type="text" class="form-control" id="amount" disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="date">Date </label>
                        </div>
                        <div class="col-md-6">
                            <input name="date" type="text" class="form-control" id="Date" disabled>
                        </div>
                    </div>
                    <hr/>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="receiverName">Receiver Name </label>
                        </div>
                        <div class="col-md-6">
                            <input name="receiverName" type="text" class="form-control" id="receiverName"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="receiverAccount">Receiver Account </label>
                        </div>
                        <div class="col-md-6">
                            <input name="receiverAccount" type="text" class="form-control" id="receiverAccount"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="targetBank">Target Bank </label>
                        </div>
                        <div class="col-md-6">
                            <input name="targetBank" type="text" class="form-control" id="targetBank"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="targetBranch">Branch </label>
                        </div>
                        <div class="col-md-6">
                            <input name="targetBranch" type="text" class="form-control" id="targetBranch"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="pull-right">
                            <span class="input-group-btn">
                                <button class="btn btn-primary" type="submit">Confirm</button>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

