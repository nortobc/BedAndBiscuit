package bedandbiscuit

import bedandbiscuit.client.Client

class Dog {

    String name
    String breed
    Date dob
    Date timeOwned
    Integer weight
    String color
    String sex
    Boolean neutered
    String vet
    Integer vetPhone

    static belongsTo = [client: Client]

    static mapping = {
        version false
    }

    static constraints = {
        name nullable:false, blank:false, matches:/.{1,30}$/
        breed nullable:false, blank:false, matches:/.{1,30}$/
        dob nullable:false, blank:false
        vet nullable:false, blank:false, matches:/.{1,30}$/
    }
}
