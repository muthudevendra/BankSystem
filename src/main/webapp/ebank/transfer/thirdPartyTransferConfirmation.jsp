<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
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
                            <input value="${thirdPartyAccountTransfer.fromAccount.accountNo}" name="senderAccount" type="text"
                                   class="form-control" id="senderAccount" disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="amount">Amount</label>
                        </div>
                        <div class="col-md-6">
                            <input value="${thirdPartyAccountTransfer.amount}" name="amount" type="text"
                                   class="form-control" id="amount" disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="date">Date </label>
                        </div>
                        <div class="col-md-6">
                            <input value="<fmt:formatDate value="${thirdPartyAccountTransfer.transferDate}" pattern="dd-MM-yyyy"/>"
                                   name="date" type="text" class="form-control" id="Date" disabled>
                        </div>
                    </div>
                    <hr/>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="receiverName">Receiver Name </label>
                        </div>
                        <div class="col-md-6">
                            <input value="${thirdPartyAccountTransfer.receiverName}" name="receiverName" type="text" class="form-control" id="receiverName"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="receiverAccount">Receiver Account </label>
                        </div>
                        <div class="col-md-6">
                            <input value="${thirdPartyAccountTransfer.accountNo}" name="receiverAccount" type="text" class="form-control" id="receiverAccount"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="targetBank">Target Bank </label>
                        </div>
                        <div class="col-md-6">
                            <input value="${thirdPartyAccountTransfer.targetBank.bankName}" name="targetBank" type="text" class="form-control" id="targetBank"
                                   disabled>
                        </div>
                    </div>
                    <div class="row form-group">
                        <div class="col-md-2 col-md-offset-2">
                            <label class="control-label" for="targetBranch">Branch </label>
                        </div>
                        <div class="col-md-6">
                            <input value="${thirdPartyAccountTransfer.branch}" name="targetBranch" type="text" class="form-control" id="targetBranch"
                                   disabled>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

