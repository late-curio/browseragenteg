package latecurio.browseragenteg;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HelloController {

        @GetMapping("/hello")
        public String viewBooks() {
            return "hello";
        }
}