<%--
  Created by IntelliJ IDEA.
  User: BW_bear
  Date: 2019/6/10
  Time: 0:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>powerapproval</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/powerapproval/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/powerapproval/data.js"></script>
    <script src="resources/scripts/axure/legacy.js"></script>
    <script src="resources/scripts/axure/viewer.js"></script>
    <script src="resources/scripts/axure/math.js"></script>
    <script type="text/javascript">
      $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
      $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
      $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
    <style>
      table{
        width: 100%;
      }
      tr{
        background-image: url("images/powerapproval/u255.png");
        size: 20px;
        height: 30px;
        width: 100%;
      }
    </style>
    <script type="text/javascript">
        function pass(idStr){
            $.ajax({
                url: "http://localhost:9999/api/user/power/passUserPower",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify({
                    "userPowerIdStr": idStr
                }),
                success: function(data){
                    alert("批准申请");
                    window.location.href = "powerapproval";
                }
            });
        }
        function reject(idStr){
            $.ajax({
                url: "http://localhost:9999/api/user/power/rejectUserPower",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify({
                    "userPowerIdStr": idStr
                }),
                success: function(data){
                    alert("驳回申请");
                    window.location.href = "powerapproval";
                }
            });
        }
        $(document).ready(function(){
            $("#home").click(function(){
                window.location.href = "home";
            });
            $("#index").click(function(){
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

            $.ajax({
                url: "http://localhost:9999/api/user/power/selectUserPowerWail",
                type: "GET",
                dataType: "json",
                success: function(data){
                    var k=data.count;
                    var list = data.userPowerList;
                    var m=0;
                    var lsh = "";
                    var sqxm = "";
                    var sqrxx = "";
                    var cz = "";
                    for(;m<k;m++){
                        lsh+="<tr><td>"+list[m].userPowerIdStr+"</td></tr>";
                        sqxm+="<tr><td>"+list[m].powerName+"</td></tr>";
                        sqrxx+="<tr><td>"+list[m].userName+":"+list[m].telephone+"</td></tr>";
                        if(list[m].state==0){
                            cz+="<tr><td><button onclick='pass(\""+list[m].userPowerIdStr+"\")'>批准</button></td><td><button onclick='reject(\""+list[m].userPowerIdStr+"\")'>驳回</button></td></tr>";
                        }
                        else if(list[m].state==1){
                            cz+="<tr><td>已通过</td><td></td></tr>";
                        }
                        else if(list[m].state==-1){
                            cz+="<tr><td>已驳回</td><td></td></tr>";
                        }

                    }
                    $("#lsh").html(lsh);
                    $("#sqxm").html(sqxm);
                    $("#sqrxx").html(sqrxx);
                    $("#cz").html(cz);
                }
            });
        });
    </script>
  </head>
  <body>
    <div id="base" class="">

      <!-- Unnamed (组合) -->
      <div id="u187" class="ax_default" data-width="1530" data-height="710">

        <!-- Unnamed (矩形) -->
        <div id="u188" class="ax_default shape">
          <div id="u188_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u189" class="text">
            <p><span>`</span></p>
          </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u190" class="ax_default box_1">
          <div id="u190_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u191" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u192" class="ax_default" data-width="1530" data-height="354">

        <!-- Unnamed (组合) -->
        <div id="u193" class="ax_default" data-width="272" data-height="354">

          <!-- Unnamed (矩形) -->
          <div id="u194" class="ax_default box_1">
            <div id="u194_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u195" class="text">
              <p><span>z</span></p>
            </div>
          </div>

          <!-- Unnamed (组合) -->
          <div id="u196" class="ax_default" data-width="272" data-height="307">

            <!-- Unnamed (组合) -->
            <div id="u197" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="zgsq">
              <div id="u198" class="ax_default box_2">
                <div id="u198_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u199" class="text">
                  <p><span>资格申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u200" class="ax_default image">
                <img id="u200_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u201" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u202" class="ax_default image">
                <img id="u202_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u203" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u204" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsq">
              <div id="u205" class="ax_default box_2">
                <div id="u205_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u206" class="text">
                  <p><span>私人培训班申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u207" class="ax_default image">
                <img id="u207_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u208" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u209" class="ax_default image">
                <img id="u209_img" class="img " src="images/home/u63.png"/>
                <!-- Unnamed () -->
                <div id="u210" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u211" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="zgsp">
              <div id="u212" class="ax_default box_2">
                <div id="u212_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u213" class="text">
                  <p><span>资格审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u214" class="ax_default image">
                <img id="u214_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u215" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u216" class="ax_default image">
                <img id="u216_img" class="img " src="images/home/u70.png"/>
                <!-- Unnamed () -->
                <div id="u217" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u218" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsp">
              <div id="u219" class="ax_default box_2">
                <div id="u219_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u220" class="text">
                  <p><span>私人培训班审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u221" class="ax_default image">
                <img id="u221_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u222" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u223" class="ax_default image">
                <img id="u223_img" class="img " src="images/home/u77.png"/>
                <!-- Unnamed () -->
                <div id="u224" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u225" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="home">
              <div id="u226" class="ax_default box_2">
                <div id="u226_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u227" class="text">
                  <p><span>首页</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u228" class="ax_default image">
                <img id="u228_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u229" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u230" class="ax_default image">
                <img id="u230_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u231" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u232" class="ax_default" data-width="1258" data-height="45">

          <!-- Unnamed (矩形) -->
          <div id="u233" class="ax_default box_2">
            <div id="u233_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u234" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u235" class="ax_default" data-width="1258" data-height="38">

        <!-- Unnamed (组合) -->
        <div id="u236" class="ax_default" data-width="1258" data-height="38">

          <!-- Unnamed (矩形) -->
          <div id="u237" class="ax_default shape">
            <div id="u237_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u238" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u239" class="ax_default" data-width="1207" data-height="436">

        <!-- Unnamed (矩形) -->
        <div id="u240" class="ax_default flow_shape">
          <div id="u240_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u241" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u242" class="ax_default" data-width="1207" data-height="64">

          <!-- Unnamed (矩形) -->
          <div id="u243" class="ax_default shape">
            <div id="u243_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u244" class="text">
              <p><span>资格申请列表</span></p>
            </div>
          </div>
        </div>
        <!-- Unnamed (组合) -->
        <div id="u245" class="ax_default" data-width="0" data-height="0">
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u246" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u247" class="ax_default table_cell">
          <img id="u247_img" class="img " src="images/powerapproval/u247.png"/>
          <!-- Unnamed () -->
          <div id="u248" class="text">
            <p><span>资格申请流水号</span></p>
          </div>

        </div>

        <!-- Unnamed (单元格) -->
        <div id="u249" class="ax_default table_cell">
          <img id="u249_img" class="img " src="images/powerapproval/u247.png"/>
          <!-- Unnamed () -->
          <div id="u250" class="text">
            <p><span>申请项目</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u251" class="ax_default table_cell">
          <img id="u251_img" class="img " src="images/powerapproval/u247.png"/>
          <!-- Unnamed () -->
          <div id="u252" class="text">
            <p><span>申请人信息</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u253" class="ax_default table_cell">
          <img id="u253_img" class="img " src="images/powerapproval/u253.png"/>
          <!-- Unnamed () -->
          <div id="u254" class="text">
            <p><span>操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u255" class="ax_default table_cell">
          <table id="lsh">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u257" class="ax_default table_cell">
          <table id="sqxm">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u259" class="ax_default table_cell">
          <table id="sqrxx">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u261" class="ax_default table_cell">
          <table id="cz">

          </table>
        </div>
      </div>
    </div>
  </body>
</html>
