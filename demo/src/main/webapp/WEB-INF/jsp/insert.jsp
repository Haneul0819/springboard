
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<link rel="stylesheet" href="./resource/css/thirdpage.css">
<title>Insert Form</title>
<script type="text/javascript">
	function fSubmit() {

		if(!document.insert.title.value) {
			alert("제목을 입력하세요");
			document.insert.focus();
			return false;
			}
		if(content == null || content=="") {
			alert("내용을 입력하세요");
			return false;
			} 
		
		}
</script>
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
	
	span{
		margin-top: 10px;
		font-size: 30px;
		font-weight: 500;
		color:#201f2d;
		letter-spacing:0;
		line-height: 35px;
		
	}
	.form-control{
		margin-top: 10px;
		width: 100%;
		height: 45px;
		border:#444444 solid 1px;
		background-color:#fafafa;
		font-size: 16px;
		color:#8a8a8a;
		letter-spacing:0px;
		line-height: 45px;
		text-align:left;
		text-indent: 15px;
	}
	#content{
		margin-top: 10px;
		width: 100%;
		height: 100%;
		border:#444444 solid 1px;
		background-color:#fafafa;
		font-size: 16px;
		color:#8a8a8a;
		letter-spacing:0px;
		line-height: 45px;
		text-align:left;
		text-indent: 15px;
	}
	.btn-1{
		margin-top: 5px;
		border:#082e59 solid 1px;
		background-color:#082e59;
		color:#fafafa;
		width: 160px;
		height:40px;
		display: inline-block;
		padding:0px 29px;
	}
	.btn-2{
		margin-top: 5px;
		border:#082e59 solid 1px;
		background-color:#082e59;
		color:#fafafa;
		width: 160px;
		height:40px;
		display: inline-block;
		padding:0px 29px;
	}
	.form-group{
		margin-top: 50px;
	}
	
</style>
</head>
<body>
	<div>
		<div class="content">
			<div class="in">
				<h2> 게시글 작성 </h2>
				<table>
					<tbody>
						<tr>
							<td>
								<form action="/insertProc" method="post" name="insert" onsubmit="return fSubmit()">
									<div class="form-group">
									  <label for="title">
										  <span>제목</span>
										</label><br>
									  <input type="text" class="form-control" id="title" name="title" placeholder="제목을 입력하세요.">
									</div>
									<div class="form-group">
										<label for="writer">
											<span>작성자</span>
										</label><br>
										<input type="text" class="form-control" id="writer" name="writer" placeholder="내용을 입력하세요.">
									</div>
									<div class="form-group">
										<label for="content">
											<span>내용</span>
										</label><br>
										<textarea class="form-control" id="content" name="content" rows="3"></textarea>
										<input type="submit" class="btn-1" value="작성" name="submit">
										<button class="btn-2" onclick="location.href='/dbTest'">이전</button>
									</div>
								</form>
							</td>
							<td></td>
					</thead>
				</table>
			</div>
		</div>
	</div>
</body>
</html>