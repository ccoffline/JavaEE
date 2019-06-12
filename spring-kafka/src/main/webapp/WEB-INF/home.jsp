<%--
  Created by IntelliJ IDEA.
  User: BW_bear
  Date: 2019/6/10
  Time: 0:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>home</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/home/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/axure/axQuery.js"></script>
    <script src="resources/scripts/axure/globals.js"></script>
    <script src="resources/scripts/axutils.js"></script>
    <script src="resources/scripts/axure/annotation.js"></script>
    <script src="resources/scripts/axure/axQuery.std.js"></script>
    <script src="resources/scripts/axure/doc.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/messagecenter.js"></script>
    <script src="resources/scripts/axure/events.js"></script>
    <script src="resources/scripts/axure/recording.js"></script>
    <script src="resources/scripts/axure/action.js"></script>
    <script src="resources/scripts/axure/expr.js"></script>
    <script src="resources/scripts/axure/geometry.js"></script>
    <script src="resources/scripts/axure/flyout.js"></script>
    <script src="resources/scripts/axure/ie.js"></script>
    <script src="resources/scripts/axure/model.js"></script>
    <script src="resources/scripts/axure/repeater.js"></script>
    <script src="resources/scripts/axure/sto.js"></script>
    <script src="resources/scripts/axure/utils.temp.js"></script>
    <script src="resources/scripts/axure/variables.js"></script>
    <script src="resources/scripts/axure/drag.js"></script>
    <script src="resources/scripts/axure/move.js"></script>
    <script src="resources/scripts/axure/visibility.js"></script>
    <script src="resources/scripts/axure/style.js"></script>
    <script src="resources/scripts/axure/adaptive.js"></script>
    <script src="resources/scripts/axure/tree.js"></script>
    <script src="resources/scripts/axure/init.temp.js"></script>
    <script src="files/home/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
        $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <script type="text/javascript">
        $(document).ready(function(){
            $("#home").click(function(){
                window.location.href = "home";
            });
            $("#u100_img").click(function(){
                window.location.href = "index";
            });
            $("#zgsq").click(function(){
                window.location.href = "powerapply";
            });
            $("#pxbsq").click(function(){
                window.location.href = "courseapply";
            });
            $("#zgsp").click(function(){
                window.location.href = "powerapproval";
            });
            $("#pxbsp").click(function(){
                window.location.href = "courseapprpval";
            });

            $("#hy").text("欢迎 "+sessionStorage.name);
        });
    </script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (组合) -->
    <div id="u41" class="ax_default" data-width="1530" data-height="710">

        <!-- Unnamed (矩形) -->
        <div id="u42" class="ax_default shape">
            <div id="u42_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u43" class="text">
                <p><span>`</span></p>
            </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u44" class="ax_default box_1">
            <div id="u44_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u45" class="text" style="display:none; visibility: hidden">
                <p><span></span></p>
            </div>
        </div>
    </div>

    <!-- Unnamed (组合) -->
    <div id="u46" class="ax_default" data-width="1530" data-height="354">

        <!-- Unnamed (组合) -->
        <div id="u47" class="ax_default" data-width="272" data-height="354">

            <!-- Unnamed (矩形) -->
            <div id="u48" class="ax_default box_1">
                <div id="u48_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u49" class="text">
                    <p><span>z</span></p>
                </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u50" class="ax_default" data-width="272" data-height="307">

                <!-- Unnamed (组合) -->
                <div id="u51" class="ax_default" data-width="272" data-height="52">

                    <!-- Unnamed (矩形) -->
                    <div id="zgsq">
                    <div id="u52" class="ax_default box_2">
                        <div id="u52_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u53" class="text">
                            <p><span>资格申请</span></p>
                        </div>
                    </div>
                    </div>
                    <!-- Unnamed (图片) -->
                    <div id="u54" class="ax_default image">
                        <img id="u54_img" class="img " src="images/home/u54.png"/>
                        <!-- Unnamed () -->
                        <div id="u55" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u56" class="ax_default image">
                        <img id="u56_img" class="img " src="images/home/u56.png"/>
                        <!-- Unnamed () -->
                        <div id="u57" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u58" class="ax_default" data-width="272" data-height="54">

                    <!-- Unnamed (矩形) -->
                    <div id="pxbsq">
                    <div id="u59" class="ax_default box_2">
                        <div id="u59_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u60" class="text">
                            <p><span>私人培训班申请</span></p>
                        </div>
                    </div>
                    </div>
                    <!-- Unnamed (图片) -->
                    <div id="u61" class="ax_default image">
                        <img id="u61_img" class="img " src="images/home/u54.png"/>
                        <!-- Unnamed () -->
                        <div id="u62" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u63" class="ax_default image">
                        <img id="u63_img" class="img " src="images/home/u63.png"/>
                        <!-- Unnamed () -->
                        <div id="u64" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u65" class="ax_default" data-width="272" data-height="54">

                    <!-- Unnamed (矩形) -->
                    <div id="zgsp">
                    <div id="u66" class="ax_default box_2">
                        <div id="u66_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u67" class="text">
                            <p><span>资格审批</span></p>
                        </div>
                    </div>
                    </div>
                    <!-- Unnamed (图片) -->
                    <div id="u68" class="ax_default image">
                        <img id="u68_img" class="img " src="images/home/u54.png"/>
                        <!-- Unnamed () -->
                        <div id="u69" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u70" class="ax_default image">
                        <img id="u70_img" class="img " src="images/home/u70.png"/>
                        <!-- Unnamed () -->
                        <div id="u71" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u72" class="ax_default" data-width="272" data-height="54">

                    <!-- Unnamed (矩形) -->
                    <div id="pxbsp">
                    <div id="u73" class="ax_default box_2">
                        <div id="u73_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u74" class="text">
                            <p><span>私人培训班审批</span></p>
                        </div>
                    </div>
                    </div>
                    <!-- Unnamed (图片) -->
                    <div id="u75" class="ax_default image">
                        <img id="u75_img" class="img " src="images/home/u54.png"/>
                        <!-- Unnamed () -->
                        <div id="u76" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u77" class="ax_default image">
                        <img id="u77_img" class="img " src="images/home/u77.png"/>
                        <!-- Unnamed () -->
                        <div id="u78" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u79" class="ax_default" data-width="272" data-height="52">

                    <!-- Unnamed (矩形) -->
                    <div id="home">
                    <div id="u80" class="ax_default box_2">
                        <div id="u80_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u81" class="text">
                            <p><span>首页</span></p>
                        </div>
                    </div>
                    </div>
                    <!-- Unnamed (图片) -->
                    <div id="u82" class="ax_default image">
                        <img id="u82_img" class="img " src="images/home/u54.png"/>
                        <!-- Unnamed () -->
                        <div id="u83" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (图片) -->
                    <div id="u84" class="ax_default image">
                        <img id="u84_img" class="img " src="images/home/u56.png"/>
                        <!-- Unnamed () -->
                        <div id="u85" class="text" style="display:none; visibility: hidden">
                            <p><span></span></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u86" class="ax_default" data-width="1258" data-height="45">

            <!-- Unnamed (矩形) -->
            <div id="u87" class="ax_default box_2">
                <div id="u87_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u88" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Unnamed (组合) -->
    <div id="u89" class="ax_default" data-width="1258" data-height="38">

        <!-- Unnamed (组合) -->
        <div id="u90" class="ax_default" data-width="1258" data-height="38">

            <!-- Unnamed (矩形) -->
            <div id="u91" class="ax_default shape">
                <div id="u91_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u92" class="text" style="display:none; visibility: hidden">
                    <p><span></span></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Unnamed (组合) -->
    <div id="u93" class="ax_default" data-width="1207" data-height="132">

        <!-- Unnamed (矩形) -->
        <div id="u94" class="ax_default shape">
            <div id="u94_div" class="">
                <p>
                    <span id="hy" style="font-size: 50px;"></span>
                </p>
            </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u96" class="ax_default box_2">
            <div id="u96_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u97" class="text" style="display:none; visibility: hidden">
                <p><span></span></p>
            </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u98" class="ax_default box_2">
            <div id="u98_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u99" class="text" style="display:none; visibility: hidden">
                <p><span></span></p>
            </div>
        </div>
    </div>

    <!-- Unnamed (图片) -->
    <div id="u100" class="ax_default image">
        <img id="u100_img" class="img " src="images/home/u100.png"/>
        <!-- Unnamed () -->
        <div id="u101" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
        </div>
    </div>
</div>
</body>
</html>
