package edu.westmont.wicl;

import static org.junit.Assert.assertTrue;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.WebDriverWait;


public class System_Tests {
	
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
	public void testSystemUp() {
		
		//Test that the system is up and that all the static variables are correct
		for(String address:state.addresses){
			Map<String,String> pagesToTest = new HashMap<String,String>();
			pagesToTest.putAll(state.allpages);

			for (Entry<String, String> e : pagesToTest.entrySet()) {
				state.driver.get(address + e.getKey());

				try{
					// Check the title of the page
					assertTrue(state.driver.getTitle().equals(e.getValue()));
				}
				catch(AssertionError ex){
					System.err.print("Failed on this page:"+address+" "+e.toString()+"\n");
					throw(ex);
				}
					
					
			}
		}
	}
	

	@Test
	public void test_ButtonHome() {
		for (String address : state.addresses) {
			Map<String,String> pagesToTest = new HashMap<String,String>();
			pagesToTest.putAll(state.allpages);
			pagesToTest.remove("/index.php"); // The home page doesn't have a home button

			for (Entry<String, String> e : pagesToTest.entrySet()) {
				state.driver.get(address + e.getKey());

				// Check the title of the page
				assertTrue(state.driver.getTitle().equals(e.getValue()));

				// Find the home button by its name
				WebElement element = state.driver.findElement(By.id("home_button"));

				// Click the found button
				element.click();

				// Wait for the page to load, timeout after 10 seconds
				(new WebDriverWait(state.driver, 10)).until(new ExpectedCondition<Boolean>() {
					public Boolean apply(WebDriver d) {
						return d.getTitle().toLowerCase().startsWith("ally");
					}
				});

				// Check the title of the page
				assertTrue(state.driver.getTitle().equals("Ally - Santa Barbara FoodBank"));
			}
		}
	}
	
	@Test
	public void test_ButtonFeedback() {
		for (String address : state.addresses) {
			Map<String,String> pagesToTest = new HashMap<String,String>();
			pagesToTest.putAll(state.allpages);
			pagesToTest.remove("/feedback.php"); // The feedback page doesn't have a feedback button

			for (Entry<String, String> e : pagesToTest.entrySet()) {
				state.driver.get(address + e.getKey());

				// Check the title of the page
				assertTrue(state.driver.getTitle().equals(e.getValue()));

				// Find the home button by its name
				WebElement element = state.driver.findElement(By.id("feedback_button"));

				// Click the found button
				element.click();

				// Wait for the page to load, timeout after 10 seconds
				(new WebDriverWait(state.driver, 10)).until(new ExpectedCondition<Boolean>() {
					public Boolean apply(WebDriver d) {
						return d.getTitle().toLowerCase().startsWith("ally");
					}
				});

				// Check the title of the page
				assertTrue(state.driver.getTitle().equals("Ally - Feedback"));
			}
		}
	}
}
