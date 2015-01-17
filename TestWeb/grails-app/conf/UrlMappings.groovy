class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		"/creditcard/$id?"(resource:"creditcard")
		"/creditcard/$id"(controller: "creditcard") {
			action = [GET: "show", PUT: "update", DELETE: "delete", POST: "save"]
		}
		"/"(view:"/index")
		"500"(view:'/error')
	}
}
