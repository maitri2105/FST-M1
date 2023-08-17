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

import java.util.List;
import java.util.concurrent.TimeUnit;

public class Activity8 {
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
    public void getAccountsTableName() throws InterruptedException {
        // Perform testing and assertions
        //Verify Login page opened
        WebElement headerImage = driver.findElement(By.xpath("//img[@alt=\"SuiteCRM\"]"));
        Assert.assertTrue(headerImage.isDisplayed());
        Thread.sleep(2000);

        //Log in to application
        WebElement userName = driver.findElement(By.xpath("//input[@id=\"user_name\"]"));
        userName.sendKeys("admin");
        WebElement pwd = driver.findElement(By.xpath("//input[@id=\"username_password\"]"));
        pwd.sendKeys("pa$$w0rd");
        WebElement loginButton = driver.findElement(By.xpath("//input[@id=\"bigbutton\"]"));
        loginButton.click();
        Thread.sleep(2000);

        //Validate whether log in is successful or not
        WebElement salesHeader = driver.findElement(By.xpath("//span/a[contains(text(),'Sales')]"));
        Assert.assertTrue(salesHeader.isDisplayed(),"Log in is successful");

        //Print table details
        WebElement accountsLink = driver.findElement(By.xpath("//span/a[contains(text(),'Sales')]/ancestor::span//ul/li/a[contains(text(),'Accounts')]"));
        Actions a = new Actions(driver);
        a.moveToElement(salesHeader).click().moveToElement(accountsLink).click().build().perform();
        Thread.sleep(4000);

        WebElement accountsPageHeader = driver.findElement(By.xpath("//h2[contains(text(),'  Accounts ')]"));
        Assert.assertTrue(accountsPageHeader.isDisplayed());

        List<WebElement> oddRows = driver.findElements(By.xpath("//tr[@class='oddListRowS1']/td[3]"));
        for (int i=0; i<5; i++){
            System.out.println(oddRows.get(i).getText());
        }

    }

    @AfterClass
    public void cleanUp() {

        // Close the browser
        // Feel free to comment out the line below
        // so it doesn't close too quickly
        driver.quit();
    }
}
