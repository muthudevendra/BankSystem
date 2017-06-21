<%--
  Created by IntelliJ IDEA.
  User: lakshithar
  Date: 6/21/2017
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>

<form action="moduleManagement/saveModule" method="post">
    <div class="form-group">
        <label for="moduleName">Module Name</label>
        <input type="text" name="moduleName" class="form-control" id="moduleName">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <input type="text" name="description" class="form-control" id="description">
    </div>
    <button type="submit" class="btn btn-default"
            <sec:authorize
                    access="!hasRole('Module@ModuleManagement_CREATE')">
                disabled="disabled"
            </sec:authorize>>Submit</button>
</form>