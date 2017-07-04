<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/accountInquiry.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="/ebank/account/accountInquiry">Account Inquiry</a></li>
            <li><a href="/ebank/account/accountStatement">Account Statement</a></li>
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

        <div class="content-page col-lg-10">
            <div>
                <legend>Account Inquiry</legend>
            </div>
            <br/>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#accountInquiryData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#accountInquiryData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#accountInquiryData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="accountInquiryData" class="table table-striped table-hover table-responsive datatable">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Account Number</th>
                        <th>Open Date</th>
                        <th>Currency</th>
                        <th class="text-right">Effective Available Balance</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${customerAccountList}" var="customerAccount">
                        <tr onclick="load_account_statement(${customerAccount.customerAccountId})">
                            <td>${customerAccount.account.accountType.accountTypeName}</td>
                            <td>${customerAccount.accountNo}</td>
                            <td><fmt:formatDate value="${customerAccount.startDate}"
                                                pattern="dd-MM-yyyy"/></td>
                            <td>${customerAccount.currencyDescription}</td>
                            <td align="right">${customerAccount.availableBalance}</td>
                        </tr>
                    </c:forEach>
                    <tr>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
