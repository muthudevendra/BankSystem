<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/ownAccountTransfer.js"></script>
<div class="main">
    <div class="container">
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
                        <label class="control-label" for="receiverAccount">Receiving Account </label>
                    </div>
                    <div class="col-md-6">
                        <input value="${ownAccountTransfer.toAccount.accountNo}" type="text" class="form-control"
                               id="receiverAccount"
                               disabled>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="amount">Amount</label>
                    </div>
                    <div class="col-md-6">
                        <input value="${ownAccountTransfer.amount}" type="text" class="form-control" id="amount"
                               disabled>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="description">Description</label>
                    </div>
                    <div class="col-md-6">
                        <input value="${ownAccountTransfer.description}" type="text" class="form-control"
                               id="description" disabled>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-2">
                        <label class="control-label" for="date">Date </label>
                    </div>
                    <div class="col-md-6">
                        <input <fmt:formatDate value="${ownAccountTransfer.transferDate}" pattern="dd-MM-yyyy"/>
                                type="text" class="form-control" id="Date" disabled>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
