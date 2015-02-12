<g:applyLayout name="public">
	<head>
		<title><g:message code="springSecurity.login.title"/></title>
	</head>

	<content tag="main">
		<form action='${postUrl}' method='POST' id='loginForm' autocomplete='off'>
			<div class="form-group">
				<label for="username" class="sr-only"><g:message code="springSecurity.login.username.label"/></label>
				<g:textField name="j_username" id="username" class="form-control" placeholder="Username" autofocus="true"/>
			</div>

			<div class="form-group">
				<label for="password" class="sr-only"><g:message code="springSecurity.login.password.label"/></label>
				<g:passwordField name="j_password" id="password" class="form-control" placeholder="Password"/>
			</div>

			<g:submitButton name="submit" value="${message(code: "springSecurity.login.button")}" class="btn btn-primary"/>
		</form>

		<g:if test='${flash.message}'>
			<p><br>${flash.message}</p>
		</g:if>
	</content>
</g:applyLayout>