<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<script src="/resources/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.ui.widget.js"></script>
<link href="/resources/assets/plugins/fancyuploder/fancy_fileupload.css" rel="stylesheet">
<link href="/resources/assets/plugins/fileuploads/css/fileupload.css" rel="stylesheet" type="text/css">
<!-- Select2 css -->
<link href="/resources/assets/plugins/select2/css/select2.min.css" rel="stylesheet">
<!-- DATA TABLE CSS -->
<link href="/resources/assets/plugins/datatable/css/dataTables.bootstrap5.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/buttons.bootstrap5.min.css" rel="stylesheet">
<link href="/resources/assets/plugins/datatable/css/responsive.bootstrap5.css" rel="stylesheet">
<style>
  #chkAll {
    position: absolute;
    top: 10.5px;
  }
  
  .tdchk{  
   	vertical-align: middle; 
   	text-align:center;  
   	padding-left:47px;
  }  
</style>
<!-- Page Header --> 
<div >
<sec:authentication property="principal.employeeVO.empCd" var="prcEmpCd"/>
<sec:authentication property="principal.employeeVO.depCd" var="prcDepCd"/>
<input type="hidden" name="company" value="company"/>
		<div>
			<button type="button" id="${stat.count}" class="btn ripple btn-danger btn delbtn">삭제</button>
			<button type="button" id="${stat.count}" class="btn aaa btn-primary btn downloadbtn" ><i class="fe fe-download"></i> 다운로드</button>
		</div>
		<hr>
</div>
<!-- End Page Header -->
<div class="tab-pane table-responsive" id="tabCont2">
	<div id="example1_wrapper"
		class="dataTables_wrapper dt-bootstrap5 no-footer">
		
		<div class="row">
			<div class="col-sm-12">
				<table
					class="table table-bordered border-bottom dataTable no-footer table-striped"
					id="example3" role="grid" aria-describedby="example1_info">
					<thead>
						<tr role="row">
							<th style="width: 1%;text-align:center;"><input type="checkbox" name="chkAll" id="chkAll" value="${totalRefeVO.refeCd}" /></th>
							<th class="wd-25p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Position: activate to sort column ascending"
								style="width: 25%;text-align:center;">파일명</th>
							<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Office: activate to sort column ascending"
								style="width: 5%;text-align:center;">등록자</th>
							<th class="wd-15p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Age: activate to sort column ascending"
								style="width:5%;text-align:center;">등록일시</th>
							<th class="wd-20p sorting" tabindex="0" aria-controls="example1"
								rowspan="1" colspan="1"
								aria-label="Salary: activate to sort column ascending"
								style="width: 5%;text-align:center;">조회 수</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach var="totalRefeVO" items="${totalRefeVOList}" varStatus="stat">
					<c:set var = "name" value = "${totalRefeVO.refeCd}"/>
					<c:set var = "refeName" value = "${fn:substring(name, 0, 3)}" />
					<c:if test="${refeName eq 'R01'}">
							<input type="hidden" id="refeCd${stat.count}" name="refeCd" value="${totalRefeVO.refeCd}"/>
							<input type="hidden" class="refeFileNm" id="refeFileNm${stat.count}" name="refeFileNm" value="${totalRefeVO.refeFileNm}"/> 
							<td class="tdchk"><input type="checkbox" name="chkList" id="chkbox" value="${totalRefeVO.refeCd}"/></td>
							<td><a href="/reference/detail?refeCd=${totalRefeVO.refeCd}">${totalRefeVO.refeFileOrgNm}</a></td>
							<td>${totalRefeVO.employeeVOList[0].empNm}</td>
							<td><fmt:formatDate value="${totalRefeVO.regTi}" pattern="yy년MM월dd일  hh시mm분"/></td>
							<td><fmt:formatNumber value='${totalRefeVO.viewCnt}' pattern='#,###' /></td>
						</tr>
					</c:if>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>
<form action="/reference/downloadZipFile" id="frm2" method="post">
	<div class="input-group date"> 
		<input type="hidden" name="refeCd" id="refeCd" class="form-control" value="" />
	</div>
	<sec:csrfInput/>
</form>
<div>
	<div>파일을 마우스로 끌어놓거나 클릭하여 선택하세요.</div>
    <input id="thefiles" type="file" name="files"
      accept="image/jpeg, image/png, text/html, application/zip, text/css, text/js, .pdf, .xls, .xlsx,.hwp"
      multiple="" class="ff_fileupload_hidden" >
    <div class="ff_fileupload_wrap ">
      <div class="ff_fileupload_dropzone_wrap" id="fileDrop" >
      </div>
      <table class="ff_fileupload_uploads"></table>
    </div>
