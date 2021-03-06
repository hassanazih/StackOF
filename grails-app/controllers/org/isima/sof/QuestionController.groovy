package org.isima.sof
import java.util.Date;

import grails.plugins.springsecurity.Secured;


import org.springframework.dao.DataIntegrityViolationException

import org.springframework.dao.DataIntegrityViolationException

class QuestionController {

	def springSecurityService
	
    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
		switch(params.orderby)
		{
			case 1: 
				params.sort = "creationDate"
				params.order = "desc"
				break
			case 2:
				params.sort = "votesNb"
				params.order = "desc"
				break
			case 3:
				params.sort = "viewsNb"
				params.order = "desc"
				break
			
		}
		//Tag.list(max:10, sort: "creationDate", order:desc)
        [questionInstanceList: Question.list(params), questionInstanceTotal: Question.count(), tagInstanceList: Tag.list(max:10), tagInstanceTotal: Tag.count()]
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
    def create() {
	//	def today = new Date()
		//def titre = params['titre']
		//def description = params['description']

        [questionInstance: new Question(params)]
    }

	@Secured(['IS_AUTHENTICATED_FULLY'])
    def save() {
		def today = new Date()
		def titre = params['titre']
		def description = params['description']
		
        def questionInstance = new Question(titre:titre,description:description,user:User.get(springSecurityService.principal.id),votesNb:0,viewsNb:0,creationDate:today)
        if (!questionInstance.save(flush: true)) {
            render(view: "create", model: [questionInstance: questionInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'question.label', default: 'Question'), questionInstance.id])
        redirect(action: "show", id: questionInstance.id)
    }

    def show(Long id) {
        def questionInstance = Question.get(id)
		
        if (!questionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "list")
            return
        }
		questionInstance.viewsNb++;
        [questionInstance: questionInstance]
    }

	@Secured(['IS_AUTHENTICATED_FULLY'])
    def edit(Long id) {
        def questionInstance = Question.get(id)
        if (!questionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "list")
            return
        }

        [questionInstance: questionInstance]
    }

	@Secured(['IS_AUTHENTICATED_FULLY'])
    def update(Long id, Long version) {
        def questionInstance = Question.get(id)
        if (!questionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (questionInstance.version > version) {
                questionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'question.label', default: 'Question')] as Object[],
                          "Another user has updated this Question while you were editing")
                render(view: "edit", model: [questionInstance: questionInstance])
                return
            }
        }

        questionInstance.properties = params

        if (!questionInstance.save(flush: true)) {
            render(view: "edit", model: [questionInstance: questionInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'question.label', default: 'Question'), questionInstance.id])
        redirect(action: "show", id: questionInstance.id)
    }
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
    def delete(Long id) {
        def questionInstance = Question.get(id)
        if (!questionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "list")
            return
        }

        try {
            questionInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'question.label', default: 'Question'), id])
            redirect(action: "show", id: id)
        }
    }
	

	def vote(Long id){
		def questionInstance = Question.get(id)
		if (params.plus == "true")
			questionInstance.votesNb++
		else
			questionInstance.votesNb--
			
		if (!questionInstance.save(flush: true)) {
			flash.message = message(code: 'default.error', args: [message(code: 'question.label', default: 'Question'), questionInstance.id])
			return
		}

		
		redirect(action: "show", id: questionInstance.id)
	
	}
	
	def _newestQuestions(){
		def myMap = ["sort":"creationDate", "order":"desc"]
		[questionInstanceList: Question.list(myMap), questionInstanceTotal: Question.count(), tagInstanceList: Tag.list(max:10), tagInstanceTotal: Tag.count()]
		
	}
	
	def _viewedQuestions(){
		def myMap = ["sort":"viewsNb", "order":"desc"]
		[questionInstanceList: Question.list(myMap), questionInstanceTotal: Question.count(), tagInstanceList: Tag.list(max:10), tagInstanceTotal: Tag.count()]
		
	}
	
	def _votedQuestions(){
		def myMap = ["sort":"votesNb", "order":"desc"]
		[questionInstanceList: Question.list(myMap), questionInstanceTotal: Question.count(), tagInstanceList: Tag.list(max:10), tagInstanceTotal: Tag.count()]
		
	}
}
