<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/20/2017
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/ebank/script/loginHistory.js"></script>
<div class="main">
    <div class="col-md-2 col-sm-2">
        <ul class="tabbable faq-tabbable">
            <li class="active"><a href="/ebank/profile/loginHistory">Login History</a></li>
            <li><a href="/ebank/profile/changePassword">Change Password</a></li>
        </ul>
    </div>
</div>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">My Profile</a></li>
            <li class="active">Login History</li>
        </ul>
        <div class="content-page col-lg-10">
            <div id="legend">
                <legend>Log Details</legend>
                <c:if test="${lastFailedLogin ne null}">
                    <label style="color: red"> Last failed Login attempt at ${lastFailedLogin.attemptedDate} </label>
                </c:if>
            </div>
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#loginHistoryData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#loginHistoryData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#loginHistoryData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="loginHistoryData" class="table datatable table-striped table-responsive">
                    <thead>
                    <tr>
                        <th>Logged In Date</th>
                        <th>Logged In Time</th>
                        <th>Logged Out Date</th>
                        <th>Logged Out Time</th>
                        <th>Computer IP</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userLoginHistoryList}" var="userLoginHistory">
                        <tr>
                            <td><fmt:formatDate value="${userLoginHistory.loginDate}" pattern="dd-MM-yyyy"/></td>
                            <td><fmt:formatDate value="${userLoginHistory.loginDate}" pattern="HH:mm:ss"/></td>
                            <td><fmt:formatDate value="${userLoginHistory.logoutDate}" pattern="dd-MM-yyyy"/></td>
                            <td><fmt:formatDate value="${userLoginHistory.logoutDate}" pattern="HH:mm:ss"/></td>
                            <td>${userLoginHistory.remoteAddress}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>