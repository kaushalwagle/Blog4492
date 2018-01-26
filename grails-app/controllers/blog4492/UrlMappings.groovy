package blog4492

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"home/index")
        "/index" (view: "/home/index")
        "/aboutus" (view: "/home/aboutus")
        "/blogpost" (view: "/home/blogpost")
        "/contactus" (view: "/home/contactus")
        "500"(view:'/error')
        "404"(view:'/notFound')
    }
}
