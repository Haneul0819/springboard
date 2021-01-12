<!DOCTYPE html>
<html>
	<meta charset="utf-8">
	
	<!-- <link rel="stylesheet" type="text/css" href="resources/secondpage.css"> -->
	
  <head>
	<meta charset="utf-8">
	<style>
		body{
			width: 100%;
			height:100%;
		}
		div{
			width: 100%;
		}
		
		content{
			width: 1200px;
			margin:0 auto;
		}
		in{
			width: 1200px;
		}
		table{
			width: 100%;
			border-top: 1px solid #444444;
			border-collapse: collapse;
		}
		tbody tr, td{
			padding:3px 0px;
			text-align: center;
			border-bottom: 1px solid #444444;
		}
		tbody tr:hover{background-color: #f2f2f2;			
		}
		
		
		table th{
			padding:10px 0px;
			border-bottom: 1px solid #444444;
			background-color:#f1f1f1;
			border-top:1px solid #333;
			
		}
		button{
			margin-top: 5px;
		    border:#082e59 solid 1px;
	     	background-color:#082e59;
		    color:#fafafa;
	     	width: 160px;
	    	height:40px;
	    	display: inline-block;
	    	padding:0px 29px;
		}
		.btn span{
			color:#fff;
			font-size: 16px;
			font-family:"Noto Sans KR","NanumGothic","NanumGothicBold","verdana","gulim","dotum", sans-serif;
		}
		span{
			font-size: 25px;
			color:blue;
		    letter-spacing:0px;
		    line-height: 45px;
		    text-indent: 15px;
			font-family:"Noto Sans KR","NanumGothic","NanumGothicBold","verdana","gulim","dotum", sans-serif;
		}
	</style> 
  </head>
  <body>
	  <div>
		  <div class="content">
			  <div class="in">
				<table>
					<colgroup>
						<col width="12%">
						<col />
						<col width="20%">
						<col width="20%">
						
					</colgroup>
					<thead>
						<tr>
							<th>No.</th>
							<th>제목</th>
							<!-- <th>내용</th> -->
							<th>작성자</th>
							<th>작성일자</th>
						</tr>
					</thead>
					<tbody>
								
					<c:forEach var="tbl_board" items="${tbl_board}">
						<tr> 
							<td><span>${tbl_board.bno}</span></td>
							<td onclick="location.href='/detail/${tbl_board.bno}'" style="cursor:pointer"><span>${tbl_board.title}</span></td>
							<!-- <td><p>${tbl_board.content}</p></td> -->
							<td><span>${tbl_board.writer}</span></td>
							<td><span>${tbl_board.regDate}</span></td>
						</tr>
					</c:forEach>
					
					</tbody>
				</table>

			   <button class="btn" onclick="location.href='/insert'">
				<span>글쓰기</span>
			    </button>
			  </div>
		  </div>
	  </div>
  </body>
</html>
