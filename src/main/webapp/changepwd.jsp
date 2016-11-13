<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
    <title>Change Password</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!--meta info-->
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="icon" type="image/ico" href="images/fav.ico">
    <!--stylesheet include-->
    <link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/jquery.custom-scrollbar.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css">
    <!--font include-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<!--wide layout-->
<div class="wide_layout relative">
    <!--[if (lt IE 9) | IE 9]>
    <div style="background:#fff;padding:8px 0 10px;">
        <div class="container" style="width:1170px;"><div class="row wrapper"><div class="clearfix" style="padding:9px 0 0;float:left;width:83%;"><i class="fa fa-exclamation-triangle scheme_color f_left m_right_10" style="font-size:25px;color:#e74c3c;"></i><b style="color:#e74c3c;">Attention! This page may not display correctly.</b> <b>You are using an outdated version of Internet Explorer. For a faster, safer browsing experience.</b></div><div class="t_align_r" style="float:left;width:16%;"><a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode" class="button_type_4 r_corners bg_scheme_color color_light d_inline_b t_align_c" target="_blank" style="margin-bottom:2px;">Update Now!</a></div></div></div></div>
    <![endif]-->
    <!--markup header-->
    <header role="banner">
        <!--header bottom part-->
        <section class="h_bot_part container">
            <div class="clearfix row">
                <div class="col-lg-8 col-md-6 col-sm-4 t_xs_align_c">
                    <a href="index.jsp" class="logo m_xs_bottom_15 d_xs_inline_b">
                        <img src="images/logo.png" alt="">
                    </a>
                </div>

                <div class="col-lg-4 col-md-6 col-sm-8 t_xs_align_c t_align_r m_xs_bottom_0">
                    <div class="row clearfix">
                        <ul class="d_inline_b horizontal_list clearfix f_size_medium users_nav">
                            <li><a href="user_info.jsp" class="default_t_color">My Account</a></li>
                            <li><a href="/User/logout" class="default_t_color">Checkout</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <!--main menu container-->
        <section class="menu_wrap relative">
            <div class="container clearfix">
                <!--button for responsive menu-->
                <button id="menu_button" class="r_corners centered_db d_none tr_all_hover d_xs_block m_bottom_10">
                    <span class="centered_db r_corners"></span>
                    <span class="centered_db r_corners"></span>
                    <span class="centered_db r_corners"></span>
                </button>
                <!--main menu-->
                <nav role="navigation" class="f_left f_xs_none d_xs_none">
                    <ul class="horizontal_list main_menu clearfix">
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav1" href="#" class="tr_delay_hover color_light tt_uppercase"><b>My Information</b></a></li>
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav2" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Borrowing&Reservation</b></a></li>
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav3" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Recommendation</b></a></li>
                        <li class="relative current f_xs_none m_xs_bottom_5"><a id="nav4" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Change Password</b></a></li>
                    </ul>
                </nav>
            </div>
        </section>
    </header>
    <!--breadcrumbs-->
    <section class="breadcrumbs">
        <div class="container">
            <ul class="horizontal_list clearfix bc_list f_size_medium">
                <li class="m_right_10 current"><a href="index.jsp" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
                <li><a href="#" class="default_t_color">Change Password</a></li>
            </ul>
        </div>
    </section>
    <!--content-->
    <div class="page_content_offset">
        <div class="container">
            <div class="row clearfix">
                <!--left content column-->
                <section class="col-lg-1 col-md-1 col-sm-1">
                </section>
                <section class="col-lg-10 col-md-9 col-sm-9">
                    <div class=" row clearfix r_corners photoframe  shadow m_bottom_45">
                        <div class="col-lg-1 col-md-8 col-sm-8 m_xs_bottom_30">
                        </div>
                        <div class="col-lg-10 col-md-8 col-sm-8 m_xs_bottom_30">
                            <br>
                            <h3 class="tt_uppercase color_dark m_bottom_5">&nbsp;</h3>
                            <h2 class="tt_uppercase color_dark m_bottom_25">Change Password</h2>

                            <form  action="/User/change" method="post">

                                <table style="font-size:16px">
                                    <tr class="m_bottom_45">
                                        <td width="200" height="50" align="right" valign="middle">
                                            <label for="password"  class="m_bottom_5 d_inline_b">User ID</label>&nbsp;
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="left" valign="middle">
                                            <label for="password" class="m_bottom_5 d_inline_b color_dark">${id}</label>
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="200" height="50" align="right" valign="middle">
                                            <label  class="m_bottom_5 d_inline_b">Name</label>&nbsp;
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="left" valign="middle">
                                            <label  class="m_bottom_5 d_inline_b color_dark">${user_name}</label>
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="200" height="50" align="right" valign="middle">
                                            <label for="password" class="required d_inline_b m_bottom_5">Old Password</label>
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="left" valign="middle">
                                            <input type="password" id="oldpassword" name="checkpwd" class="full_width r_corners">
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="200" height="50" align="right" valign="middle">
                                            <label for="password" class="required d_inline_b m_bottom_5">New Password</label>
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="left" valign="middle">
                                            <input type="password" id="newpassword" name="new_password" class="full_width r_corners">
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="200" height="50" align="right" valign="middle">
                                            <label for="password" class="required d_inline_b m_bottom_5">Confirm Password</label>
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="left" valign="middle">
                                            <input type="password" id="confirmpassword" name="cf_password" class="full_width r_corners">
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="100" height="20" align="right" valign="middle">
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="100" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="40" height="50" align="right" valign="middle">
                                        </td>
                                        <td width="300" height="50" align="center" valign="middle">
                                            <button  class="button_type_8 r_corners bg_scheme_color color_light tr_all_hove" type="submit"  value="Submit">Save</button>

                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="100" height="20" align="right" valign="middle">
                                        </td>
                                    </tr>
                                    <tr class="m_bottom_25">
                                        <td width="100" height="20" align="right" valign="middle">
                                        </td>
                                    </tr>
                                </table>
                            </form>

                        </div>
                    </div>

                </section>

            </div>
        </div>
    </div>

    <!--markup footer-->
    <footer id="footer" class="type_2">
        <div style="height:30px" class="footer_top_part">
            <div class="row clearfix">
                <div class="col-lg-3 col-md-2 col-sm-2 m_xs_bottom_0"> </div>
                <div class="col-lg-6 col-md-2 col-sm-2 m_xs_bottom_0">
                    <table>
                        <tr height="50" valign="middle">
                            <td align="left">
                                <h3 class="scheme_color m_bottom_20">Links</h3>
                            </td>
                            <td width="80">
                            </td>
                            <td width="200">
                                <a class="color_light tr_delay_hover" href="#">Xidian University</a>
                            </td>
                            <td width="200">
                                <a class="color_light tr_delay_hover" href="#">Oxford University</a>
                            </td>
                            <td width="200">
                                <a class="color_light tr_delay_hover" href="#">KingBridge University</a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="col-lg-3 col-md-2 col-sm-2 m_xs_bottom_0"> </div>
            </div>
        </div>
        <!--copyright part-->
        <div class="footer_bottom_part">
            <div class="col-lg-5 col-md-2 col-sm-2 m_xs_bottom_30"></div>
            <div class="col-lg-5 col-md-2 col-sm-2 m_xs_bottom_30">
                <div class="container clearfix t_mxs_align_c">
                    <p class="f_left f_mxs_none m_mxs_bottom_10">&copy; 2016 <span class=" scheme_color">&nbsp;Slibrary</span>. All Rights Reserved.</p><br>
                </div>
            </div>
        </div>

    </footer>
</div>

<button class="t_align_c r_corners tr_all_hover type_2 animate_ftl" id="go_to_top"><i class="fa fa-angle-up"></i></button>
<!--scripts include-->
<script src="js/jquery-2.1.0.min.js"></script>
<script src="js/user_nav.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/retina.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/jquery.tweet.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.custom-scrollbar.js"></script>
<script src="js/scripts.js"></script>
</body>
</html>
