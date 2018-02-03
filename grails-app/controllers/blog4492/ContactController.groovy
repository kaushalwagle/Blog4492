package blog4492

import org.apache.tools.ant.taskdefs.Concat
import org.apache.tools.ant.types.resources.selectors.Date

class ContactController {
    def index() {
        render view: "index"
    }

    def save(Contact contact) {
        if (contact.validate()) {
            contact.save flush: true, failOrError: true
            flash.message = "Your request has been successfully received. We will be in touch with you shortly."
        }else{      // something failed
            flash.message = "Error occurred while saving your request."
        }
        redirect action: "index"
    }
}
