package blog4492

class AuthorController {

    def index() {
        List<Author> authorList = Author.list()
        render view: "index", model: [authors: authorList]
    }

    def save(Author author) {
        if (author.validate()) {
            author.save flush: true, failOrError: true
            flash.message = "You have successfully created author."
        } else {      // something failed
            flash.message = "Error occurred while creating author"
        }
        redirect action: "index"
    }

    def update(Author author) {
        if (author.validate()) {
            author.save flush: true, failOrError: true
            flash.message = "You have successfully updated"
        } else {      // something failed
            flash.message = "Error occurred while creating author"
        }
        redirect action: "index"
    }

    def create() {
        render view: "create"
    }

    def edit(Author author) {
        render view: "edit", model: [author: author]
    }

    def detail(Author author){
        render view: "detail", model: [author: author]
    }
}