package edu.westmont.wicl;

import static org.junit.Assert.assertTrue;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.UUID;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;


public class SharePhp_Tests {

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
	public void test_SharePhp_URL_Info() throws UnsupportedEncodingException {
		
		String infoText = "foo-"+UUID.randomUUID();
		
		for(String address:state.addresses){
			state.driver.get(address+"/share.php?info="+URLEncoder.encode(infoText, "UTF-8"));
        
			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Share"));

			// Find the text input element by its name
			WebElement element = state.driver.findElement(By.id("textid"));
			
			assertTrue(element.getText().contains(infoText));
		}
	}
}
