
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
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>Log Details</legend>
            </div>
        </div>

        <br>
        <div class="col-md-9 col-md-offset-1 table-striped table-responsive">
            <table class="table datatable">
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
