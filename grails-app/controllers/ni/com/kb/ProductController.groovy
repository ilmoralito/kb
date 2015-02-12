package ni.com.kb

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_ADMIN'])
class ProductController {
	static defaultAction = "index"
	static allowedMethods = [
		index:"GET"
	]

  def index() {
  	[products:Product.list()]
  }
}
