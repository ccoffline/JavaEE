<%--
  Created by IntelliJ IDEA.
  User: BW_bear
  Date: 2019/6/10
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>courseapply</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/courseapply/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/courseapply/data.js"></script>
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
            $("#u311_img").click(function(){
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

            $("#u323").click(function(){
                $.ajax({
                    url: "http://localhost:9999/api/user/course/createNewUserCourse",
                    type: "POST",
                    dataType: "json",
                    contentType: "application/json; charset=UTF-8",
                    data: JSON.stringify({
                        "userName": sessionStorage.name,
                        "courseName": $("#u350_input").val(),
                        "content": $("#u349_input").val(),
                        "number": $("#u351_input").val(),
                        "telephone": $("#u352_input").val()

                    }),
                    success: function(data){
                        alert("提交成功,返回首页，请等待审批。");
                        window.location.href = "home";
                    }
                });
            });
            $("#u327").click(function(){
                window.location.href = "home";
            });
        });
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (组合) -->
      <div id="u263" class="ax_default" data-width="1530" data-height="710">

        <!-- Unnamed (矩形) -->
        <div id="u264" class="ax_default shape">
          <div id="u264_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u265" class="text">
            <p><span>`</span></p>
          </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u266" class="ax_default box_1">
          <div id="u266_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u267" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u268" class="ax_default" data-width="1530" data-height="354">

        <!-- Unnamed (组合) -->
        <div id="u269" class="ax_default" data-width="272" data-height="354">

          <!-- Unnamed (矩形) -->
          <div id="u270" class="ax_default box_1">
            <div id="u270_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u271" class="text">
              <p><span>z</span></p>
            </div>
          </div>

          <!-- Unnamed (组合) -->
          <div id="u272" class="ax_default" data-width="272" data-height="307">

            <!-- Unnamed (组合) -->
            <div id="u273" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="zgsq">
              <div id="u274" class="ax_default box_2">
                <div id="u274_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u275" class="text">
                  <p><span>资格申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u276" class="ax_default image">
                <img id="u276_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u277" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u278" class="ax_default image">
                <img id="u278_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u279" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u280" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsq">
              <div id="u281" class="ax_default box_2">
                <div id="u281_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u282" class="text">
                  <p><span>私人培训班申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u283" class="ax_default image">
                <img id="u283_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u284" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u285" class="ax_default image">
                <img id="u285_img" class="img " src="images/home/u63.png"/>
                <!-- Unnamed () -->
                <div id="u286" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u287" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="zgsp">
              <div id="u288" class="ax_default box_2">
                <div id="u288_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u289" class="text">
                  <p><span>资格审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u290" class="ax_default image">
                <img id="u290_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u291" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u292" class="ax_default image">
                <img id="u292_img" class="img " src="images/home/u70.png"/>
                <!-- Unnamed () -->
                <div id="u293" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u294" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsp">
              <div id="u295" class="ax_default box_2">
                <div id="u295_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u296" class="text">
                  <p><span>私人培训班审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u297" class="ax_default image">
                <img id="u297_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u298" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u299" class="ax_default image">
                <img id="u299_img" class="img " src="images/home/u77.png"/>
                <!-- Unnamed () -->
                <div id="u300" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u301" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="home">
              <div id="u302" class="ax_default box_2">
                <div id="u302_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u303" class="text">
                  <p><span>首页</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u304" class="ax_default image">
                <img id="u304_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u305" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u306" class="ax_default image">
                <img id="u306_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u307" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u308" class="ax_default" data-width="1258" data-height="46">

          <!-- Unnamed (矩形) -->
          <div id="u309" class="ax_default box_2">
            <div id="u309_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u310" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>

          <!-- Unnamed (图片) -->
          <div id="u311" class="ax_default image">
            <img id="u311_img" class="img " src="images/home/u100.png"/>
            <!-- Unnamed () -->
            <div id="u312" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u313" class="ax_default" data-width="1258" data-height="38">

        <!-- Unnamed (组合) -->
        <div id="u314" class="ax_default" data-width="1258" data-height="38">

          <!-- Unnamed (矩形) -->
          <div id="u315" class="ax_default shape">
            <div id="u315_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u316" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u317" class="ax_default" data-width="1207" data-height="436">

        <!-- Unnamed (矩形) -->
        <div id="u318" class="ax_default flow_shape">
          <div id="u318_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u319" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u320" class="ax_default" data-width="757" data-height="433">

        <!-- Unnamed (组合) -->
        <div id="u321" class="ax_default" data-width="167" data-height="53">

          <!-- Unnamed (矩形) -->
          <div id="u322" class="ax_default shape">
            <div id="u322_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u323" class="text">
              <p><span>提 交</span></p>
            </div>
          </div>

          <!-- Unnamed (矩形) -->
          <div id="u324" class="ax_default box_2">
            <div id="u324_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u325" class="text">
              <p><span>24</span></p>
            </div>
          </div>

          <!-- Unnamed (矩形) -->
          <div id="u326" class="ax_default shape">
            <div id="u326_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u327" class="text">
              <p><span>取 消</span></p>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u328" class="ax_default" data-width="89" data-height="30">

          <!-- Unnamed (矩形) -->
          <div id="u329" class="ax_default heading_1">
            <div id="u329_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u330" class="text">
              <p><span>培训内容</span></p>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u331" class="ax_default" data-width="197" data-height="59">

          <!-- Unnamed (矩形) -->
          <div id="u332" class="ax_default heading_1">
            <div id="u332_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u333" class="text">
              <p><span>私人培训班申请单</span></p>
            </div>
          </div>

          <!-- Unnamed (矩形) -->
          <div id="u334" class="ax_default box_2">
            <div id="u334_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u335" class="text">
              <p><span>24</span></p>
            </div>
          </div>

          <!-- Unnamed (矩形) -->
          <div id="u336" class="ax_default box_2">
            <div id="u336_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u337" class="text">
              <p><span>24</span></p>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u338" class="ax_default" data-width="109" data-height="35">

          <!-- Unnamed (组合) -->
          <div id="u339" class="ax_default" data-width="109" data-height="35">

            <!-- Unnamed (矩形) -->
            <div id="u340" class="ax_default heading_1">
              <div id="u340_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u341" class="text">
                <p><span>培训班名称</span></p>
              </div>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u342" class="ax_default" data-width="109" data-height="35">

          <!-- Unnamed (组合) -->
          <div id="u343" class="ax_default" data-width="109" data-height="35">

            <!-- Unnamed (矩形) -->
            <div id="u344" class="ax_default heading_1">
              <div id="u344_div" class=""></div>
              <!-- Unnamed () -->
              <div id="u345" class="text">
                <p><span>培训班人数</span></p>
              </div>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u346" class="ax_default" data-width="89" data-height="30">

          <!-- Unnamed (矩形) -->
          <div id="u347" class="ax_default heading_1">
            <div id="u347_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u348" class="text">
              <p><span>预留电话</span></p>
            </div>
          </div>
        </div>

        <!-- Unnamed (多行文本框) -->
        <div id="u349" class="ax_default text_area">
          <textarea id="u349_input"></textarea>
        </div>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u350" class="ax_default text_field">
        <input id="u350_input" type="text" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u351" class="ax_default text_field">
        <input id="u351_input" type="text" value=""/>
      </div>

      <!-- Unnamed (文本框) -->
      <div id="u352" class="ax_default text_field">
        <input id="u352_input" type="text" value=""/>
      </div>
    </div>
  </body>
</html>
