<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="layout" content="main">
	<title><g:layoutTitle default="Grails"/></title>
	<g:layoutHead/>
</head>
<body>
	<div class="row">
		<div class="col-md-2">
			<g:render template="/layouts/sidebar"/>
		</div>
		<div class="col-md-8">
			<g:pageProperty name="page.main"/>
		</div>
		<div class="col-md-2">
			<g:pageProperty name="page.action"/>
		</div>
	</div>
</body>
</html>