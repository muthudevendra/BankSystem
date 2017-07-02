<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 7/1/2017
  Time: 5:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/script/userTypeSearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Type Search</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>User Type Search</legend>
            </div>
            <div class="col-md-12">
                <table class="table datatable table-striped table-hover table-responsive">
                    <thead>
                    <tr>
                        <th>User Type</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${userTypeList}" var="userType">
                        <tr onclick="load_user_type(${userType.userTypeId})">
                            <td>${userType.userType}</td>
                            <td>${userType.description}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
