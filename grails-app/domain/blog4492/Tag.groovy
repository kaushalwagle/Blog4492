package blog4492

class Tag {

    String name

    Date dateCreated

    static hasMany = [blogs: Blog]

    static constraints = {
        dateCreated nullable: true
    }
}
