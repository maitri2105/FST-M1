package Activities;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import java.awt.*;
import java.util.concurrent.TimeUnit;

public class Activity5 {
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
    public void getNavigationMenuColors() {
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

        //Get the navigation menu color
        WebElement navigationBar = driver.findElement(By.xpath("//div[@id='toolbar']"));
        String s = navigationBar.getCssValue("color");
        System.out.println("The color is : "+s);
    }

    @AfterClass
    public void cleanUp() {

        // Close the browser
        // Feel free to comment out the line below
        // so it doesn't close too quickly
        driver.quit();
    }
}
