<%@ taglib prefix="s" uri="/struts-tags" %>

<%--
  Created by IntelliJ IDEA.
  User: root
  Date: 16-11-5
  Time: 下午5:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<!--[if IE 9 ]><html class="ie9" lang="en"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->
<head>
    <title>News Management</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <!--meta info-->
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <link rel="icon" type="image/ico" href="images/fav.ico">
    <!--stylesheet include-->
    <link rel="stylesheet" type="text/css" media="all" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" media="all" href="css/style.css">
    <!--font include-->
    <link href="css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<!--wide layout-->
<div class="wide_layout relative">

    <!--markup header-->
    <header role="banner">
        <!--header bottom part-->
        <section class="h_bot_part container">
            <div class="clearfix row">
                <div class="col-lg-8 col-md-6 col-sm-4 t_xs_align_c">
                    <a href="#" class="logo m_xs_bottom_15 d_xs_inline_b">
                        <img src="images/logo.png" alt="">
                    </a>
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
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav1" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Borrow And Return</b></a></li>
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav2" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Book Management</b></a></li>
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav3" href="#" class="tr_delay_hover color_light tt_uppercase"><b>E-Resource</b></a></li>
                        <li class="relative current f_xs_none m_xs_bottom_5"><a id="nav4" href="#" class="tr_delay_hover color_light tt_uppercase"><b>News Management</b></a></li>
                        <li class="relative f_xs_none m_xs_bottom_5"><a id="nav5" href="#" class="tr_delay_hover color_light tt_uppercase"><b>Recommendation</b></a></li>
                    </ul>
                </nav>
            </div>
        </section>
    </header>
    <!--breadcrumbs-->
    <section class="breadcrumbs">
        <div class="container">
            <ul class="horizontal_list clearfix bc_list f_size_medium">
                <li class="m_right_10"><a href="admin_info.jsp" class="default_t_color">Home<i class="fa fa-angle-right d_inline_middle m_left_10"></i></a></li>
                <li><a href="#" class="current default_t_color">News Management</a></li>
            </ul>
        </div>
    </section>
    <!--content-->
    <div class="page_content_offset">
        <div class="container">
            <div class="row clearfix">
                <!--right column-->
                <aside class="col-lg-3 col-md-3 col-sm-3">
                    <!--widgets-->
                    <figure class="widget shadow r_corners wrapper m_bottom_30">
                        <figcaption>
                            <h3 class="color_light">Menu</h3>
                        </figcaption>
                        <div class="widget_content">
                            <!--Categories list-->
                            <ul class="categories_list">
                                <li class="active">
                                    <a href="admin_newsManage.html" class="f_size_large scheme_color d_block relative">
                                        <b>Update News</b>
                                    </a>
                                </li>
                                <li >
                                    <a href="admin_news_add.html" class="f_size_large  color_dark d_block relative">
                                        <b>Add News</b>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </figure>
                </aside>
                <!--left content column-->

                <section style="margin-top:-1.3%"class="col-lg-9 col-md-9 col-sm-9">

                    <div class="clearfix m_bottom_30">
                        <s:iterator value="#attr.news_array" id="news_item" status="status">
                        <div class="product_item full_width list_type hit m_left_0 m_right_0">
                            <figure class="r_corners photoframe tr_all_hover type_2 shadow relative clearfix">
                                <!--description and price of product-->
                                <figcaption>
                                    <div class="clearfix">
                                        <div style="width:80%;padding:10px 15px" class="f_left f_sm_none w_sm_full m_xs_bottom_10">
                                            <h4 class="fw_medium"><a href="/News/detail?index=${news_item.id}" class="color_dark">${news_item.title}</a></h4>
                                            <hr class="m_bottom_10">
                                            <p class="d_sm_none d_xs_block">${news_item.summary}</p>
                                        </div>
                                        <div style="margin-top:8%" class="f_right f_sm_none t_align_r t_sm_align_l">
                                            <button class="button_type_4 bg_light_color_2 tr_all_hover f_right m_left_5 r_corners color_dark mw_0 p_hr_0 d_sm_inline_middle f_sm_none" onClick="delcfm(${news_item.id})"><i class="fa fa-trash-o"></i></button>
                                            <a href="/News/detail?index=${news_item.id}"><button class="button_type_4 bg_light_color_2 tr_all_hover f_right r_corners color_dark mw_0 m_sm_left_5 p_hr_0 d_sm_inline_middle f_sm_none"><i class="fa fa-pencil"></i></button></a>

                                        </div>
                                    </div>
                                </figcaption>
                            </figure>
                        </div>
                        </s:iterator>
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

<script language="javascript">
    function delcfm(nid) {
        if (!confirm("Are you sure to delete this news?")) {
            window.event.returnValue = false;
        }
        else {
            var json={
                "index":nid
            }
            $.get("/News/delete",json,function (mydata) {
                if (mydata == "success"){
                    window.location.href="/News/query"
                }
                else if (mydata == "error")
                    alert("Delete Failed! try later");
                else
                    alert(mydata);
            })
        }
    }
</script>

<!--scripts include-->
<script src="js/jquery-2.1.0.min.js"></script>
<script src="js/navigation.js"></script>
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
