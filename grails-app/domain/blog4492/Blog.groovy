package blog4492

class Blog {
    String title
    String author
    Date datePosted = new Date()
    Date dateModified = new Date()
    String content
    String imgUrl
    String tag

    static constraints = {
        datePosted nullable: true
        dateModified nullable: true
        imgUrl nullable: true
        tag nullable: true

    }
}
