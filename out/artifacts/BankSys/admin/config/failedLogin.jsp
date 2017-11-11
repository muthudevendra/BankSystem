<%--
  Created by IntelliJ IDEA.
  User: shehan
  Date: 7/6/2017
  Time: 8:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/failedLogin.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Failed Logins</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Failed Logins</legend>
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
                <table id="userLoginFailed" class="table table-striped table-hover table-responsive datatable">
                    <thead>
                    <tr>
                        <th>User Name</th>
                        <th>Attempted Date</th>
                        <th>Lock Status</th>
                        <th>Unlocked At</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${loginFailedList}" var="loginFailedList">
                        <tr>
                            <td>${loginFailedList.user.username}</td>
                            <td><fmt:formatDate value="${loginFailedList.attemptedDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                            <td>${loginFailedList.lockDescription}</td>
                            <td><fmt:formatDate value="${loginFailedList.unlockedAt}" pattern="dd-MM-yyyy HH:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
