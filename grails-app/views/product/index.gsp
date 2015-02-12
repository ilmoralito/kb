<g:applyLayout name="threeColumns">
	<head>
		<title>Productos</title>
	</head>

	<content tag="main">
		<g:if test="${products}">
			<table class="table table-hover">
				<thead>
					<th>Producto</th>
				</thead>
				<tbody>
					<g:each in="${products}" var="product">
						<tr>
							<td><g:link action="show" id="${id}">${product.brand}</g:link></td>
						</tr>
					</g:each>
				</tbody>
			</table>
		</g:if>
		<g:else>
			<h4>Nada que mostrar</h4>
		</g:else>
	</content>

	<content tag="action">
		<g:form action="save" autocomplete="off">
			<div class="form-group">
				<label for="product" class="sr-only">Producto</label>
				<g:textField name="product" class="form-control" placeholder="Producto"/>
			</div>

			<g:submitButton name="submit" value="Guardar" class="btn btn-primary btn-block"/>
		</g:form>
	</content>
</g:applyLayout>