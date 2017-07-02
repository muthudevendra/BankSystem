<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/30/2017
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/accountTypeSearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Account</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Account Type</legend>
            </div>
            <br/>
            <div class="col-md-12">
                <table class="table table-striped table-responsive datatable">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Description</th>
                        <th>Minimum deposit</th>
                        <th>Min Age</th>
                        <th>Max Age</th>
                        <th>Annual Cost</th>
                        <th>Created By</th>
                        <th>Created Date</th>
                        <th>Last Modified By</th>
                        <th>Last Modified Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${accountTypeList}" var="accountType">
                        <tr onclick="load_account_type(${accountType.accountTypeId})">
                            <td>${accountType.accountTypeName}</td>
                            <td>${accountType.description}</td>
                            <td>${accountType.minDeposit}</td>
                            <td>${accountType.minAge}</td>
                            <td>${accountType.maxAge}</td>
                            <td>${accountType.annualCost}</td>
                            <td>${accountType.createdBy}</td>
                            <td><fmt:formatDate value="${accountType.createdDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                            <td>${accountType.lastModifiedBy}</td>
                            <td><fmt:formatDate value="${accountType.lastModifiedDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>