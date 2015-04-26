package bedandbiscuit

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER'])
class DogController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Dog.list(params), model:[dogInstanceCount: Dog.count()]
    }

    def show(Dog dogInstance) {
        respond dogInstance
    }

    def create() {
        respond new Dog(params)
    }

    @Transactional
    def save(Dog dogInstance) {
        if (dogInstance == null) {
            notFound()
            return
        }

        if (dogInstance.hasErrors()) {
            respond dogInstance.errors, view:'create'
            return
        }

        dogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'dog.label', default: 'Dog'), dogInstance.id])
                redirect dogInstance
            }
            '*' { respond dogInstance, [status: CREATED] }
        }
    }

    def edit(Dog dogInstance) {
        respond dogInstance
    }

    @Transactional
    def update(Dog dogInstance) {
        if (dogInstance == null) {
            notFound()
            return
        }

        if (dogInstance.hasErrors()) {
            respond dogInstance.errors, view:'edit'
            return
        }

        dogInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Dog.label', default: 'Dog'), dogInstance.id])
                redirect dogInstance
            }
            '*'{ respond dogInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Dog dogInstance) {

        if (dogInstance == null) {
            notFound()
            return
        }

        dogInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Dog.label', default: 'Dog'), dogInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'dog.label', default: 'Dog'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
