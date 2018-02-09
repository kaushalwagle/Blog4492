package blog4492

class BlogController {

    def index() {
        redirect action: "list"
    }

    def list() {
        List<Blog> blogList = Blog.list()
        render view: "index", model: [blogs: blogList]
    }

    def create() {
        List<Author> authorList = Author.list()
        render view: "create", model: [authors: authorList]
    }

    def save(Blog blog) {
        if (blog.validate()) {
            blog.save flush: true, failOrError: true
            flash.message = "You have successfully created a new blog."
        } else {      // something failed
            flash.message = "Error occurred while creating blog"
        }
        redirect action: "list"
    }

    def edit(Blog blogToEdit) {
        List<Author> authorList = Author.list()
        render view: "edit", model: [postToEdit: blogToEdit, authors: authorList]
    }

    def update(Blog editedPost) {

        editedPost.dateModified= new  Date()
        if (editedPost.validate()) {
            editedPost.save flush: true, failOrError: true
            flash.message = "You have successfully updated"
        } else {      // something failed
            flash.message = "Error occurred while updating blog"
        }
        redirect action: "edit", params: [id: editedPost.id]
    }

    def detail(Blog blogPost) {
        render view:"detail", model: [blogPost: blogPost]
    }
}
