package ni.com.kb

import org.grails.databinding.BindUsing
import groovy.transform.ToString

@ToString(includeNames=true)
class Product {
	@BindUsing({ obj, source ->
		source["brand"]?.capitalize()
	})
	String brand
	Set presentations
	Set types

  static constraints = {
  	brand blank:false
  	presentations nullable:true
  	types nullable:true
  }

  static hasMany = [presentations:String, types:String]
}
