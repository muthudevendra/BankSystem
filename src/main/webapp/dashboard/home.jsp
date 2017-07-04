<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 01-Jun-17
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/dashboard/script/home.js"></script>
<div class="page-slider margin-bottom-40">
    <div id="carousel-example-generic" class="carousel slide carousel-slider">
        <ol class="carousel-indicators carousel-indicators-frontend">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item carousel-item-eight active">
                <div class="container">
                    <div class="carousel-position-six text-uppercase text-center">
                        <h2 class="margin-bottom-20 animate-delay carousel-title-v5"
                            data-animation="animated fadeInDown">
                            Bright Future <br/>
                            <span class="carousel-title-normal">for next generation...</span>
                        </h2>
                        <p class="carousel-subtitle-v5 border-top-bottom margin-bottom-30"
                           data-animation="animated fadeInDown">Make Your Child Proud of Thier Money</p>
                        <a class="carousel-btn-green" href="#" data-animation="animated fadeInUp">Start Today</a>
                    </div>
                </div>
            </div>
            <div class="item carousel-item-nine">
                <div class="container">
                    <div class="carousel-position-six">
                        <h2 class="animate-delay carousel-title-v6 text-uppercase" data-animation="animated fadeInDown">
                            Need a Assurance
                        </h2>
                        <p class="carousel-subtitle-v6 text-uppercase" data-animation="animated fadeInDown">
                            This is what you were looking for
                        </p>
                        <p class="carousel-subtitle-v7 margin-bottom-30" data-animation="animated fadeInDown">
                            Alpha Senior Savings....<br>
                            Assurance for a confident future
                        </p>
                        <a class="carousel-btn-green" href="#" data-animation="animated fadeInUp">More Deatils!</a>
                    </div>
                </div>
            </div>
            <div class="item carousel-item-ten">
                <div class="container">
                    <div class="carousel-position-six">
                        <h2 class="animate-delay carousel-title-v6 text-uppercase" data-animation="animated fadeInDown">
                            Powerful &amp; Confidence
                        </h2>
                        <p class="carousel-subtitle-v6 text-uppercase" data-animation="animated fadeInDown">
                            Achive Your Dreams
                        </p>
                        <p class="carousel-subtitle-v7 margin-bottom-30" data-animation="animated fadeInDown">
                            Alpha Women Savings Account, Embrace yourself for your future
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <a class="left carousel-control carousel-control-shop carousel-control-frontend"
           href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
        <a class="right carousel-control carousel-control-shop carousel-control-frontend"
           href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
    </div>
</div>

<div class="main">
    <div class="container">
        <div class="row service-box margin-bottom-40">
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-bank blue"></i></em>
                    <span>WHO WE ARE</span>
                </div>
                <p>Alpha Alliance is a leading wealth management, trust, and private banking company with a national presence. Capital in Sri Lanka, we serve clients from our offices located in the major markets of Colombo, Kandy, Gampaha, Nugegoda and Galle.<br><br>
                </p></div>
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-user-secret red"></i></em>
                    <span>Who we Serve</span>
                </div>
                <p>We offer broad-based programs, products and services, backed by our exceptional level of service and support, to a variety of clients and partners. We target individuals, businesses, real estate developers and nonprofits. </p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-trophy green"></i></em>
                    <span>Achievement</span>
                </div>
                <p>Being named to the Best Place to Work 2017, further affirms Alpha Alliance ongoing commitment to deliver the highest level of wealth management and
                    private banking services while practicing strong corporate governance and shareholder-friendly practices.</p><br>
                    <p class="pull-right">Mark Rally, CEO,BPW</p>
            </div>
        </div>

        <div class="row recent-work margin-bottom-40">
            <div class="col-md-3">
                <h2><a href="#">Recent Works</a></h2>
                <p>Our recent Community works and posts</p>
            </div>
            <div class="col-md-9">
                <div class="owl-carousel owl-carousel3">
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #1" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #2" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #5" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #6" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                                 alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/pics/img1-large.jpg"
                               class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i
                                    class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <div class="row margin-bottom-40 front-steps-wrapper front-steps-count-3">
            <div class="col-md-4 col-sm-4 front-step-col">
                <div class="front-step front-step1">
                    <h2>Goal definition</h2>
                    <p>Lorem ipsum dolor sit amet sit consectetur adipisicing eiusmod tempor.</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 front-step-col">
                <div class="front-step front-step2">
                    <h2>Analyse</h2>
                    <p>Lorem ipsum dolor sit amet sit consectetur adipisicing eiusmod tempor.</p>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 front-step-col">
                <div class="front-step front-step3">
                    <h2>Implementation</h2>
                    <p>Lorem ipsum dolor sit amet sit consectetur adipisicing eiusmod tempor.</p>
                </div>
            </div>
        </div>
    </div>
</div>