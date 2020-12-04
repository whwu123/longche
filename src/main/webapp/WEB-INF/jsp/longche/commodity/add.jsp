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
                                <div class="col-sm-8" id="pictureList">
                                    <input id="picture" name="picture"  type="hidden" class="form-control"  value="${commodity.picture }">
                                    <div id="wrapper">
								        <div id="container" style="margin-top: 0px;">
								            <!--头部，相册选择和格式选择-->
								
								            <div id="uploader">
								                <div class="queueList">
								                    <div id="dndArea" class="placeholder">
								                        <div id="filePicker"></div>
								                        <p>或将照片拖到这里，单次最多可选5张</p>
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
       
       function splitSublimted(str) {
    		var strs= new Array(); //创建一个数组
    		var ydms='';
    		strs=str.split(","); //以“|”为标志分割
    		for (i=0;i<strs.length ;i++ ) { 
    			ydms=strs[0]; //取值
    		} 
    		return ydms;
       }
   	  	 var BASE_URL = "<%=basePath%>";
   	  	 var pictureListValue = $("#picture").val();
   	     var getFileBlob = function (url, cb) {
   	     var xhr = new XMLHttpRequest();
	   	   xhr.open("GET", url);
	   	   xhr.responseType = "blob";
	   	   xhr.addEventListener('load', function() {
	   	   cb(xhr.response);
	   	   });
	   	   xhr.send();
	   	 };
	   
	   	 var blobToFile = function (blob, name) {
		   	   blob.lastModifiedDate = new Date();
		   	   blob.name = name;
		   	   return blob;
	   	 };

	   	 var getFileObject = function(filePathOrUrl, cb) {
	   	   getFileBlob(filePathOrUrl, function (blob) {
	   		  if(filePathOrUrl!= null && filePathOrUrl!=""){
		   	      cb(blobToFile(blob, 'test.jpg'));
	   		  }
	   	   });
	   	 };
   	  	 var addId = $("#id").val();
   	  	 if(addId !=null && addId != "" ){
   	  	 	//需要编辑的图片列表
   			var picList = pictureListValue.split(",");
   			$.each(picList, function(index,item){
   			  	getFileObject(item, function (fileObject) {
   			    var wuFile = new WebUploader.Lib.File(WebUploader.guid('rt_'),fileObject);
   			    var file = new WebUploader.File(wuFile);
   			    uploader.addFiles(file)
   			  })
   			});
   	  		 
   	  	 }
   		function removeLongche(file){
	   		var arr = ['a','b','c','d']; 
	   		arr.splice(1,1); 
	   		//console.log(arr); 
	   		
	   		var picList = new Array();
  	    	picList = pictureListValue.split(",");
  	    	var hah =picList[1];
  	    	var str = file.id
  	        var falg = str.substr(str.length-1,1)
  	        if(falg == 0){
  	        	picList.splice(1,1); 
  	        }else if(falg == 1 ){
  	        	picList.splice(2,1); 
  	        }else if(falg == 2 ){
  	        	picList.splice(3,1); 
  	        }else if(falg == 3 ){
  	        	picList.splice(4,1); 
  	        }else if(falg == 4 ){
  	        	picList.splice(5,1); 
  	        }
  	    	//alert(picList);
  	    	$("#picture").val(picList);
  	        
  	    
  	    }
    </script>
    <script src="<%=basePath%>static/webuploader/upload.js"></script>
</html>

