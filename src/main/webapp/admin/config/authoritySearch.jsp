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
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#authorityData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#authorityData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#authorityData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="authorityData" class="table datatable table-hover table-striped table-responsive">
                    <thead>
                        <tr>
                            <th>Authority ID</th>
                            <th>Authority Name</th>
                            <th>Module Name</th>
                            <th>Created User</th>
                            <th>Created Date</th>
                            <th>Last Modified User</th>
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
                            <td><fmt:formatDate value="${authority.createdDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                            <td>${authority.lastModifiedBy}</td>
                            <td><fmt:formatDate value="${authority.lastModifiedDate}" pattern="dd-MM-yyyy HH:ss"/></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
