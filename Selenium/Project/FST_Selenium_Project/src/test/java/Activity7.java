package Activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.util.concurrent.TimeUnit;

public class Activity7 {
    WebDriver driver;

    @BeforeClass
    public void setUp() {
        // Setup the Firefox driver(GeckoDriver)
        WebDriverManager.firefoxdriver().setup();

        // Create a new instance of the Firefox driver
        driver = new FirefoxDriver();
        driver.manage().window().maximize();
        // Open the browser
        driver.get("https://alchemy.hguy.co/crm/");

    }

    @Test
    public void additionalInformationValidation() throws InterruptedException {
        // Perform testing and assertions
        //Verify Login page opened
        WebElement headerImage = driver.findElement(By.xpath("//img[@alt=\"SuiteCRM\"]"));
        Assert.assertTrue(headerImage.isDisplayed());

        //Log in to application
        WebElement userName = driver.findElement(By.xpath("//input[@id=\"user_name\"]"));
        userName.sendKeys("admin");
        WebElement pwd = driver.findElement(By.xpath("//input[@id=\"username_password\"]"));
        pwd.sendKeys("pa$$w0rd");
        WebElement loginButton = driver.findElement(By.xpath("//input[@id=\"bigbutton\"]"));
        loginButton.click();
        driver.manage().timeouts().implicitlyWait(12, TimeUnit.SECONDS);

        //Validate whether log in is successful or not
        WebElement salesHeader = driver.findElement(By.xpath("//span/a[contains(text(),'Sales')]"));
        Assert.assertTrue(salesHeader.isDisplayed(),"Log in is successful");

        //Additional Information validation
        WebElement leadsLink = driver.findElement(By.xpath("//span/a[contains(text(),'Sales')]/ancestor::span//ul/li/a[contains(text(),'Leads')]"));
        Actions a = new Actions(driver);
        a.moveToElement(salesHeader).click().moveToElement(leadsLink).click().build().perform();
        Thread.sleep(3000);

        WebElement leadsPageHeader = driver.findElement(By.xpath("//h2[contains(text(),'  Leads ')]"));
        Assert.assertTrue(leadsPageHeader.isDisplayed());

        WebElement additionalInformationIcon = driver.findElement(By.xpath("(//span[@class='suitepicon suitepicon-action-info'])[1]"));
        additionalInformationIcon.click();

        WebElement additionalInformationPopUpHeader = driver.findElement(By.xpath("//div[contains(text(),'Additional Details')]"));
        Assert.assertTrue(additionalInformationPopUpHeader.isDisplayed());

        WebElement phoneNumber = driver.findElement(By.xpath("//span[@class = 'phone']"));
        String number = phoneNumber.getText();
        System.out.println("The phone number displayed is : "+number);

    }

    @AfterClass
    public void cleanUp() {

        // Close the browser
        // Feel free to comment out the line below
        // so it doesn't close too quickly
        driver.quit();
    }
}
