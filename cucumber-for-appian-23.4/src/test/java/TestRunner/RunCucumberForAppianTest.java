package TestRunner;

import org.junit.runner.RunWith;

import io.cucumber.junit.CucumberOptions;

import io.cucumber.junit.Cucumber;

@RunWith(Cucumber.class)

@CucumberOptions(features = "./src/test/resources",

        glue = {"com.appiancorp.ps.cucumber. fixtures"},

        plugin = {"pretty", "html:target/cucumber-html-reports",

                "json:target/TestReports/cucumber.json",

                "junit:target/Test Reports/cucumber.xml",

                "com.aventstack.extentreports.cucumber.adapter. ExtentCucumber Adapter :"},

        monochrome = true,

        dryRun = false,

        tags = "@E2EClient")
public class RunCucumberForAppianTest {
}
