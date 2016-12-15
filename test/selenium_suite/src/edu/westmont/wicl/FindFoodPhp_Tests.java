package edu.westmont.wicl;

import static org.junit.Assert.assertTrue;

import java.io.UnsupportedEncodingException;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;


public class FindFoodPhp_Tests {

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
	/* This is a regression test to make sure the database access is working okay */
	public void test_FindFoodPhp_AccessDenied() throws UnsupportedEncodingException {
		
		for(String address:state.addresses){
			state.driver.get(address+"/find-food.php");
        
			// Check the title of the page
			assertTrue(state.driver.getTitle().equals("Ally - Find Food"));
			try{
				assertTrue(!state.driver.getPageSource().toLowerCase().contains("access denied for user"));
			}
			catch(AssertionError ex){
				System.err.println("Failed on this page:"+address);
				throw(ex);
			}
		}
	}
}
