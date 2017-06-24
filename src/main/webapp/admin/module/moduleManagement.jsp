<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ include file="/layout/include.jsp"%>
<div class="panel panel-default">
    <div class="panel-body">
        <form role="form" action="moduleManagement/saveModule" method="post">
            <div class="form-group col-md-6">
                <label for="moduleName">Module Name</label>
                <input type="text" name="moduleName" class="form-control" id="moduleName">
            </div>
            <div class="form-group col-md-6">
                <label for="description">Description</label>
                <input type="text" name="description" class="form-control" id="description">
            </div>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            <button type="submit" class="btn btn-default"
                    <sec:authorize
                            access="!hasAuthority('admin@moduleManagement_CREATE')">
                        disabled="disabled"
                    </sec:authorize>>Submit</button>
        </form>
    </div>
</div>