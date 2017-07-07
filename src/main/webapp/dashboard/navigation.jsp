<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 08-Jun-17
  Time: 12:53 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="header">
    <div class="container">
        <a class="site-logo" href="/dashboard/home"><img
                src="${pageContext.request.contextPath}/layout/assets/corporate/img/logos/logo.png" alt=""></a>

        <a href="nav:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <div class="header-navigation pull-right font-transform-inherit">
            <ul>
                <li class="dropdown" id="home">
                    <a class="dropdown-toggle" href="/dashboard/home">
                        <i class="fa fa-home"></i>
                    </a>
                </li>
                <li class="dropdown dropdown-megamenu navUrl" id="savings">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="savings&Invsets:">
                        SAVINGS & INVEST
                    </a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="header-navigation-content">
                                <div class="row">
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>SAVINGS ACCOUNTS</h4>
                                        <ul>
                                            <li class="navUrl" id="regularSavingsAccount"><a
                                                    href="/dashboard/savings/regularSavingsAccount">Regular Savings</a>
                                            </li>
                                            <li class="navUrl" id="childrenSavingsAccount"><a
                                                    href="/dashboard/savings/childrenSavingsAccount">Children's
                                                Savings</a></li>
                                            <li class="navUrl" id="womenSavingsAccount"><a
                                                    href="/dashboard/savings/womenSavingsAccount">Women's Savings</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>TERM DEPOSITS</h4>
                                        <ul>
                                            <li class="navUrl" id="regularDeposits"><a
                                                    href="/dashboard/deposits/regularDeposits">Regular Deposits</a></li>
                                            <li class="navUrl" id="fexibleDeposits"><a
                                                    href="/dashboard/deposits/flexibleDeposits">Flexible Deposits</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-md-4 header-navigation-col">
                                        <h4>CURRENT ACCOUNTS</h4>
                                        <ul>
                                            <li class="navUrl" id="generalCurrentAccount"><a
                                                    href="/dashboard/current/generalCurrentAccount">General Current
                                                Account</a></li>
                                            <li class="navUrl" id="supremeCurrentAccount"><a
                                                    href="/dashboard/current/supremeCurrentAccount">Supreme Current
                                                Account</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="loans">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="loans:">
                        LOANS
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="housingLoans"><a href="/dashboard/loans/housingLoans">Housing Loans</a>
                        </li>
                        <li class="navUrl" id="educationalLoans"><a href="/dashboard/loans/educationalLoans">Educational
                            Loans</a></li>
                        <li class="navUrl" id="personalLoans"><a href="/dashboard/loans/personalLoans">Personal
                            Loans</a></li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="insurance">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="insurances:">
                        INSURANCE
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="lifeInsurance"><a href="/dashboard/insurance/lifeInsurance">Life
                            Protection</a></li>
                        <li class="navUrl" id="carInsurance"><a href="/dashboard/insurance/carInsurance">Vehicle
                            Protection</a></li>
                        <li class="navUrl" id="buildingInsurance"><a href="/dashboard/insurance/buildingInsurance">Buildings
                            & Contents</a></li>
                    </ul>
                </li>
                <li class="dropdown navUrl" id="cards">
                    <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="creditDebitCards:">
                        CARDS & CREDITS
                    </a>
                    <ul class="dropdown-menu">
                        <li class="navUrl" id="creditCard"><a href="/dashboard/cards/creditCard">Alpha Credit Cards</a>
                        </li>
                        <li class="navUrl" id="debitCard"><a href="/dashboard/cards/debitCard">Alpha Debit Cards</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>