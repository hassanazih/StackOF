package org.isima.sof
import grails.plugins.springsecurity.Secured;
import grails.plugins.springsecurity.SpringSecurityService;

import org.springframework.dao.DataIntegrityViolationException


class CommentController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
	SpringSecurityService springSecurityService

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [commentInstanceList: Comment.list(params), commentInstanceTotal: Comment.count()]
    }

	@Secured(['ROLE_USER','IS_AUTHENTICATED_FULLY'])
    def create() {
        [commentInstance: new Comment(params)]
    }
	
	@Secured(['ROLE_USER','IS_AUTHENTICATED_FULLY'])
    def save() {
		def question,id = Question.get((params.question.id) as Integer)
		def answer
		if (params.answer !=null){ 
			answer = Answer.get((params.answer.id) as Integer)
			question = null
		}else
			answer = null
		
		def commentInstance = new Comment(user: springSecurityService.currentUser, creationDate: new Date(), description: params.comment.description, answer:answer, question:question )
        
		if (!commentInstance.save(flush: true)) {
            render(view: "create", model: [commentInstance: commentInstance])
            return
        }

        //flash.message = message(code: 'default.created.message', args: [message(code: 'comment.label', default: 'Comment'), commentInstance.id])
		redirect(controller:"question", action: "show", id: id.id)
    }

    def show(Long id) {
        def commentInstance = Comment.get(id)
        if (!commentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "list")
            return
        }

        [commentInstance: commentInstance]
    }

	@Secured(['ROLE_USER','IS_AUTHENTICATED_FULLY'])
    def edit(Long id) {
        def commentInstance = Comment.get(id)
        if (!commentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "list")
            return
        }

        [commentInstance: commentInstance]
    }

	@Secured(['ROLE_USER','IS_AUTHENTICATED_FULLY'])
    def update(Long id, Long version) {
        def commentInstance = Comment.get(id)
        if (!commentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (commentInstance.version > version) {
                commentInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'comment.label', default: 'Comment')] as Object[],
                          "Another user has updated this Comment while you were editing")
                render(view: "edit", model: [commentInstance: commentInstance])
                return
            }
        }

        commentInstance.properties = params

        if (!commentInstance.save(flush: true)) {
            render(view: "edit", model: [commentInstance: commentInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'comment.label', default: 'Comment'), commentInstance.id])
        redirect(action: "show", id: commentInstance.id)
    }

	@Secured(['ROLE_USER','IS_AUTHENTICATED_FULLY'])
    def delete(Long id) {
        def commentInstance = Comment.get(id)
        if (!commentInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "list")
            return
        }

        try {
            commentInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comment.label', default: 'Comment'), id])
            redirect(action: "show", id: id)
        }
    }
}
