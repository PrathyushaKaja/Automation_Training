package com.appiancorp.ps.cucumber.fixtures;

import com.appiancorp.ps.automatedtest.fixture.BaseFixture;
import io.cucumber.java.en.And;
import org.openqa.selenium.WebDriver;

public class MyStepdefs extends BaseFixture {
    private CucumberTempoFixture ctf = new CucumberTempoFixture();
    public static WebDriver driver = null;
    @And("I custom click on button {string}")
    public void iCustomClickOnButton(String arg0) {
        driver = ctf.getSettings().getDriver();

    }
}
