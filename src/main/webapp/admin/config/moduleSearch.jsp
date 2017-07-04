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
            <div class="btn-group pull-right">
                <button class="btn btn-danger dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i>
                    Export Data
                </button>
                <ul class="dropdown-menu">
                    <li class="divider"></li>
                    <li><a href="#" onClick="$('#moduleData').tableExport({type:'excel',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/xls.png' width="24"/> XLS</a></li>
                    <li><a href="#" onClick="$('#moduleData').tableExport({type:'doc',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/word.png' width="24"/> Word</a></li>
                    <li><a href="#" onClick="$('#moduleData').tableExport({type:'pdf',escape:'false'});"><img
                            src='${pageContext.request.contextPath}/layout/assets/corporate/img/icons/pdf.png' width="24"/> PDF</a></li>
                </ul>
            </div>
            <div class="col-md-12">
                <table id="moduleData" class="table datatable table-hover table-striped table-responsive">
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

