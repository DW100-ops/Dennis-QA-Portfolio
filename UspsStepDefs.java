package definitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import support.DriverFactory;

import java.time.Duration;

import static org.assertj.core.api.Assertions.assertThat;

public class UspsStepDefs {
    WebDriver driver = DriverFactory.getDriver();
    WebDriverWait wait = new WebDriverWait(driver, Duration.ofSeconds(5));

    @And("I fill out {string} street, {string} city, {string} state")
    public void iFillOutStreetCityState(String street, String city, String state) {
        driver.findElement(By.xpath("//input[@id='tAddress']")).sendKeys(street);
        driver.findElement(By.xpath("//input[@id='tCity']")).sendKeys(city);
        WebElement stateElement = driver.findElement(By.xpath("//select[@id='tState']"));
        new Select(stateElement).selectByValue(state);
    }

    @And("I submit lookup by address form")
    public void iSubmitLookupByAddressForm() {
        driver.findElement(By.xpath("//a[@id='zip-by-address']")).click();
    }

    @Then("I validate {string} zip code exists in the result")
    public void iValidateZipCodeExistsInTheResult(String expectedZip) {
        WebElement resultContainer = driver.findElement(By.xpath("//div[@id='zipByAddressDiv']"));
        wait.until(ExpectedConditions.visibilityOf(resultContainer));
        String resultContainerText = resultContainer.getText();
        assertThat(resultContainerText).contains(expectedZip);
    }
}
