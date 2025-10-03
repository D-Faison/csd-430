
package tags;

import jakarta.servlet.jsp.tagext.SimpleTagSupport;
import jakarta.servlet.jsp.JspWriter;
import java.io.IOException;

public class Greeting extends SimpleTagSupport {
    
    private String name;

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public void doTag() throws IOException {
        JspWriter out = getJspContext().getOut();
        out.println("Hello, " + name + "!");
    }
    
}
