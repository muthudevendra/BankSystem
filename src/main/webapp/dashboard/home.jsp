<%--
  Created by IntelliJ IDEA.
  User: Lakshitha
  Date: 01-Jun-17
  Time: 12:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="page-slider margin-bottom-40">
    <div id="carousel-example-generic" class="carousel slide carousel-slider">
        <!-- Indicators -->
        <ol class="carousel-indicators carousel-indicators-frontend">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <!-- First slide -->
            <div class="item carousel-item-eight active">
                <div class="container">
                    <div class="carousel-position-six text-uppercase text-center">
                        <h2 class="margin-bottom-20 animate-delay carousel-title-v5" data-animation="animated fadeInDown">
                            Bright Future <br/>
                            <span class="carousel-title-normal">for next generation...</span>
                        </h2>
                        <p class="carousel-subtitle-v5 border-top-bottom margin-bottom-30" data-animation="animated fadeInDown">Make Your Child Proud of Thier Money</p>
                        <a class="carousel-btn-green" href="#" data-animation="animated fadeInUp">Start Today</a>
                    </div>
                </div>
            </div>

            <!-- Second slide -->
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

            <!-- Third slide -->
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

        <!-- Controls -->
        <a class="left carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="prev">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
        </a>
        <a class="right carousel-control carousel-control-shop carousel-control-frontend" href="#carousel-example-generic" role="button" data-slide="next">
            <i class="fa fa-angle-right" aria-hidden="true"></i>
        </a>
    </div>
</div>
<!-- END SLIDER -->

<div class="main">
    <div class="container">
        <!-- BEGIN SERVICE BOX -->
        <div class="row service-box margin-bottom-40">
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-location-arrow blue"></i></em>
                    <span>Multipurpose Template</span>
                </div>
                <p>Lorem ipsum dolor sit amet, dolore eiusmod quis tempor incididunt ut et dolore Ut veniam unde nostrudlaboris. Sed unde omnis iste natus error sit voluptatem.</p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-check red"></i></em>
                    <span>Well Documented</span>
                </div>
                <p>Lorem ipsum dolor sit amet, dolore eiusmod quis tempor incididunt ut et dolore Ut veniam unde nostrudlaboris. Sed unde omnis iste natus error sit voluptatem.</p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="service-box-heading">
                    <em><i class="fa fa-compress green"></i></em>
                    <span>Responsive Design</span>
                </div>
                <p>Lorem ipsum dolor sit amet, dolore eiusmod quis tempor incididunt ut et dolore Ut veniam unde nostrudlaboris. Sed unde omnis iste natus error sit voluptatem.</p>
            </div>
        </div>
        <!-- END SERVICE BOX -->

        <!-- BEGIN BLOCKQUOTE BLOCK -->
        <div class="row quote-v1 margin-bottom-30">
            <div class="col-md-9">
                <span>Metronic - The Most Complete &amp; Popular Admin &amp; Frontend Theme</span>
            </div>
            <div class="col-md-3 text-right">
                <a class="btn-transparent" href="http://www.keenthemes.com/preview/index.php?theme=metronic_admin" target="_blank"><i class="fa fa-rocket margin-right-10"></i>Preview Admin</a>
            </div>
        </div>
        <!-- END BLOCKQUOTE BLOCK -->

        <!-- BEGIN RECENT WORKS -->
        <div class="row recent-work margin-bottom-40">
            <div class="col-md-3">
                <h2><a href="#">Recent Works</a></h2>
                <p>Lorem ipsum dolor sit amet, dolore eiusmod quis tempor incididunt ut et dolore Ut veniam unde voluptatem. Sed unde omnis iste natus error sit voluptatem.</p>
            </div>
            <div class="col-md-9">
                <div class="owl-carousel owl-carousel3">
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img1.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img1.jpg" class="fancybox-button" title="Project Name #1" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img2.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img2.jpg" class="fancybox-button" title="Project Name #2" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img3.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img3.jpg" class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img5.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img5.jpg" class="fancybox-button" title="Project Name #5" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img6.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img6.jpg" class="fancybox-button" title="Project Name #6" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img3.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img3.jpg" class="fancybox-button" title="Project Name #3" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                    <div class="recent-work-item">
                        <em>
                            <img src="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" alt="Amazing Project" class="img-responsive">
                            <a href="#"><i class="fa fa-link"></i></a>
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" class="fancybox-button" title="Project Name #4" data-rel="fancybox-button"><i class="fa fa-search"></i></a>
                        </em>
                        <a class="recent-work-description" href="javascript:">
                            <strong>Amazing Project</strong>
                            <b>Agenda corp.</b>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!-- END RECENT WORKS -->

        <!-- BEGIN TABS AND TESTIMONIALS -->
        <div class="row mix-block margin-bottom-40">
            <!-- TABS -->
            <div class="col-md-7 tab-style-1">
                <ul class="nav nav-tabs">
                    <li class="active"><a href="#tab-1" data-toggle="tab">Multipurpose</a></li>
                    <li><a href="#tab-2" data-toggle="tab">Documented</a></li>
                    <li><a href="#tab-3" data-toggle="tab">Responsive</a></li>
                    <li><a href="#tab-4" data-toggle="tab">Clean & Fresh</a></li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane row fade in active" id="tab-1">
                        <div class="col-md-3 col-sm-3">
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/layout/assets/pages/img/photos/img6.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-md-9 col-sm-9">
                            <p class="margin-bottom-10">Raw dichardson ex squid Aliqllum iphone.</p>
                            <p><a class="more" href="javascript:">Read more <i class="icon-angle-right"></i></a></p>
                        </div>
                    </div>
                    <div class="tab-pane row fade" id="tab-2">
                        <div class="col-md-9 col-sm-9">
                            <p>Food truica VHS salvia..</p>
                        </div>
                        <div class="col-md-3 col-sm-3">
                            <a href="${pageContext.request.contextPath}/layout/assets/pages/img/works/img4.jpg" class="fancybox-button" title="Image Title" data-rel="fancybox-button">
                                <img class="img-responsive" src="${pageContext.request.contextPath}/layout/assets/pages/img/photos/img6.jpg" alt="">
                            </a>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab-3">
                        <p>Etsi Pitchfork sustainable tofu synth chambray yr.</p>
                    </div>
                    <div class="tab-pane fade" id="tab-4">
                        <p>Tarfa ethical.k vegan.</p>
                    </div>
                </div>
            </div>
            <!-- END TABS -->
        </div>
        <!-- END TABS AND TESTIMONIALS -->

        <!-- BEGIN STEPS -->
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
        <!-- END STEPS -->
    </div>
</div>