package blog4492

class Contact {

    String name
    String email
    Long phone
    String message
    Date dateCreated = new Date()

    static constraints ={
            dateCreated nullable: true
    }


}
