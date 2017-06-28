<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
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

        <div class="col-md-8 col-md-offset-1 table-striped table-responsive">
            <table class="table">
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
                    <td>${customerAccount.account.accountType.accountTypeName}</td>
                    <%--<td>${customerAccount.acc}</td>--%>
                    <td>${customerAccount.startDate}</td>
                    <td></td>
                    <td>${customerAccount.availableBalance}</td>
                </c:forEach>
                <tr>
                </tr>
                </tbody>
            </table>
        </div>

    </div>
</div>
