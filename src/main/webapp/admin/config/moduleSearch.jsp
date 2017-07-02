<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/29/2017
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/moduleSearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Module</li>
        </ul>
        <div class="col-lg-10">
            <div>
                <legend>Module Search</legend>
            </div>
            <br>
            <div class="col-md-12">
                <table class="table datatable table-hover table-striped table-responsive">
                    <thead>
                    <tr>
                        <th>Module ID</th>
                        <th>Module Name</th>
                        <th>Description</th>
                        <th>Created User</th>
                        <th>Created Date</th>
                        <th>Last Modified User</th>
                        <th>Last Modified Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${modelList}" var="modul">
                        <tr onclick="load_module(${modul.moduleId})">
                            <td>${modul.moduleId}</td>
                            <td>${modul.moduleName}</td>
                            <td>${modul.description}</td>
                            <td>${modul.createdBy}</td>
                            <td><fmt:formatDate value="${modul.createdDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                            <td>${modul.lastModifiedBy}</td>
                            <td><fmt:formatDate value="${modul.lastModifiedDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

