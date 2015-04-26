package bedandbiscuit

import bedandbiscuit.client.Client

class Questionaire {

    String boarded
    String health

    static belongsTo = [client: Client]

    static mapping = {
        version false
    }

    static constraints = {
    }
}
