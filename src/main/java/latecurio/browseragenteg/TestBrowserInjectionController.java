package latecurio.browseragenteg;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestBrowserInjectionController {

    @GetMapping("/auto")
    public String auto() {
        return "auto";
    }

    @GetMapping("/manual")
    public String manual() {
        return "manual";
    }

    @GetMapping("/disable")
    public String disable() {
        return "disable";
    }
}
