<%--
  Created by IntelliJ IDEA.
  User: BW_bear
  Date: 2019/6/10
  Time: 0:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>courseapprpval</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/courseapprpval/styles.css" type="text/css" rel="stylesheet"/>
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
    <script src="files/courseapprpval/data.js"></script>
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
                url: "http://localhost:9999/api/user/course/passUserCourse",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify({
                    "userCourseIdStr": idStr
                }),
                success: function(data){
                    alert("批准申请");
                    window.location.href = "courseapprpval";
                }
            });
        }
        function reject(idStr){
            $.ajax({
                url: "http://localhost:9999/api/user/course/rejectUserCourse",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=UTF-8",
                data: JSON.stringify({
                    "userCourseIdStr": idStr
                }),
                success: function(data){
                    alert("驳回申请");
                    window.location.href = "courseapprpval";
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
                url: "http://localhost:9999/api/user/course/selectUserCourseWail",
                type: "GET",
                dataType: "json",
                success: function(data){
                    var k=data.count;
                    var list = data.userCourseList;
                    var m=0;
                    var lsh = "";
                    var mc = "";
                    var rs = "";
                    var sqrxx = "";
                    var cz = "";
                    for(;m<k;m++){
                        lsh+="<tr><td>"+list[m].userCourseIdStr+"</td></tr>";
                        mc+="<tr><td>"+list[m].courseName+"</td></tr>";
                        rs+="<tr><td>"+list[m].number+"</td></tr>";
                        sqrxx+="<tr><td>"+list[m].userName+":"+list[m].telephone+"</td></tr>";
                        if(list[m].state==0){
                            cz+="<tr><td><button onclick='pass(\""+list[m].userCourseIdStr+"\")'>批准</button></td><td><button onclick='reject(\""+list[m].userCourseIdStr+"\")'>驳回</button></td></tr>";
                        }
                        else if(list[m].state==1){
                            cz+="<tr><td>已通过</td><td></td></tr>";
                        }
                        else if(list[m].state==-1){
                            cz+="<tr><td>已驳回</td><td></td></tr>";
                        }

                    }
                    $("#lsh").html(lsh);
                    $("#mc").html(mc);
                    $("#rs").html(rs);
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
      <div id="u353" class="ax_default" data-width="1530" data-height="710">

        <!-- Unnamed (矩形) -->
        <div id="u354" class="ax_default shape">
          <div id="u354_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u355" class="text">
            <p><span>`</span></p>
          </div>
        </div>

        <!-- Unnamed (矩形) -->
        <div id="u356" class="ax_default box_1">
          <div id="u356_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u357" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u358" class="ax_default" data-width="1530" data-height="354">

        <!-- Unnamed (组合) -->
        <div id="u359" class="ax_default" data-width="272" data-height="354">

          <!-- Unnamed (矩形) -->
          <div id="u360" class="ax_default box_1">
            <div id="u360_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u361" class="text">
              <p><span>z</span></p>
            </div>
          </div>

          <!-- Unnamed (组合) -->
          <div id="u362" class="ax_default" data-width="272" data-height="307">

            <!-- Unnamed (组合) -->
            <div id="u363" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="zgsq">
              <div id="u364" class="ax_default box_2">
                <div id="u364_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u365" class="text">
                  <p><span>资格申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u366" class="ax_default image">
                <img id="u366_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u367" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u368" class="ax_default image">
                <img id="u368_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u369" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u370" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsq">
              <div id="u371" class="ax_default box_2">
                <div id="u371_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u372" class="text">
                  <p><span>私人培训班申请</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u373" class="ax_default image">
                <img id="u373_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u374" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u375" class="ax_default image">
                <img id="u375_img" class="img " src="images/home/u63.png"/>
                <!-- Unnamed () -->
                <div id="u376" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u377" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="zgsp">
              <div id="u378" class="ax_default box_2">
                <div id="u378_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u379" class="text">
                  <p><span>资格审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u380" class="ax_default image">
                <img id="u380_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u381" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u382" class="ax_default image">
                <img id="u382_img" class="img " src="images/home/u70.png"/>
                <!-- Unnamed () -->
                <div id="u383" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u384" class="ax_default" data-width="272" data-height="54">

              <!-- Unnamed (矩形) -->
              <div id="pxbsp">
              <div id="u385" class="ax_default box_2">
                <div id="u385_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u386" class="text">
                  <p><span>私人培训班审批</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u387" class="ax_default image">
                <img id="u387_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u388" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u389" class="ax_default image">
                <img id="u389_img" class="img " src="images/home/u77.png"/>
                <!-- Unnamed () -->
                <div id="u390" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>

            <!-- Unnamed (组合) -->
            <div id="u391" class="ax_default" data-width="272" data-height="52">

              <!-- Unnamed (矩形) -->
              <div id="home">
              <div id="u392" class="ax_default box_2">
                <div id="u392_div" class=""></div>
                <!-- Unnamed () -->
                <div id="u393" class="text">
                  <p><span>首页</span></p>
                </div>
              </div>
              </div>
              <!-- Unnamed (图片) -->
              <div id="u394" class="ax_default image">
                <img id="u394_img" class="img " src="images/home/u54.png"/>
                <!-- Unnamed () -->
                <div id="u395" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>

              <!-- Unnamed (图片) -->
              <div id="u396" class="ax_default image">
                <img id="u396_img" class="img " src="images/home/u56.png"/>
                <!-- Unnamed () -->
                <div id="u397" class="text" style="display:none; visibility: hidden">
                  <p><span></span></p>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u398" class="ax_default" data-width="1258" data-height="45">

          <!-- Unnamed (矩形) -->
          <div id="u399" class="ax_default box_2">
            <div id="u399_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u400" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u401" class="ax_default" data-width="1258" data-height="38">

        <!-- Unnamed (组合) -->
        <div id="u402" class="ax_default" data-width="1258" data-height="38">

          <!-- Unnamed (矩形) -->
          <div id="u403" class="ax_default shape">
            <div id="u403_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u404" class="text" style="display:none; visibility: hidden">
              <p><span></span></p>
            </div>
          </div>
        </div>
      </div>

      <!-- Unnamed (组合) -->
      <div id="u405" class="ax_default" data-width="1207" data-height="436">

        <!-- Unnamed (矩形) -->
        <div id="u406" class="ax_default flow_shape">
          <div id="u406_div" class=""></div>
          <!-- Unnamed () -->
          <div id="u407" class="text" style="display:none; visibility: hidden">
            <p><span></span></p>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u408" class="ax_default" data-width="1207" data-height="64">

          <!-- Unnamed (矩形) -->
          <div id="u409" class="ax_default shape">
            <div id="u409_div" class=""></div>
            <!-- Unnamed () -->
            <div id="u410" class="text">
              <p><span>私人培训班申请列表</span></p>
            </div>
          </div>
        </div>

        <!-- Unnamed (组合) -->
        <div id="u411" class="ax_default" data-width="0" data-height="0">
        </div>
      </div>

      <!-- Unnamed (表格) -->
      <div id="u412" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u413" class="ax_default table_cell">
          <img id="u413_img" class="img " src="images/courseapprpval/u413.png"/>
          <!-- Unnamed () -->
          <div id="u414" class="text">
            <p><span>私人培训班申请流水号</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u415" class="ax_default table_cell">
          <img id="u415_img" class="img " src="images/courseapprpval/u413.png"/>
          <!-- Unnamed () -->
          <div id="u416" class="text">
            <p><span>培训班名称</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u417" class="ax_default table_cell">
          <img id="u417_img" class="img " src="images/courseapprpval/u413.png"/>
          <!-- Unnamed () -->
          <div id="u418" class="text">
            <p><span>培训班预计人数</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u419" class="ax_default table_cell">
          <img id="u419_img" class="img " src="images/courseapprpval/u413.png"/>
          <!-- Unnamed () -->
          <div id="u420" class="text">
            <p><span>申请人信息</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u421" class="ax_default table_cell">
          <img id="u421_img" class="img " src="images/courseapprpval/u421.png"/>
          <!-- Unnamed () -->
          <div id="u422" class="text">
            <p><span>操作</span></p>
          </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u423" class="ax_default table_cell">
          <table id="lsh">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u425" class="ax_default table_cell">
          <table id="mc">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u427" class="ax_default table_cell">
          <table id="rs">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u429" class="ax_default table_cell">
          <table id="sqrxx">

          </table>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u431" class="ax_default table_cell">
          <table id="cz">

          </table>
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
