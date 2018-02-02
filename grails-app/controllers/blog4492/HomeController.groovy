package blog4492

class HomeController {

    def index() {
        render view:"index.gsp"
    }

    def aboutus() {
        render view:"aboutus.gsp"
    }

}
