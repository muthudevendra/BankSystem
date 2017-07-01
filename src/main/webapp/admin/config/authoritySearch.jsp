<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/29/2017
  Time: 7:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp" %>
<script type="text/javascript" src="/admin/script/authoritySearch.js"></script>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Authority</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Authority Search</legend>
            </div>
            <div class="col-md-12">
                <table class="table datatable table-responsive">
                    <thead>
                        <tr>
                            <th>Authority ID</th>
                            <th>Authority Name</th>
                            <th>Module Name</th>
                            <th>Created Date</th>
                            <th>Last Modified Date</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${authorityList}" var="authority">
                        <tr onclick="load_module(${authority.authorityId})">
                            <td>${authority.authorityId}</td>
                            <td>${authority.authorityName}</td>
                            <td>${authority.module.moduleName}</td>
                            <td>${authority.createdBy}</td>
                            <td>${authority.lastModifiedBy}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
