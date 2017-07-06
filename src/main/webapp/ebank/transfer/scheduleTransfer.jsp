<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/26/2017
  Time: 11:03 AM
  To change this template use File | Settings | File Templates.
--%>
<meta name="_csrf" content="${_csrf.token}"/>
<meta name="_csrf_header" content="${_csrf.headerName}"/>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/scheduleTransfer.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li><a href="/ebank/transfer/ownAccount">Transfer From Own Account</a></li>
            <li><a href="/ebank/transfer/thirdPartyTransfer">Third Party Transfer</a></li>
            <li class="active"><a href="/ebank/transfer/scheduleTransfer">Schedule Transaction</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">E-Banking</a></li>
            <li>Fund Transfer</li>
            <li class="active">Schedule Transfer</li>
        </ul>
        <div class="content-page col-lg-10">
            <div id="legend">
                <legend>Schedule Transfer</legend>
            </div>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#scheduleTransferData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#scheduleTransferData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#scheduleTransferData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="scheduleTransferData" class="table datatable table-striped table-responsive">
                    <thead>
                    <tr>
                        <th>From Account</th>
                        <th>To Account</th>
                        <th>Description</th>
                        <th>Amount</th>
                        <th>Schedule Date</th>
                        <th>Due Date</th>
                        <th>Status</th>
                        <th class="text-right">Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${scheduledTransferList}" var="transaction">
                        <tr>
                            <td>${transaction.fromAccount.accountNo}</td>
                            <td>${transaction.accountNo}</td>
                            <td>${transaction.description}</td>
                            <td>${transaction.amount}</td>
                            <td><fmt:formatDate value="${transaction.createdDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                            <td><fmt:formatDate value="${transaction.transferDate}" pattern="yyyy-MM-dd HH:mm"/></td>
                            <td>${transaction.statusDescription}</td>
                            <td><span class="input-group-btn text-right"><button class="btn btn-default btn-xs"
                                                                                 data-toggle="tooltip"
                                                                                 data-placement="top"
                                                                                 title="Discard Transaction"><i
                                    class="fa fa-minus"></i></button></span></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>