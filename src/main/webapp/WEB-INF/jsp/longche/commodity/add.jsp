<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<t:base type="default,select2,icheck"></t:base>
<script src="<%=basePath%>static/ckeditor/ckeditor.js"></script>
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
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">商品缩略图*：</label>
                                <div class="col-sm-8">
                                    <input id="thumbnail" name="thumbnail"  maxlength="20" type="type" class="form-control" required="" value="${commodity.thumbnail }">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">商品图片*：</label>
                                <div class="col-sm-8">
                                    <input id="picture" name="picture"  maxlength="20" type="type" class="form-control" required="" value="${commodity.picture }">
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
	
	
    </script>
</html>

