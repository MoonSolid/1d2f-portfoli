<%@page import="java.util.List"%>
<%@page import="com.portfoli.domain.Notice"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

  <div class="container-fluid">

    <div class="row">
<!--------------------------------------- nav bar ----------------------------------------------->
  <jsp:include page="../member/sidebar.jsp"/>
<!--------------------------------------- nav bar ----------------------------------------------->

<!-------------------------------------------- 컨텐츠부분 -------------------------------------------->

<!-- 
<button class="btn btn-outline-secondary btn-pill btn-sm" 
        onclick="location.href='form'">리스트형</button>
<button class="btn btn-outline-secondary btn-pill btn-sm" 
        onclick="location.href='form'">네모형</button>
 -->


<div class="container" style="width: 65%;">
    <div class="portlet mt--20"  >

      <div class="portlet-header">
        <h1 class="d-none d-lg-block m--3">내 포트폴리오 관리</h1>
        <div align="right">
          <button class="btn btn-outline-secondary btn-pill btn-sm" 
                  onclick="location.href='form'">글쓰기(+)</button>
        </div>
      </div>

      <div class="table-responsive rounded" style="min-height: 500px; margin-top: -280px;">

        <table class="table m-0">
          <thead>
            <tr>
              <th class="b-0" style="font-size: large;">순번</th>
              <th class="b-0" style="font-size: large;">제목</th>
              <th class="b-0 w--150" style="font-size: large;">등록일</th>
              <th class="b-0 w--200" style="font-size: large">추천수</th>
              <th class="b-0 w--100" style="font-size: large;">조회수</th>
            </tr>
          </thead>
                
          <tbody>
            <c:forEach items="${list}" var="item" varStatus="status">
  
            <tr 
  data-href="detail?number=${item.number}" 
  data-ajax-modal-size="modal-xl" 
  data-ajax-modal-centered="true" 
  data-ajax-modal-callback-function=""
  data-ajax-modal-backdrop="" 
  class="js-ajax-modal ">
              <td>${status.getCount()}</td>
              <td>${item.title}</td>
              <td>${item.registeredDate}</td>
              <td>${item.getRecommendedCount()}</td>
              <td>${item.viewCount}</td>
            </tr>
            
            </c:forEach>
          </tbody>
        </table>
        
      </div>
    </div>



<div class="row" style="margin-top: -280px;">
  <c:forEach items="${list}" var="item">
<a href="#"
  data-href="detail?number=${item.number}" 
  data-ajax-modal-size="modal-xl" 
  data-ajax-modal-centered="true" 
  data-ajax-modal-callback-function=""
  data-ajax-modal-backdrop="" 
  class="js-ajax-modal ">
<!-- 테스트코드 -->
  <div class="col-12 col-lg-4 mb-4 cursor" style="max-width:300px; max-height:300px;">
    <div class="card b-0 shadow-md shadow-lg-hover transition-all-ease-250 transition-hover-top h-100 bg-cover overlay-dark overlay-opacity-4 text-white"
    <c:if test="${item.thumbnail != null}">
           style="background-image: url('../../upload/portfolio/${item.thumbnail}_300x300.jpg');">
    </c:if>
    <c:if test="${item.thumbnail == null}">
           style="background-image: url('../../resources/assets/images/background/black.png');">
    </c:if>
    
    <!-- 제목, 아이디 -->
      <div class="card-body font-weight-light mt--60">
        <div class="d-table">
          <div class="d-table-cell align-bottom">
            <p>
              ${item.title}
            </p>
            <p class="text-warning fs--13">
              ${item.member.id}
            </p>
          </div>
        </div>
      </div>
    <!-- 제목, 아이디 -->

    <!-- 카드하단 -->
      <div class="card-footer bg-transparent b-0">
        <hr class="border-light opacity-2">
        
        <span class="float-end fs--14 p-2">
          ${item.getRecommendedCount()}
        </span>
        <a href="#" class="btn btn-sm btn-warning opacity-8">
          ${item.getViewCount()}
        </a>
      </div>
    <!-- 카드하단 -->
    
      </div>
    </div>
    </a>
    </c:forEach>
</div>
    
</div>
<!-------------------------------------------- 컨텐츠부분 -------------------------------------------->
<!-------------------------------------------- 페이징부분 -------------------------------------------->
  <div class="col-12 col-xl-12">
   <nav aria-label="pagination">
     <ul class="pagination pagination-pill justify-content-end justify-content-center justify-content-md-end">
    
            <!-- prev부분 -->
       <c:if test="${pagination.curPage == 1}"> 
         <li class="page-item disabled btn-pill" data-page="prev">
         <a class="page-link" href="#" tabindex="-1" aria-disabled="true" onClick="fn_paging(1)">Prev</a></li>
       </c:if>
       <c:if test="${pagination.curPage != 1}"> 
         <li class="page-item" data-page="prev">
         <a class="page-link" href="#" tabindex="-1" aria-disabled="true" onClick="fn_paging('${pagination.prevPage}')">Prev</a></li>
       </c:if>
  
            <!-- 중간 numbering 부분 -->
      <c:forEach var="pageNum" begin="${pagination.startPage}" end="${pagination.endPage}">
        <c:if test="${pageNum == pagination.curPage}">
          <li class="page-item active" data-page="${pageNum}">
            <a class="page-link" href="list?curPage=${pageNum}">${pageNum}</a>
          </li>
        </c:if>
        <c:if test="${pageNum != pagination.curPage}">
          <li data-page="${pageNum}">
            <a class="page-link" href="list?curPage=${pageNum}">${pageNum}</a>
          </li>
        </c:if>
      </c:forEach>
      
            <!-- next 부분 -->
        <c:if test="${pagination.curPage != pagination.rangeCnt && pagination.rangeCnt > 0}">
          <li class="page-item disabled btn-pill" data-page="next">
            <a class="page-link" onClick="fn_paging('${pagination.nextPage}')" href="#">Next</a> 
          </li>
        </c:if>
        <c:if test="${pagination.curPage == pagination.rangeCnt}"> 
          <li class="page-item" data-page="next">
            <a class="page-link" onClick="fn_paging('${pagination.nextPage}')" href="#">Next</a> 
          </li>
        </c:if>
      </ul>
     </nav>
    </div>
</div>
</div>
<!-------------------------------------------- 페이징부분 -------------------------------------------->
  <script>
  function fn_paging(curPage) {
    location.href = "list?curPage=" + curPage;
    }
  </script>
  <style>
    .cursor {
      cursor: pointer;
    }
    .padding10_0{
      padding: 10px 0px;
    }
    .padding10_10{
      padding: 10px 10px;
    }
    .padding5_5{
      padding: 5px 5px;
    }
  </style>