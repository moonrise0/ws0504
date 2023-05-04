<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #item_img{
        width:80px;
    }
</style>
<!-- Begin Page Content -->
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">Item All</h1>
    <!-- Page Heading -->



        <!-- DataTales Example -->
        <div class="card shadow mb-4">
            <form class="card-header py-3">

                <h6 class="m-0 font-weight-bold text-primary">Item All</h6>

            </form>
        </div>



    <form id="search_form" class="form-inline well">
        <div class="form-group">
            <label class="control-label col-sm-2">Name</label>
            <div class="col-sm-2">
                <input type="text" name="img" class="form-control" id="Name" placeholder="Enter name">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2" for="price"> Price</label>
            <div class="col-sm-10">
                <input type="text" name="title" class="form-control" id="price" placeholder="Enter price"
                       value="${ms.price}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-2">
                <button id="register_btn" type="button" class="btn btn-info">Search</button>
            </div>
        </div>
    </form>
</div>


        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>IMG</th>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PRICE</th>
                        <th>RDATE</th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>IMG</th>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>PRICE</th>
                        <th>RDATE</th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach var="obj" items="${clist}">
                        <tr>
                            <td>
                                <a href="#" data-toggle="modal" data-target="#target${obj.id}">
                                    <img id="item_img" src="/uimg/${obj.imgname}">
                                </a>
                            </td>
                            <td><a href="/item/detail?id=${obj.id}">${obj.id}</a></td>
                            <td>${obj.name}</td>
                            <td><fmt:formatNumber type="number" pattern="###,###원" value="${obj.price}" /></td>
                            <td><fmt:formatDate   pattern="yyyy-MM-dd:hh-mm-ss" value="${obj.rdate}"/></td>
                        </tr>

                        <!-- Modal -->
                        <div id="target${obj.id}" class="modal fade" role="dialog">
                            <div class="modal-dialog">

                                <!-- Modal content-->
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h4 class="modal-title">Detail Image</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>${obj.name}</p>
                                        <img src="/uimg/${obj.imgname}">

                                    </div>
                                    <div class="modal-footer">
                                        <a href="/item/detail?id=${obj.id}" class="btn btn-info" role="button">Detail</a>
                                        <a href="#" class="btn btn-info" data-dismiss="modal" role="button">Close</a>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>
<!-- /.container-fluid -->
