<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<t:base type="default,select2,icheck"></t:base>
<script src="<%=basePath%>static/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/webuploader/webuploader.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>static/webuploader/style.css">
<script src="<%=basePath%>static/webuploader/webuploader.js"></script>

</head>
<body class="gray-bg">
	<div class="wrapper wrapper-content animated fadeInRight">
		<div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
					<div class="ibox-content">
						<t:formvalid action="commodity/save" beforeSubmit="beforeSubmit">
							<input type="hidden" name="id" id="id" value="${commodity.id }">
							<div class="form-group">
                                <label class="col-sm-3 control-label">商品分类*：</label>
                                <div class="col-sm-8">
                                    <input id="type" name="type"  maxlength="20" type="type" class="form-control" required="" value="${commodity.type }">
                                </div>
                            </div>
							
							<div class="form-group">
                                <label class="col-sm-3 control-label">商品名称*：</label>
                                <div class="col-sm-8">
                                    <input id="name" name="name"  maxlength="20" type="type" class="form-control" required="" value="${commodity.name }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">商品简介*：</label>
                                <div class="col-sm-8">
                                    <input id="introduction" name="introduction"  maxlength="20" type="type" class="form-control" required="" value="${commodity.introduction }">
                                </div>
                            </div>
                            
                            <%-- <div class="form-group">
                                <label class="col-sm-3 control-label">商品缩略图*：</label>
                                <div class="col-sm-8">
                                    <input id="thumbnail" name="thumbnail"  type="hidden"  value="${commodity.thumbnail }"> 
                                    <!--dom结构部分-->
									<div id="uploader-demo">
									    <!--用来存放item-->
									    <div id="fileList" class="uploader-list"></div>
									    <div id="filePicker">选择图片</div>
									</div>
                                </div>
                            </div> --%>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">商品图片*：</label>
                                <div class="col-sm-8">
                                    <input id="picture" name="picture"  type="text" class="form-control"  value="${commodity.picture }">
                                    <div id="wrapper">
								        <div id="container">
								            <!--头部，相册选择和格式选择-->
								
								            <div id="uploader">
								                <div class="queueList">
								                    <div id="dndArea" class="placeholder">
								                        <div id="filePicker"></div>
								                        <p>或将照片拖到这里，单次最多可选10张</p>
								                    </div>
								                </div>
								                <div class="statusBar" style="display:none;">
								                    <div class="progress">
								                        <span class="text">0%</span>
								                        <span class="percentage"></span>
								                    </div><div class="info"></div>
								                    <div class="btns">
								                        <div id="filePicker2"></div><div class="uploadBtn">开始上传</div>
								                    </div>
								                </div>
								            </div>
								        </div>
								    </div>
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">运费设置*：</label>
                                <div class="col-sm-8">
                                    <input id="freight" name="freight"  maxlength="20" type="type" class="form-control" required="" value="${commodity.freight }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">规格*：</label>
                                <div class="col-sm-8">
                                    <input id="specification" name="specification"  maxlength="20" type="type" class="form-control" required="" value="${commodity.specification }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">库存*：</label>
                                <div class="col-sm-8">
                                    <input id="repertory" name="repertory"  type="type" class="form-control" required="" value="${commodity.repertory }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">价格*：</label>
                                <div class="col-sm-8">
                                    <input id="price" name="price"    type="type" class="form-control" required="" value="${commodity.price }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">优惠劵*：</label>
                                <div class="col-sm-8">
                                    <input id="couponId" name="couponId"  maxlength="20" type="type" class="form-control" required="" value="${commodity.couponId }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">图文详情：</label>
                                <div class="col-sm-8">
                                	<input type="hidden" id="particulars" name="particulars" value="${commodity.particulars }">
                                    <textarea rows="10" id="editor1" name="editor1" class="form-control">${commodity.particulars }</textarea>
                                    <script>
						                // Replace the <textarea id="editor1"> with a CKEditor 4
						                // instance, using default configuration.
						                CKEDITOR.replace( 'editor1' );
						                
						            </script>
                                </div>
                            </div>
						</t:formvalid>
                    </div>
				</div>
			</div>
		</div>
	</div>
</body>

<script>
       function beforeSubmit(){
    	   var content = CKEDITOR.instances.editor1.getData(); //获取editor1的值
    	   $("#particulars").val(content)
    	  // alert(content)
    	   return true;
       }

   	  var BASE_URL = "<%=basePath%>";
      <%--  var $list=$("#fileList");
	   var BASE_URL = "<%=basePath%>";
	   var thumbnailWidth = 150;
	   var thumbnailHeight = 150;
	   //alert(BASE_URL);
       var uploader = WebUploader.create({
    		// 选完文件后，是否自动上传。
    	    auto: true,
    	    // swf文件路径
    	    swf: BASE_URL + 'static/webuploader/Uploader.swf',
    	    // 文件接收服务端。
    	    server: BASE_URL + 'fileUploaderController/fileupload',
    	    // 选择文件的按钮。可选。
    	    // 内部根据当前运行是创建，可能是input元素，也可能是flash.
    	    pick: '#filePicker',
    	    //限制只能上传一个文件
            fileNumLimit: 1,
             // 不压缩image, 默认如果是jpeg，文件上传前会压缩一把再上传！
            resize: false,
    	    accept: {
    	        title: 'Images',
    	        extensions: 'gif,jpg,jpeg,bmp,png',
    	        mimeTypes: 'image/*'
    	    }
	       disableGlobalDnd: true,
	       fileNumLimit: 300,
	       fileSizeLimit: 200 * 1024 * 1024,    // 200 M
	       fileSingleSizeLimit: 50 * 1024 * 1024    // 50 M
    	});
       
       uploader.on( 'fileQueued', function( file ) {
    	    var $li = $(
    	            '<div id="' + file.id + '" class="file-item thumbnail" style="width:150">' +
    	                '<img>' +
    	                '<div class="info">' + file.name + '</div>' +
    	            '</div>'
    	            ),
    	        $img = $li.find('img');


    	    // $list为容器jQuery实例
    	    $list.empty().append( $li );

    	    // 创建缩略图
    	    // 如果为非图片文件，可以不用调用此方法。
    	    // thumbnailWidth x thumbnailHeight 为 100 x 100
    	    uploader.makeThumb( file, function( error, src ) {
    	        if ( error ) {
    	            $img.replaceWith('<span>不能预览</span>');
    	            return;
    	        }
		
    	        $img.attr( 'src', src );
    	    }, thumbnailWidth, thumbnailHeight );
    	});
    	
       // 文件上传成功，给item添加成功class, 用样式标记上传成功。
       uploader.on( 'uploadSuccess', function( file,response) {
           $( '#'+file.id ).addClass('upload-state-done');
          // alert("上传成功了:"+response.filePath)
           $("#thumbnail").val(response.filePath);
           
       });

       // 文件上传失败，显示上传出错。
       uploader.on( 'uploadError', function( file ) {
           var $li = $( '#'+file.id ),
               $error = $li.find('div.error');

           // 避免重复创建
           if ( !$error.length ) {
               $error = $('<div class="error"></div>').appendTo( $li );
           }
           $error.text('上传失败');
       });

       // 完成上传完了，成功或者失败，先删除进度条。
       uploader.on( 'uploadComplete', function( file ) {
           $( '#'+file.id ).find('.progress').remove();
       }); --%>
    </script>
    <script src="<%=basePath%>static/webuploader/upload.js"></script>
</html>

