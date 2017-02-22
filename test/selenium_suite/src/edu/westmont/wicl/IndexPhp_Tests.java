package edu.westmont.wicl;

import static org.junit.Assert.assertTrue;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;


public class IndexPhp_Tests {
	
	static TestState state;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		state = new TestState();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		state.shutdown();
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}
	

	@Test
	public void test_IndexPhp_ButtonFindFood() {
		
		for(String address:state.addresses){
			state.driver.get(address);
        
			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));

			// Find the text input element by its name
			WebElement element = state.driver.findElement(By.id("find_food_button"));

			//Click element
			JavascriptExecutor executor = (JavascriptExecutor)state.driver;
			executor.executeScript("arguments[0].click();", element);
			
			assertTrue(state.driver.getTitle().equals("Ally - Find Food"));
		}
	}
	
	
	@Test
	public void test_IndexPhp_ButtonFindOtherResources() {
		
		for(String address:state.addresses){
			state.driver.get(address);
        
			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));

			// Find the text input element by its name
			WebElement element = state.driver.findElement(By.id("find_other_resources_button"));

			JavascriptExecutor executor = (JavascriptExecutor)state.driver;
			executor.executeScript("arguments[0].click();", element);

			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Find Other Resources"));
		}
	}
	
	@Test
	public void test_IndexPhp_HowToUseAlly_Button() {
		
		for(String address:state.addresses){
			state.driver.get(address);
        
			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));

			// Find the text input element by its name
			WebElement element = state.driver.findElement(By.id("how_to_use_button"));

			//Click element
			JavascriptExecutor executor = (JavascriptExecutor)state.driver;
			executor.executeScript("arguments[0].click();", element);
			
			assertTrue(state.driver.getTitle().equals("Ally - How To Use"));
		}
	}
	

	@Test
	public void test_IndexPhp_ButtonCallingNorth(){
		for(String address:state.addresses){
			state.driver.get(address);
        
			assertTrue(state.driver.getTitle().contains("Ally"));
		
			WebElement button = state.driver.findElement(By.id("call_north_county_foodbank_button"));
		
			JavascriptExecutor exec = (JavascriptExecutor)state.driver;
			exec.executeScript("arguments[0].click()", button);
		
			assertTrue(state.driver.getPageSource().contains("tel:1-805-937-3422"));
		}
	}
	
	@Test
	public void test_IndexPhp_ButtonCallingSouth(){
		for(String address:state.addresses){
			state.driver.get(address);
        
			assertTrue(state.driver.getTitle().contains("Ally"));
		
			WebElement button = state.driver.findElement(By.id("call_south_county_foodbank_button"));
		
			JavascriptExecutor exec = (JavascriptExecutor)state.driver;
			exec.executeScript("arguments[0].click()", button);
		
			assertTrue(state.driver.getPageSource().contains("tel:1-805-967-5741"));
		}
	}
	
	@Test
	public void test_IndexPhp_ButtonDonate() {
		
		for(String address:state.addresses){
			state.driver.get(address);
        
			assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));
        
			WebElement element =  state.driver.findElement(By.id("donate_button"));
        
			JavascriptExecutor executor = (JavascriptExecutor)state.driver;
			executor.executeScript("arguments[0].click();", element);
        
			// Wait for the page to load, timeout after 10 seconds
			(new WebDriverWait(state.driver, 10)).until(new ExpectedCondition<Boolean>() {
				public Boolean apply(WebDriver d) {
					return d.getTitle().toLowerCase().startsWith("donate");
				}
			});
        
			assertTrue(state.driver.getTitle().equals("Donate to Foodbank of Santa Barbara County | Classy"));
		}
	}
	
	@Test
	public void test_IndexPhp_ButtonAbout() {
		
		for(String address:state.addresses){
			state.driver.get(address);
        
			assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));
        
			WebElement element =  state.driver.findElement(By.id("about_button"));
        
			JavascriptExecutor executor = (JavascriptExecutor)state.driver;
			executor.executeScript("arguments[0].click();", element);
        
			// Wait for the page to load, timeout after 10 seconds
			(new WebDriverWait(state.driver, 10)).until(new ExpectedCondition<Boolean>() {
				public Boolean apply(WebDriver d) {
					return d.getTitle().toLowerCase().startsWith("ally - about");
				}
			});
        
			assertTrue(state.driver.getTitle().equals("Ally - About"));
		}
	}
}