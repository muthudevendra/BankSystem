<%--
  Created by IntelliJ IDEA.
  User: Muthu Devendra
  Date: 6/30/2017
  Time: 10:42 AM
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
                <legend>Account type</legend>
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
                                    <label class="control-label" for="minDeposit">Min Deposit</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="minDeposit">
                                </div>
                            </div>
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="minAge">Min Age</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="minAge">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-1">
                                <div class="input-group">
                                    <label class="control-label" for="maxAge">Max Age</label>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="input-group">
                                    <input type="text" class="form-control" id="maxAge">
                                </div>
                            </div>
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
                        </div>
                        <div class="row">
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
                </div>
                <span class="input-group-btn pull-right">
                    <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                </span>
            </form>
            <br/>
            <div class="col-md-12">
                <table class="table table-striped table-responsive">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Description</th>
                        <th>Minimum deposit</th>
                        <th>Min Age</th>
                        <th>Max Age</th>
                        <th>Annual Cost</th>
                        <th>Created By</th>
                        <th>Created Date</th>
                        <th>Last Modified Date</th>
                        <th>Last Modified By</th>
                        <th>Status</th>
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