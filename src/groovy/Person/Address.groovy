package Person

import groovy.transform.ToString

@ToString(includeNames = true, includePackage = false)
class Address {

    String street
    String city
    String state
    Integer zip

    static contraints = {
        zip matches:/\d{5}|\./
    }
}
