<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let marker_detail = {
        init:function(){
            $('#register_btn').click(function(){
                marker_detail.send();
            });
            $('#delete_btn').click(function(){
               var c = confirm('삭제 하시겠습니까');
               if(c == true){
                   location.href='/marker/deleteimpl?id=${gitem.id}';
               };

            });
        },
        send:function(){
            $('#register_form').attr({
                method:'post',
                action:'/marker/updateimpl',
                enctype: 'multipart/form-data'
            });
            $('#register_form').submit();
        }
    };

    $(function(){
        marker_detail.init();
    });
</script>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Marker Detail</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">${gmarker.id}</h6>
        </div>
        <div class="card-body">
            <div id="container">
                <form id="register_form" class="form-horizontal well">
                    <input type="hidden" name="id" value="${gmarker.id}">
                    <input type="hidden" name="imgname" value="${gmarker.img}">

                    <div class="form-group">
                        <div class="col-sm-10">
                            <img src="/uimg/${gmarker.img}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="title">title:</label>
                        <div class="col-sm-10">
                            <input type="text" name="title" class="form-control" id="title" value="${gmarker.title}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="target">target:</label>
                        <div class="col-sm-10">
                            <input type="text" name="target" class="form-control" id="target" value="${gmarker.target}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lat">Latitude:</label>
                        <div class="col-sm-10">
                            <input type="text" name="lat" class="form-control" id="lat" value="${gmarker.lat}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lng">Longitude:</label>
                        <div class="col-sm-10">
                            <input type="text" name="lng" class="form-control" id="lng" value="${gmarker.lng}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="loc">Location:</label>
                        <div class="col-sm-10">
                            <input type="text" name="loc" class="form-control" id="loc" value="${gmarker.loc}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="mimg">Image:</label>
                        <div class="col-sm-10">
                            <input type="file" name="mimg" class="form-control" id="mimg" placeholder="Input image">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button id="register_btn" type="button" class="btn btn-info">Update</button>
                            <button id="delete_btn" type="button" class="btn btn-info">Delete</button>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </div>
</div>
