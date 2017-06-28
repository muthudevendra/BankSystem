<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 8:48 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Type</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div id="legend">
                <legend>User Type</legend>
            </div>
        </div>
        <div class="content-page col-md-9">
            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="userType">User Type</label>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" name="userType" class="form-control" id="userType">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="description">Description</label>
                    </div>
                    <div class="col-lg-7">
                        <input type="text" name="description" class="form-control" id="description">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-7">
                        <select class="form-control" id="status">
                            <option>Select</option>
                            <option>Active</option>
                            <option>Inactive</option>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <hr/>
                    <div class="col-md-5">
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedBy">Last Modified By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-5">
                                <label for="modifiedDate">Last Modified Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="modifiedDate">2017/06/26</label>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-offset-2">
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdBy">Created By</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdBy">Lakshitha</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <label for="createdDate">Created Date</label>
                            </div>
                            <div class="col-md-6">
                                <label id="createdDate">2017/06/24</label>
                            </div>
                        </div>
                    </div>
                </div>
                <br/>
                <div class="row">
                    <div class="col-md-1 col-md-offset-8">
                        <button type="submit" class="btn btn-success">Save</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-default">Update</button>
                    </div>
                    <div class="col-md-1">
                        <button type="submit" class="btn btn-danger">Delete</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>