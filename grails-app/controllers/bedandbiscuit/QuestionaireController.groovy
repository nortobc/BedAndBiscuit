package bedandbiscuit

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured(['ROLE_USER'])
class QuestionaireController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Questionaire.list(params), model:[questionaireInstanceCount: Questionaire.count()]
    }

    def show(Questionaire questionaireInstance) {
        respond questionaireInstance
    }

    def create() {
        respond new Questionaire(params)
    }

    @Transactional
    def save(Questionaire questionaireInstance) {
        if (questionaireInstance == null) {
            notFound()
            return
        }

        if (questionaireInstance.hasErrors()) {
            respond questionaireInstance.errors, view:'create'
            return
        }

        questionaireInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'questionaire.label', default: 'Questionaire'), questionaireInstance.id])
                redirect questionaireInstance
            }
            '*' { respond questionaireInstance, [status: CREATED] }
        }
    }

    def edit(Questionaire questionaireInstance) {
        respond questionaireInstance
    }

    @Transactional
    def update(Questionaire questionaireInstance) {
        if (questionaireInstance == null) {
            notFound()
            return
        }

        if (questionaireInstance.hasErrors()) {
            respond questionaireInstance.errors, view:'edit'
            return
        }

        questionaireInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Questionaire.label', default: 'Questionaire'), questionaireInstance.id])
                redirect questionaireInstance
            }
            '*'{ respond questionaireInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Questionaire questionaireInstance) {

        if (questionaireInstance == null) {
            notFound()
            return
        }

        questionaireInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Questionaire.label', default: 'Questionaire'), questionaireInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'questionaire.label', default: 'Questionaire'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
