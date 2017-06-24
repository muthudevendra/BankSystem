<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 24-Jun-17
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="main">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="#">Admin</a></li>
            <li class="active">New Cutsomer</li>
        </ul>

        <div class="col-lg-8 col-lg-offset-1">
            <div>
                <legend>Customer Details</legend>
            </div>
        </div>

        <div class="content-page col-md-9">
            <form role="form">
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="nic">NIC Number</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="nic" class="form-control" id="nic">
                    </div>
                    <div class="col-lg-2">
                        <label for="nicIssueDate">Issue Date</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" class="form-control" id="nicIssueDate">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="passportNumber">Passport Number</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="passportNumber" class="form-control" id="passportNumber">
                    </div>
                </div>
                <hr style="width:75%"/>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="fullName">Full Name</label>
                    </div>
                    <div class="col-lg-8">
                        <input type="text" name="fullName" class="form-control" id="fullName">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="firstName">First Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="firstName" class="form-control" id="firstName">
                    </div>
                    <div class="col-lg-2">
                        <label for="middleName">Middle Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="middleName" class="form-control" id="middleName">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="lastName">Last Name</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="lastName" class="form-control" id="lastName">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="birthday">Birth Day</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="birthday" class="form-control" id="birthday">
                    </div>
                    <div class="col-lg-2">
                        <label>Gender</label>
                    </div>
                    <div class="col-lg-3">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="female" value="gender" name="gender" checked="">
                            <label for="female">Female</label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="male" value="gender" name="gender">
                            <label for="male">Male </label>
                        </div>
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="email">E-mail Address</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="email" class="form-control" id="email">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="addressLine1">Address Line1</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressLine1" class="form-control" id="addressLine1">
                    </div>
                    <div class="col-lg-2">
                        <label for="city">City</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="city" class="form-control" id="city">
                    </div>

                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="addressLine2">Address Line2</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="addressLine2" class="form-control" id="addressLine2">
                    </div>
                    <div class="col-lg-2">
                        <label for="country">Country</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="country" class="form-control" id="country">
                    </div>
                </div>

                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="homeContact">Home Contact</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="homeContact" class="form-control" id="homeContact">
                    </div>
                    <div class="col-lg-2">
                        <label for="mobile">Mobile</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="mobile" class="form-control" id="mobile">
                    </div>
                </div>
                <hr style="width:75%"/>
                <div class="row form-group">
                    <div class="col-lg-2 col-md-offset-2">
                        <label for="occupation">Occupation</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="occupation" class="form-control" id="occupation">
                    </div>
                    <div class="col-md-2">
                        <label for="income">Monthly Income (Rs)</label>
                    </div>
                    <div class="col-lg-3">
                        <input type="text" name="income" class="form-control" id="income">
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-2 col-md-offset-9">
                        <label for="tax">Pay Tax</label>
                    </div>
                    <div class="col-lg-offset-0">
                        <input type="checkbox" name="tax" id="tax">
                    </div>
                </div>
                <br/>

                <button type="submit" class="btn btn-success col-md-offset-10">Submit</button>
            </form>
        </div>
    </div>
</div>