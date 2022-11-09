Browser Agent Example
=====================

Use this on Java Agent Bug Hunt with new SNAPSHOT version of the jar file to ensure the browser agent is injected
properly.

Please specify the following variables in your .zshrc or .bashrc:

```
export NEW_RELIC_LICENSE_KEY=[YOUR_LICENSE_KEY]
export NEW_RELIC_JAR='/some/where/newrelic.jar'
```

Specify JDK 17 as your current JDK or change the `build.gradle` to allow different version.

Then run the Spring Boot app:

`./gradlew bootRun`

Hit the singular endpoint that forwards to the JSP:

http://localhost:8080/hello?name=Bob

Navigate to https://staging-one.newrelic.com and find app under "Browser applications"

You can also `tail -f newrelic/newrelic_agent.log` for more details on execution.

