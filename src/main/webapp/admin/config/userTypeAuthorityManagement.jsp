<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/28/2017
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">User Authority</li>
        </ul>
        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>User Authority</legend>
            </div>
        </div>
        <div class="content-page col-md-9">
            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="usertype">User Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select class="form-control" id="usertype">
                            <option>Select</option>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="authoritytype">Authority Type</label>
                    </div>
                    <div class="col-lg-8">
                        <select class="form-control" id="authoritytype">
                            <option>Select</option>
                        </select>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="status">Status</label>
                    </div>
                    <div class="col-lg-8">
                        <select class="form-control" id="status">
                            <option>Select</option>
                        </select>
                    </div>
                </div>
                <br/>
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
