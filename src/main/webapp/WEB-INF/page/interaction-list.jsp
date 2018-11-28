<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>反馈列表</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/static/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/static/css/layout.css" rel="stylesheet">
  </head>

  <body>

    <!-- 头部 -->
    <jsp:include page="header.jsp"/>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
          <jsp:include page="navibar.jsp"/>
         </div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
          <h1 class="page-header">反馈列表</h1>
          <div class="row placeholders">
            <div>
                <button type="button" class="btn btn-warning delete-query" data-toggle="modal" data-target="#delete-confirm-dialog">删除所选</button>
                <!--  删除所选对话框 -->
                <div class="modal fade " id="delete-confirm-dialog" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel">
                  <div class="modal-dialog modal-sm" role="document">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" >警告</h4>
                      </div>
                      <div class="modal-body">
                             确认删除所选反馈吗
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                        <button type="button" class="btn btn-primary delete-selected-confirm">确认</button>
                      </div>
                    </div>
                  </div>
                </div> 
            </div>
            <div class="space-div"></div>
            <table class="table table-hover table-bordered interaction-list">
              <tr>
                  <td><input type="checkbox" class="select-all-btn"/></td>
                    <td>ID</td>
                    <td>姓名</td>
                    <td>电话</td>
                    <td>邮箱</td>
                    <td>内容</td>
                    <td>时间</td>
                    <td>操作</td>
                </tr>
                <c:forEach items="${interactions }" var="interaction">
                  <tr>
                    <td><input type="checkbox" name="interactionIds" value="${interaction.iId }"/></td>
                    <td class="interactionid">${interaction.iId }</td>
                    <td class="interactionname">${interaction.iName }</td>
                    <td class="interactionphone">${interaction.iPhone }</td>
                    <td class="interactionemail">${interaction.iEmail }</td>
                    <td><a href="javascript:void(0);" class="show-interaction-content" >查看</a></td>
                    <td class="interactiondate">${interaction.iDate }</td>
                    <td>
                      <a class="glyphicon glyphicon-remove delete-this-interaction" aria-hidden="true" title="删除反馈" href="javascript:void(0);"></a>
                    </td>
                  </tr>
                </c:forEach>
            </table>
          </div>          
        </div>
    </div>
    <!-- 提示框 -->
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/js/bootstrap.min.js"></script>
    <script>

      //删除多个反馈
    $(".delete-selected-confirm").click(function(){
      $("#delete-confirm-dialog").modal("hide");
      var cbs=$("input[name='interactionIds']:checked")
      if(cbs.length===0){
        showTips("没有选中任意项！");
      }else{
        var interactionids=new Array();
        $.each(cbs,function(i,cb){
          interactionids[i]=cb.value;
        });
        //请求删除所选反馈
        $.ajax({
          url:"deletemore.html",
          data:{interactionIds:interactionids},
          type:"POST",
          traditional:true,
          success:function(){
            cbs.parent().parent().remove();
            showTips("删除所选成功！");
          }
        });
      }
    });

    $(".interaction-list").on("click",".show-interaction-content",function(){
      var interactionId=$(this).parents("tr").find(".interactionid").html();
      var interactionTd=$(this).parent();
      //请求查看反馈内容
      $.ajax({
        url:"getinteraction.html",
        data:{interactionId:interactionId},
        type:"POST",
        dataType:"json",
        success:function(data){
          interactionTd.html("");
          var content=data.iContent;
          interactionTd.append(content);
        }
      });
    });
    //删除反馈
    $(".interaction-list").on("click",".delete-this-interaction",function(){
      var interactionTr=$(this).parents("tr");
      var interactionid=interactionTr.find(".interactionid").html();
      if(confirm('确认删除ID为"'+interactionid+'"的反馈吗？')){
        //请求删除该反馈
        $.ajax({
          url:"delete.html",
          data:{interactionId:interactionid},
          type:"POST",
          success:function(){
            interactionTr.remove();
            showTips("删除成功！");
          }
        });
      }
    });
    </script>
  </body>
</html>
