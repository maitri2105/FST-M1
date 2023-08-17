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

public class Activity9 {
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
    public void getMenuNameAndUser() throws InterruptedException {
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

        //Validate table traverse in Leads page
        WebElement leadsLink = driver.findElement(By.xpath("//span/a[contains(text(),'Sales')]/ancestor::span//ul/li/a[contains(text(),'Leads')]"));
        Actions a = new Actions(driver);
        a.moveToElement(salesHeader).click().moveToElement(leadsLink).click().build().perform();
        Thread.sleep(3000);

        WebElement leadsPageHeader = driver.findElement(By.xpath("//h2[contains(text(),'  Leads ')]"));
        Assert.assertTrue(leadsPageHeader.isDisplayed());

        List<WebElement> rows = driver.findElements(By.xpath("//table[@class='list view table-responsive']/tbody/tr"));
        System.out.println("Name"+'\t'+'\t'+'\t'+'\t'+'\t'+'\t'+"User");
        for (int i=1; i<=rows.size();i++){
            System.out.print(driver.findElement(By.xpath("//table[@class='list view table-responsive']/tbody/tr["+i+"]/td[3]")).getText()+'\t'+'\t'+'\t'+'\t'+'\t'+'\t');
            System.out.println(driver.findElement(By.xpath("//table[@class='list view table-responsive']/tbody/tr["+i+"]/td[8]")).getText());
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
