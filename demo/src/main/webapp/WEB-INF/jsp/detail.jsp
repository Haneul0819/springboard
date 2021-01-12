<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	
	<link rel="stylesheet" href="/res/css/secondpage.css">
		
<title>Insert title here</title>
<style>
	body{
		width: 100%;
		height:100%;
	}
	div{
		width: 100%;
	}
	.content{
		width: 1200px;
		margin:0 auto;
	}
	.in{
		width: 100%;
	}
	table{
		width: 100%;
		border-top: 1px solid #444444;
		border-collapse: collapse;
	}
	tbody td{
		padding:20px;
		text-align: center;
		border-bottom: 1px solid #444444;
	}
	table th{
		padding:20px;
		border-bottom: 1px solid #444444;
	}
	span{
		margin-top: 10px;
		font-size: 30px;
		font-weight: 500;
		color:#201f2d;
		letter-spacing:0;
		line-height: 35px;
	}
	button{
		position: relative;
		left: 450px;
		margin-top: 10px;
		border:#082e59 solid 1px;
		background-color:#082e59;
		color:#fafafa;
		width: 160px;
		height:40px;
		display: inline-block;
		padding:0px 29px;
		cursor: pointer;
	}
	.input-group button{
		position: relative;
		left: 0px;
		border:#082e59 solid 1px;
		background-color:#082e59;
		color:#fafafa;
		width: 160px;
		height:40px;
		display: inline-block;
		padding:0px 29px;
		cursor: pointer;
	}
	.footer{
		margin-top: 50px;
	}
	.control{
		margin-top: 10px;
		width: 80%;
		height: 40px;
		border:#444444 solid 1px;
		background-color:#fafafa;
		font-size: 16px;
		color:#8a8a8a;
		letter-spacing:0px;
		line-height: 45px;
		text-align:left;
		text-indent: 15px;
	}

</style>
</head>

<body>
	<div>
		<div class="content">
			<div class="in">
				<h2> 게시글 상세 </h2>
				<table>
					<col width="20%">
					<col>
					<tbody>
						<tr>
							<th>
								<form action="/insertProc" method="post">
									<div class="form-group">
									<label>
										<span>제목</span>
									</label>
								  </div>
								</form>
							</th>
							<td style="text-align: left">
								${detail.title}
								
								<!-- <input type="text" class="control" id="content" name="content" placeholder="내용을 입력하세요."> -->
							</td>						
						</tr>
						<tr>
							<th>
								<form action="/insertProc" method="post">
									<div class="form-group">
									<label>
										<span>작성자</span>
									</label>
								  </div>
								</form>
							</th>
							<td style="text-align: left">
								${detail.title}
								
								<!-- <input type="text" class="control" id="content" name="content" placeholder="내용을 입력하세요."> -->
							</td>	
						</tr>
						<tr>
							<th>
								<form action="/insertProc" method="post">
									<div class="form-group">
									<label>
										<span>작성날짜</span>
									</label>
								  </div>
								</form>
							</th>
							<td style="text-align: left">
								${detail.title}
								
								<!-- <input type="text" class="control" id="content" name="content" placeholder="내용을 입력하세요."> -->
							</td>						
						</tr>
						<tr>
							<th>
								<form action="/insertProc" ID="content" method="post">
									<div class="form-group">
									<label>
										<span>내용</span>
									</label>
								  </div>
								</form>
							</th>
							<td style="text-align: left">
								${detail.title}
								<!-- <input type="text" class="control" id="content" name="content" placeholder="내용을 입력하세요."> -->
							</td>					
						</tr>
					</tbody>

				</table>

				<div class="bt">
					<button onclick="location.href='/update/${detail.bno}' class="">수정</button> 
					<button class="btn btn-danger" onclick="location.href='/delete/${detail.bno}'">삭제</button>
				</div>
			
				
				
				<div class="footer">
					<h2> 댓글등록 </h2>
				<label for="content"></label>
				<form name="commentInsertForm">
					<div class="input-group">
					   <input type="hidden" name="bno" value="${detail.bno}"/>
					   <input type="text" class="control" id="content" name="content" placeholder="내용을 입력하세요.">
					   <button class="btn" type="button" name="commentInsertBtn">등록</button>
					</div>
				</form>
				</div>
			</div>
		</div>
	</div>
</body>
<%@ include file="CommentS.jsp" %>   
</html>
