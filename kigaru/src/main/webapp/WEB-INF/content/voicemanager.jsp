<%@page contentType="text/html; charset=UTF-8"
	pageEncoding="Windows-31J"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Le styles -->
<link href="/css/main.css" rel="stylesheet">
<style>
</style>
<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">
</head>
<body>
	<div class="navbar navbar-default" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="/">マイモン！</a>
				<ul class="nav nav-pills">
					<li><a href="/"><span class="glyphicon glyphicon-home"></span></a></li>
					<li><a href="/voiceinput"><span class="glyphicon glyphicon-edit"></span></a></li>
					<li><a href="/mypage"><span class="glyphicon glyphicon-user"></span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p>新着モンスター</p>
				<table class="table table-striped">
					<s:iterator value="voices">
					<tr>
						<td>
							<a href="/voice/<s:property value="id"/>">
								<div>
									<p><s:property value="name"/></p>
									<p><s:property value="text"/></p>
									<p><s:property value="created_at"/></p>
									<span class="glyphicon glyphicon-tag"></span>
									<span class="glyphicon glyphicon-chevron-right"></span>
								</div>
							</a>
						</td>
					</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
	<script src="http://code.jquery.com/jquery.js"></script>
	<script src="/js/bootstrap.min.js"></script>
</body>
</html>