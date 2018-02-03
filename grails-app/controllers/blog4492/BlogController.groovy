package blog4492

class BlogController {

    def list() {
        List<Blog> blogList = Blog.list()
        render view: "index", model: [blogs: blogList]
    }

    def create(){
        render view: "create"
    }

    def save(Blog blog){
        if (blog.validate()) {
            blog.save flush: true, failOrError: true
            flash.message = "You have successfully created a new blog."
        }else{      // something failed
            flash.message = "Error occurred while creating blog"
        }
        redirect action: "list"
    }

    def edit(){ }

    def update(){ }

    def detail(){ }
}
