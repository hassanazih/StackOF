package org.isima.sof

class HomeController {
	def index() {
		Integer max = 10
		params.max = Math.min(max ?: 10, 100)
		[tagInstanceList: Tag.list(params), tagInstanceTotal: Tag.count(),questionInstanceList: Question.list(params), questionInstanceTotal: Question.count()]

	}
}
