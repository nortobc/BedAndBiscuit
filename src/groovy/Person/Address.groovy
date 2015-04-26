package Person

import groovy.transform.ToString

@ToString(includeNames = true, includePackage = false)
class Address {

    String street
    String city
    String state
    String zip
}
