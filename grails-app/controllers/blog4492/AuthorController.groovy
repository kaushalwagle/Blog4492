package blog4492

class AuthorController {

    def index() {
        List <Author> authorList = Author.list()
        render view: "index", model: [authors: authorList]
    }

    def save(Author author) {
        if (author.validate()) {
            author.save flush: true, failOrError: true
            flash.message = "You have successfully created a new blog."
        } else {      // something failed
            flash.message = "Error occurred while creating blog"
        }
        redirect action: "index"
    }


    def update() {
        blogPost.dateModified= new  Date()
        if (blogPost.validate()) {
            blogPost.save flush: true, failOrError: true
            flash.message = "You have successfully updates: " + blogPost.title
        } else {      // something failed
            flash.message = "Error occurred while creating blog"
        }
        redirect action: "edit"
    }

    def create(){
        render view: "create"
    }


    def edit(Author author){
        render view: "edit", model: [aurhor: author]
    }
}
