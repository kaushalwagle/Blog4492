package blog4492

class Author {

    String firstName
    String lastName
    String email

    Date dateCreated

    static hasMany = [blogs: Blog]

    static constraints = {
        dateCreated nullable: true
        email nullable: true
    }
}
