package bedandbiscuit

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class DashboardController {
    def index() {
        render view: 'dashboard'
    }
}
