<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">

<title>Insert Form</title>
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
	.form-group{
		margin-top: 50px;
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

</style>
</head>
<body>
	<div>
		<div class="content">
			<div class="in">
				<table>
					<tbody>
						<tr>
							<td>
								<div class="container">
									<form action="/updateProc" method="post">
									  <div class="form-group">
										<label for="title">
											<span>제목</span> 
										</label> <br>
										<input type="text" class="form-control" id="title" name="title" value="${detail.title}" >
									  </div>
									  <div class="form-group">
										<label for="content" style="">
											<span>내용</span>
										</label>
										<textarea class="form-control" id="content" name="content" rows="3">
											${detail.content}
										</textarea>
									  </div>
									  <input type="hidden" name="bno" value="${bno}"/>
									  <button type="submit" class="btn-1">수정</button>
									</form>
								</div>
							</td>
						</tr>
					</tbody>
					<h2> 게시글 수정 </h2>
				</table>
			</div>
		</div>
	</div>
</body>
</html>