package bedandbiscuit.client

import bedandbiscuit.Dog
import bedandbiscuit.Questionaire
import bedandbiscuit.user.SecurityUser
import Person.*
import groovy.transform.ToString

@ToString(includeNames = true, includePackage = false)
class Client {

    Address address
    String firstName
    String lastName
    String otherOwners
    String email
    Integer cell

    static belongsTo = [securityUser: SecurityUser]
    static hasMany = [dogs: Dog]
    static hasOne = [questionaire: Questionaire]
    static embedded = ['address']

    static mapping = {
        version false
    }

    static constraints = {
        questionaire nullable: true, blank: true
        dogs nullable: true, blank: true
    }
}
