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
                <legend>Accounts</legend>
            </div>
            <form role="form">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <label class="control-label" for="type">Type</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="type">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <label class="control-label" for="interestMethod">Interest Method</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="interestMethod">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="facilities">Available Facilities</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <select name="status" class="form-control" id="facilities">
                                                <option>
                                                </option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="createdDate">Created Date</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="createdDate">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="createdUser">Created User</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="createdUser">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="modifiedDate">Modified Date</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="modifiedDate">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="modifiedUser">Modified User</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="modifiedUser">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="col-lg-5">
                                        <div class="input-group">
                                            <label class="control-label" for="status">Status</label>
                                        </div>
                                    </div>
                                    <div class="col-lg-7">
                                        <div class="input-group">
                                            <input type="text" class="form-control" id="status">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-1">
                                <span class="input-group-btn">
                                    <button class="btn btn-success" type="submit"><i class="fa fa-search"></i></button>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <br/>
            <div class="col-md-12 table-striped table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>Account Type</th>
                        <th>Interest Method</th>
                        <th>Mobile Banking</th>
                        <th>Online Banking</th>
                        <th>Passbook</th>
                        <th>Created Date</th>
                        <th>Created By</th>
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