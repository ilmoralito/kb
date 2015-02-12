import ni.com.kb.*
import grails.util.Environment

class BootStrap {
  def grailsApplication

  def init = { servletContext ->
    switch(Environment.current) {
      case Environment.DEVELOPMENT:
        def beers = grailsApplication.config.ni.com.kb.products.beers

        // users
        def adminUser = new User(username:"admin", fullName:"roger", password:"password").save(failOnError:true)
        def userUser = new User(username:"user", fullName:"hadned", password:"password").save(failOnError:true)

  			def adminRole = new Role(authority:"ROLE_ADMIN").save(failOnError:true)
        def userRole = new Role(authority:"ROLE_USER").save(failOnError:true)

        UserRole.create adminUser, adminRole, true
        UserRole.create userUser, userRole, true

        assert User.count() == 2
        assert Role.count() == 2
        assert UserRole.count() == 2

        // products
        def product1 = new Product(brand:beers[0].brand, presentations:beers[0].presentations[0]).save(failOnError:true)
        def product2 = new Product(brand:beers[1].brand, presentations:beers[1].presentations[0], types:beers[1].types[1]).save(failOnError:true)

        assert Product.count() == 2
  		break
  	}
  }
  def destroy = {
  }
}
