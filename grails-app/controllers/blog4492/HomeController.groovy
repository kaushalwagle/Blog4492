package blog4492

class HomeController {

    def index() {
        render view:"index.gsp"
    }

    def aboutus() {
        render view:"aboutus.gsp"
    }

    def blogpost(){
        render view: "blogpost.gsp"
    }

    def contactus(){
        render view:"contactus.gsp"
    }

    def header(){
        render template:"template.gsp"
    }
}