</div>
<iframe id="ifrm" name="ifrm" style="display:none;"></iframe>
<script type="text/javascript">
$(document).ready(function() {
	$("#chkAll").click(function() {
		if($("#chkAll").is(":checked")) $("input[name=chkList]").prop("checked", true);
		else $("input[name=chkList]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chkList]").length;
		var checked = $("input[name=chkList]:checked").length;

		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
	});
});
</script>
<script type="text/javascript">
let header = "${_csrf.headerName}";
let token = "${_csrf.token}";
tokendata = {"header":header, "token":token};
let filecon = $("input[name=filecon]").val();
let refeNm = $("input[name=company]").val();
console.log("????: " + filecon);
$(function() {
   $('#thefiles').FancyFileUpload({
      url : '/reference/uploadAjaxAction',
      params : {
         action : 'fileuploader',
         edit :true,

      },
      Accept: 'application/json',
      startupload : function(SubmitUpload, e, data) {
    	  console.log("????: " + filecon);
          console.log("ddd:",data.originalFiles);
          console.log("data 체크: " , data.files);
          console.log("data 체크: " , data.files[0]);
          
           let formData = new FormData();
           for(let i=0; i<data.originalFiles.length; i++){
//             formData.append("filecon",filecon);      
            formData.append("uploadFile",data.originalFiles[i]);      
            formData.append("prcEmpCd","${prcEmpCd}");      
            formData.append("prcDepCd","${prcDepCd}");   
            formData.append("refeNm",refeNm);   
            }
          
            $.ajax({
                url:"/reference/uploadAjaxAction",
                processData:false,
                contentType:false,
                data:formData,
                dataType:"json",
                type:"post",
                beforeSend:function(xhr){
                   xhr.setRequestHeader(header,token);
                },
                success:function(result){
                   console.log("result: " + JSON.stringify(result));
                   if(result.status>0){
                           $('.ff_fileupload_fileinfo').text('complete');
                           $('.ff_fileupload_progress_bar').css('width', '100%');
                        }setTimeout(function(){
                           data.ff_info.RemoveFile();
                           location.href="/reference/companyAdmin";
                     },1500);
//                    if(result.status>0){//다중 insert 성공
//                       Toast.fire({
//                            icon: 'success',
//                            title: '등록 성공했어요!~!'
//                          })
//                    }else{//다중 insert 실패
//                       Toast.fire({
//                       icon:'error',
//                        title: '실---패----'
//                       })
//                    }
                }
          });
      }
   });
});

