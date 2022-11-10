Browser Agent Example
=====================

Use this on Java Agent Bug Hunt with new SNAPSHOT version of the jar file to ensure the browser agent is injected
properly.

### Setup
You will need JDK8 or newer installed locally to run this.

Please specify the following variables in your .zshrc or .bashrc:

```
export NEW_RELIC_LICENSE_KEY=[YOUR_LICENSE_KEY]
export NEW_RELIC_JAR='/some/where/newrelic.jar'
```

### Run

Then run the Spring Boot app:

`./gradlew bootRun`

### Verify Browser Auto Injection

Hit the endpoint that automatically injects browser agent script to the JSP:

http://localhost:8080/auto?name=Bob

`View > Developer > View Source`

`<script type="text/javascript">window.NREUM...`

Should be added near bottom of HTML source.

### Verify Browser Manual Injection

Hit the endpoint that manually injects browser agent script to the JSP:

http://localhost:8080/manual?name=Sally

`View > Developer > View Source`

Should be a script in header and footer.

`<script type="text/javascript">window.NREUM...`

### Verify Browser Injection Disabled

http://localhost:8080/disable?name=Pat

`View > Developer > View Source`

No `javascript` should be injected.

## Verify Data

Navigate to https://staging-one.newrelic.com and find app under "Browser applications"

You can also `tail -f newrelic/newrelic_agent.log` for more details on execution.
