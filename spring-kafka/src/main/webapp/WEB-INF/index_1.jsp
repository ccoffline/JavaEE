<%--
  Created by IntelliJ IDEA.
  User: BW_bear
  Date: 2019/6/10
  Time: 10:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/index_1/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/index_1/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
        $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <script>
        $(document).ready(function(){
            $("#u38").click(function(){
                $.ajax({
                    url: "http://localhost:9999/api/user/login",
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=UTF-8",
                    data: JSON.stringify({
                        "userName": $("#u39_input").val(),
                        "userPass": $("#u40_input").val()
                    }),
                    success: function(data){
                        if(data!=null){
                            alert("账号密码验证正确！");
                            sessionStorage.name=data.name;
                            window.location.href = "home";
                        }
                        else{
                            alert("账号密码验证错误！");
                        }
                    }
                });
            });
        });

    </script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (组合) -->
    <div id="u0" class="ax_default" data-width="1530" data-height="710">

        <!-- Unnamed (图片) -->
        <div id="u1" class="ax_default image">
            <img id="u1_img" class="img " src="images/index_1/u1.jpg"/>
            <!-- Unnamed () -->
            <div id="u2" class="text" style="display:none; visibility: hidden">
                <p><span></span></p>
            </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u3" class="ax_default" data-width="400" data-height="379">

            <!-- Unnamed (组合) -->
            <div id="u4" class="ax_default" data-width="68" data-height="17">

                <!-- Unnamed (矩形) -->
                <div id="u5" class="ax_default label">
                    <div id="u5_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u6" class="text">
                        <p><span>注册账户</span></p>
                    </div>
                </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u7" class="ax_default" data-width="309" data-height="68">

                <!-- Unnamed (矩形) -->
                <div id="u8" class="ax_default label">
                    <div id="u8_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u9" class="text">
                        <p><span>俱 乐 部 维 护 系 统</span></p>
                    </div>
                </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u10" class="ax_default" data-width="339" data-height="65">

                <!-- Unnamed (矩形) -->
                <div id="u11" class="ax_default box_1">
                    <div id="u11_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u12" class="text">
                        <p><span>账户密码登录</span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u13" class="ax_default box_2">
                    <div id="u13_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u14" class="text">
                        <p><span>24</span></p>
                    </div>
                </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u15" class="ax_default" data-width="400" data-height="117">

                <!-- Unnamed (组合) -->
                <div id="u16" class="ax_default" data-width="400" data-height="58">

                    <!-- Unnamed (矩形) -->
                    <div id="u17" class="ax_default iconfont">
                        <img id="u17_img" class="img " src="images/index_1/u17.png"/>
                        <!-- Unnamed () -->
                        <div id="u18" class="text">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u19" class="ax_default box_2">
                        <div id="u19_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u20" class="text">
                            <p><span>24</span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u21" class="ax_default shape">
                        <div id="u21_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u22" class="text">
                            <p><span>账户</span></p>
                        </div>
                    </div>
                </div>

                <!-- Unnamed (组合) -->
                <div id="u23" class="ax_default" data-width="400" data-height="58">

                    <!-- Unnamed (矩形) -->
                    <div id="u24" class="ax_default shape">
                        <div id="u24_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u25" class="text">
                            <p><span>密码</span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u26" class="ax_default paragraph">
                        <div id="u26_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u27" class="text">
                            <p><span></span></p>
                        </div>
                    </div>

                    <!-- Unnamed (矩形) -->
                    <div id="u28" class="ax_default box_2">
                        <div id="u28_div" class=""></div>
                        <!-- Unnamed () -->
                        <div id="u29" class="text">
                            <p><span>24</span></p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u30" class="ax_default" data-width="398" data-height="22">

                <!-- Unnamed (矩形) -->
                <div id="u31" class="ax_default box_1">
                    <div id="u31_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u32" class="text" style="display:none; visibility: hidden">
                        <p><span></span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u33" class="ax_default label">
                    <div id="u33_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u34" class="text">
                        <p><span>自动登录</span></p>
                    </div>
                </div>

                <!-- Unnamed (矩形) -->
                <div id="u35" class="ax_default label">
                    <div id="u35_div" class=""></div>
                    <!-- Unnamed () -->
                    <div id="u36" class="text">
                        <p><span>忘记密码</span></p>
                    </div>
                </div>
            </div>

            <!-- 登陆 (矩形) -->
            <div id="u37" class="ax_default shape" data-label="登陆">
                <div id="u37_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u38" class="text">
                    <p><span>登 录</span></p>
                </div>
            </div>
        </div>
    </div>

    <!-- 账号 (文本框) -->
    <div id="u39" class="ax_default text_field" data-label="账号">
        <input id="u39_input" type="text" />
    </div>

    <!-- 密码 (文本框) -->
    <div id="u40" class="ax_default text_field" data-label="密码">
        <input id="u40_input" type="password" />
    </div>
</div>
</body>
</html>

