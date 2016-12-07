package edu.westmont.wicl;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;


public class SampleTests {
	
	static Boolean testProduction = false;
	static Boolean testStaging = false;
	static Boolean testLocal = true;
	static WebDriver driver;
	static List<String> addresses = new ArrayList<String>();
	static Map<String,String> allpages = new HashMap<String,String>();

	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		if(testLocal){
			addresses.add("http://localhost:8080");
		}
		if(testProduction){
			addresses.add("http://djp3.westmont.edu/ally/ally");
		}
		if(testStaging){
			addresses.add("http://djp3.westmont.edu/ally_staging/ally");
		}
		
		if(System.getProperty("os.name").contains("indows")){
			System.setProperty("webdriver.chrome.driver", "../chromedriver.exe");
		}
		else{
			System.setProperty("webdriver.chrome.driver", "../chromedriver");
		}

		allpages.put("/about.php","Ally - About");
		allpages.put("/feedback.php","Ally - Feedback");
		allpages.put("/find-food.php","Ally - Find Food");
		allpages.put("/find-other.php","Ally - Find Other Resources");
		allpages.put("/index.php","Ally - Santa Barbara FoodBank");
		allpages.put("/map-many.php","Ally - Partner Locator");
		allpages.put("/map-one.php","Ally - Partner Locator");
		allpages.put("/share.php","Ally - Share");
		
        // Create a new instance of the Google driver
        // Notice that the remainder of the code relies on the interface, 
        // not the implementation.
        driver = new ChromeDriver();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		driver.quit();
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	
	@Test
	public void testSystemUp() {
		
		//Test that the system is up and that all the static variables are correct
		for(String address:addresses){
			Map<String,String> pagesToTest = new HashMap<String,String>();
			pagesToTest.putAll(allpages);

			for (Entry<String, String> e : pagesToTest.entrySet()) {
				driver.get(address + e.getKey());

				try{
					// Check the title of the page
					assertTrue(driver.getTitle().equals(e.getValue()));
				}
				catch(AssertionError ex){
					System.err.print("Failed on this page:"+e.toString());
					throw(ex);
				}
					
					
			}
		}
	}
	

	@Test
	public void test_IndexPhp_ButtonFindFood() {
		
		for(String address:addresses){
			driver.get(address);
        
			// Check the title of the page
			assertTrue(driver.getTitle().equals("Ally - Santa Barbara FoodBank"));

			// Find the text input element by its name
			WebElement element = driver.findElement(By.id("find_food_button"));

			element.click();

			assertTrue(driver.getTitle().equals("Ally - Find Food"));
		}
	}
	
	
	@Test
	public void test_IndexPhp_ButtonFindOtherResources() {
		
		for(String address:addresses){
			driver.get(address);
        
			// Check the title of the page
			assertTrue(driver.getTitle().equals("Ally - Santa Barbara FoodBank"));

			// Find the text input element by its name
			WebElement element = driver.findElement(By.id("find_other_resources_button"));

			// Enter something to search for
			element.click();

			// Check the title of the page
			assertTrue(driver.getTitle().equals("Ally - Find Other Resources"));
		}
	}
	
	@Test
	public void test_IndexPhp_ButtonDonate() {
		
		for(String address:addresses){
			driver.get(address);
        
			assertTrue(driver.getTitle().equals("Ally - Santa Barbara FoodBank"));
        
			WebElement element =  driver.findElement(By.id("donate_button"));
        
			JavascriptExecutor executor = (JavascriptExecutor)driver;
			executor.executeScript("arguments[0].click();", element);
        
			// Wait for the page to load, timeout after 10 seconds
			(new WebDriverWait(driver, 10)).until(new ExpectedCondition<Boolean>() {
				public Boolean apply(WebDriver d) {
					return d.getTitle().toLowerCase().startsWith("donate");
				}
			});
        
			assertTrue(driver.getTitle().equals("Donate to Foodbank of Santa Barbara County | Classy"));
		}
	}

	@Test
	public void test_ButtonHome() {
		for (String address : addresses) {
			Map<String,String> pagesToTest = new HashMap<String,String>();
			pagesToTest.putAll(allpages);
			pagesToTest.remove("/index.php"); // The home page doesn't have a home button

			for (Entry<String, String> e : pagesToTest.entrySet()) {
				driver.get(address + e.getKey());

				// Check the title of the page
				assertTrue(driver.getTitle().equals(e.getValue()));

				// Find the home button by its name
				WebElement element = driver.findElement(By.id("home_button"));

				// Click the found button
				element.click();

				// Wait for the page to load, timeout after 10 seconds
				(new WebDriverWait(driver, 10)).until(new ExpectedCondition<Boolean>() {
					public Boolean apply(WebDriver d) {
						return d.getTitle().toLowerCase().startsWith("ally");
					}
				});

				// Check the title of the page
				assertTrue(driver.getTitle().equals("Ally - Santa Barbara FoodBank"));
			}
		}
	}
}
