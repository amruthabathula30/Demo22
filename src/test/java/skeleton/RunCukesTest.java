package skeleton;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(tags= {"@Sanity"},plugin= {"html:target/cucumber-htmlreport.html","json:target/cucumber22.json"})
public class RunCukesTest {
}
