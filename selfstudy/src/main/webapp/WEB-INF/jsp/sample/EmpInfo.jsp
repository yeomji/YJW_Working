<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
<head>
<title>사원정보</title>
<%@ include file="/WEB-INF/include/include-header.jspf" %>
</head>
<body>
    <form id="frm">
        <table class="board_view">
            <colgroup>
                <col width="25%" >
                <col width="25%" >
                <col width="25%" >
                <col width="25%" >
            </colgroup>
            <caption>사원정보</caption>
            <tbody>
                <tr>
                    <th scope="row">사번</th>
                    <td><input type="text"  name="EMP_CODE"/></td>
                    <th scope="row">성명</th>
                    <td><input type="text"  name="EMP_NAME"/></td>
                </tr>
                <tr>
                    <th scope="row">주민번호</th>
                    <td><input type="text" name="JUMIN_NO"/></td>
                    <th scope="row">핸드폰</th>
                    <td><input type="text" name="HP_NO" /></td>
                </tr>
            </tbody>
        </table>
         
        <a href="#this" id="write" class="btn">저장</a>
        <a href="#this" id="list" class="btn">취소</a>
    </form>
    <%@ include file="/WEB-INF/include/include-body.jspf" %>  
     
    <script type="text/javascript">
    
        $(document).ready(function(){
            $("#list").on("click",function(e){
                e.preventDefault();
                fn_openBoardList();
            })
            $("#write").on("click",function(e){
                e.preventDefault();
                fn_writeBoard();
            })
        });
         
        function fn_openBoardList(){
            var comSubmit = new ComSubmit();
            comSubmit.setUrl("<c:url value='/sample/openSampleEmpList.do'/>");
            comSubmit.submit();
        }
         
        function fn_writeBoard(){
            var comSubmit = new ComSubmit("frm");
            comSubmit.setUrl("<c:url value='/sample/writeEmpInfo.do'/>");
            comSubmit.submit();
        }
        
    </script>
</body>
</html>