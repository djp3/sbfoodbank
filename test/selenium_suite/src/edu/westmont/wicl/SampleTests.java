package edu.westmont.wicl;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

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
	
	static Boolean testProduction = true;
	static Boolean testStaging = true;
	static Boolean testLocal = true;
	static WebDriver driver;
	static List<String> addresses = new ArrayList<String>();

	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	//	if(testLocal){
		//	addresses.add("http://localhost:8080");
	//	}
		if(testProduction){
			addresses.add("http://djp3.westmont.edu/ally/ally/");
		}
		if(testStaging){
			addresses.add("http://djp3.westmont.edu/ally_staging/ally/");
		}
		
		System.setProperty("webdriver.chrome.driver", "../chromedriver");
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
		
		for(String address:addresses){
			driver.get(address);
        
			assertTrue(driver.getTitle().contains("Ally"));
		}
	}
	
	@Test
	public void testCallingNorth(){
		//Vist the ally website
		for(String address:addresses){
			driver.get(address);
        
			assertTrue(driver.getTitle().contains("Ally"));
		}
		
		// Click on The thing
		WebElement button = driver.findElement(By.xpath("/html/body/div[2]/div[3]/div[1]/a"));
		
		JavascriptExecutor exec = (JavascriptExecutor)driver;
		exec.executeScript("arguments[0].click()", button);
		
		assertTrue(driver.getPageSource().contains("tel:1-805-937-3422"));
		
	}

}
