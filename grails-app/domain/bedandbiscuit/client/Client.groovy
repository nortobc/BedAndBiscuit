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
    String otherPetOwners
    String email
    Integer cell
    boolean boarding
    boolean daycare
    boolean dogTraining
    boolean bathingGrooming
    boolean internet
    boolean referral
    boolean droveBy
    boolean other
    Integer homeNumber
    Integer workNumber
    String emergencyContactName
    Integer emergencyContactNumber

    static belongsTo = [securityUser: SecurityUser]
    static hasMany = [dogs: Dog]
    static hasOne = [questionaire: Questionaire]
    static embedded = ['address']

    static mapping = {
        version false
    }

    static constraints = {
        firstName nullable:false, blank:false, matches:/.{1,30}$/
        lastName nullable:false, blank:false, matches:/.{1,30}$/
        otherPetOwners nullable:true, blank:true, matches:/.{1,50}$/
        email nullable: false, blank: false
        cell nullable: false, blank: false
        homeNumber nullable: true, blank: true
        workNumber nullable: true, blank: true
        emergencyContactName nullable: true, blank: true
        emergencyContactName nullable: true, blank: true
        questionaire nullable: true, blank: true
        dogs nullable: true, blank: true
        boarding validator: { val, obj ->
            if (!val && !obj.daycare && !obj.dogTraining && !obj.bathingGrooming) {
                return false
            }
            return true
        }
        internet validator: { val, obj ->
            if (!val && !obj.referral && !obj.droveBy && !obj.other) {
                return false
            }
            return true
        }
    }
}