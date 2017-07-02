<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/29/2017
  Time: 7:52 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">Search Account</li>
        </ul>
        <div class="content-page col-lg-10">
            <div>
                <legend>Search Account</legend>
            </div>
            <form role="form">
                <div class="row">
                    <div class="col-md-offset-1">
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="type">Type</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="type">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="interestMethod">Interest Method</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="interestMethod">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="facilities">Available Facilities</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="facilities">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="createdDate">Created Date</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="createdDate">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="createdUser">Created User</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="createdUser">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="modifiedDate">Modified Date</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="modifiedDate">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="modifiedUser">Modified User</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="modifiedUser">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="status">Status</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="status">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div>
                        <span class="input-group-btn pull-right">
                            <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                </div>
            </form>
            <br/>
            <div class="col-md-12">
                <table class="table table-striped table-hover table-responsive">
                    <thead>
                    <tr>
                        <th>Account ID</th>
                        <th>Account Type</th>
                        <th>Interest Method</th>
                        <th>Mobile Banking</th>
                        <th>Online Banking</th>
                        <th>Passbook</th>
                        <th>Created User</th>
                        <th>Created Date</th>
                        <th>Last Modified User</th>
                        <th>Last Modified Date</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>