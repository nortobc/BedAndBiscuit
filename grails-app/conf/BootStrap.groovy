import bedandbiscuit.user.*

class BootStrap {
    def init = { servletContext ->
        def userRole = new SecurityRole(authority: 'ROLE_USER').save(failOnError: true)
        def adminRole = new SecurityRole(authority: 'ROLE_ADMIN').save(failOnError: true)
        def kara = new SecurityUser(username: 'kara', password: 'norton', enabled: true).save(failOnError: true)
        def brian = new SecurityUser(username: 'brian', password: 'norton', enabled: true).save(failOnError: true)
        def admin = new SecurityUser(username: 'admin', password: 'admin', enabled: true).save(failOnError: true)
        SecurityUserSecurityRole.create kara, userRole
        SecurityUserSecurityRole.create brian, userRole
        SecurityUserSecurityRole.create admin, adminRole
    }
} 