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
            <li class="active">Search Account Type</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Account Type</legend>
            </div>
            <br/>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#accountTypeData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#accountTypeData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#accountTypeData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="accountTypeData" class="table table-striped table-hover table-responsive datatable">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Description</th>
                        <th>Minimum deposit</th>
                        <th>Min Age</th>
                        <th>Max Age</th>
                        <th>Annual Cost</th>
                        <th>Created User</th>
                        <th>Created Date</th>
                        <th>Last Modified User</th>
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