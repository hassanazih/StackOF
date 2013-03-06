class UrlMappings {

	static mappings = {
		"/"(controller:"home" , action: 'index')
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		
		"/"(view:"/error")
		"500"(view:'/error')
		"/login/$action"(controller:"login")
		"/logout/$action"(controller:"logout")
	}
}