</script>
<script type="text/javascript">
$(function() {
	let header = "${_csrf.headerName}";
	let token = "${_csrf.token}";


	$("#chkAll").click(function() {
		if($("#chkAll").is(":checked")) $("input[name=chkList]").prop("checked", true);
		else $("input[name=chkList]").prop("checked", false);
	});

	$("input[name=chk]").click(function() {
		var total = $("input[name=chkList]").length;
		var checked = $("input[name=chkList]:checked").length;

		if(total != checked) $("#chkAll").prop("checked", false);
		else $("#chkAll").prop("checked", true); 
	});

$(".downloadbtn").on("click", function() {
	var chkBoxsave = [];
	 $("input:checkbox[name='chkList']:checked").each(function() {
		chkBoxsave.push($(this).val());
	  });
		console.log("chkBoxsave: " , chkBoxsave);
		console.log("AA: " + chkBoxsave.length);
		if(chkBoxsave.length==1){
			let selcnt = $(".selcount").attr("id");
			console.log("selcnt: "+ selcnt); 
         	let refeFileNm = $("#refeFileNm"+selcnt).val();
		  	console.log("refeFileNm: " + refeFileNm);
		    let data ={"refeFileNm":refeFileNm};
		    sessionStorage.setItem("refeFileNm",refeFileNm);
		    fn_download();
		}
		else{
			$("#refeCd").val(chkBoxsave);
			$("#frm2").submit();
		}
});


let refeNm = $("input[name=company]").val();
  $('#thefiles').FancyFileUpload({
     url : '/reference/uploadAjaxAction',
     params : {
        action : 'fileuploader',
        edit :true,
     },
     Accept: 'application/json',
     startupload : function(SubmitUpload, e, data) {
         console.log("ddd:",data.originalFiles);
         console.log("data 체크: " , data.files);
         console.log("data 체크: " , data.files[0]);
         let refeCon = $(".ff_fileupload_filecon");
         console.log("refeCon 체크: " , refeCon);
         console.log("refeNm 체크: " , refeNm);
          let formData = new FormData();
          for(let i=0; i<data.originalFiles.length; i++){
           formData.append("uploadFile",data.originalFiles[i]);      
           formData.append("refeCon",refeCon.eq(i).val());
           }
           formData.append("prcEmpCd","${prcEmpCd}");      
           formData.append("prcDepCd","${prcDepCd}");   
           formData.append("refeNm",refeNm);   
      
           $.ajax({
               url:"/reference/uploadAjaxAction",
               processData:false,
               contentType:false,
               data:formData,
               dataType:"json",
               type:"post",
               beforeSend:function(xhr){
                  xhr.setRequestHeader(header,token);
               },
               success:function(result){
                  console.log("result: " + JSON.stringify(result));
                  if(result.status>0){
                          $('.ff_fileupload_fileinfo').text('complete');
                          $('.ff_fileupload_progress_bar').css('width', '100%');
                       }setTimeout(function(){
                          data.ff_info.RemoveFile();
                          location.href="/reference/companyAdmin";
                    },1500);
//                    if(result.status>0){//다중 insert 성공
//                       Toast.fire({
//                            icon: 'success',
//                            title: '등록 성공했어요!~!'
//                          })
//                    }else{//다중 insert 실패
//                       Toast.fire({
//                       icon:'error',
//                        title: '실---패----'
//                       })
//                    }
               }
         });
     }
});


$(".delbtn").on("click", function() {
   var chkBoxArr = []; 
   $("input:checkbox[name='chkList']:checked").each(function() {
       chkBoxArr.push($(this).val());
   });
   console.log("chkBoxArr: " , chkBoxArr);
   var cnt = $("input:checkbox[name='chkList']:checked").length;
   if (cnt === 0) {
       alert("삭제할 항목을 선택해 주세요.");
   }
   if (cnt > 0) {
      let con = confirm("선택한 파일 "+ cnt + "개를 삭제하시겠습니까?");
      if(con==true){
         $.ajax({
            url:"/reference/deletePost",
            contentType:"application/json;charset=utf-8",
            data:JSON.stringify(chkBoxArr),
            type:"post",
            beforeSend:function(xhr){
               xhr.setRequestHeader(header,token);
            },
            success:(function(result){
               console.log("result: " + JSON.stringify(result))
               if(result.toLowerCase()=="ok"){
                  location.href="/reference/companyAdmin"
               }else{
                  alert("삭제가 되지 않았습니다.");
               }
            })
         });
      }
   }
});

function fn_download(){
   let refeFileNm = sessionStorage.getItem("refeFileNm");
   console.log("refeFileNm2 : " +  refeFileNm);
   let vIfrm = document.getElementById("ifrm");
   vIfrm.src = "/download?refeFileNm="+refeFileNm;
}
</script> 
<script type="text/javascript" src="/resources/js/jquery.fileupload.js"></script>
<script type="text/javascript" src="/resources/js/jquery.iframe-transport.js"></script>
<script type="text/javascript" src="/resources/js/jquery.fancy-fileupload-reference.js"></script>
<!-- Internal Data Table js -->
<script src="/resources/assets/plugins/datatable/js/jquery.dataTables.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.bootstrap5.js"></script>
<script src="/resources/assets/plugins/datatable/js/dataTables.buttons.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.bootstrap5.min.js"></script>
<!-- <script src="/resources/assets/plugins/datatable/js/jszip.min.js"></script> -->
<script src="/resources/assets/plugins/datatable/pdfmake/pdfmake.min.js"></script>
<script src="/resources/assets/plugins/datatable/pdfmake/vfs_fonts.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.html5.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.print.min.js"></script>
<script src="/resources/assets/plugins/datatable/js/buttons.colVis.min.js"></script>
<script src="/resources/assets/plugins/datatable/dataTables.responsive.min.js"></script>
<script src="/resources/assets/plugins/datatable/responsive.bootstrap5.min.js"></script>
<script src="/resources/assets/js/table-data.js"></script>
<script src="/resources/assets/js/select2.js"></script>
<!-- Select2 js-->
<script src="/resources/assets/plugins/select2/js/select2.min.js"></script>