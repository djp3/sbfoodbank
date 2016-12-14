package edu.westmont.wicl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class TestState {
	public Boolean testProduction = false;
	public Boolean testStaging = false;
	public Boolean testLocal = true;
	public WebDriver driver;
	public List<String> addresses = new ArrayList<String>();
	public Map<String, String> allpages = new HashMap<String, String>();
	
	TestState(){
		if (testLocal) {
			addresses.add("http://localhost:8080");
		}
		if (testProduction) {
			addresses.add("http://djp3.westmont.edu/ally/ally");
		}
		if (testStaging) {
			addresses.add("http://djp3.westmont.edu/ally_staging/ally");
		}

		if (System.getProperty("os.name").contains("indows")) {
			System.setProperty("webdriver.chrome.driver", "../chromedriver.exe");
		} else {
			System.setProperty("webdriver.chrome.driver", "../chromedriver");
		}

		allpages.put("/about.php", "Ally - About");
		allpages.put("/feedback.php", "Ally - Feedback");
		allpages.put("/find-food.php", "Ally - Find Food");
		allpages.put("/find-other.php", "Ally - Find Other Resources");
		allpages.put("/index.php", "Ally - Santa Barbara FoodBank");
		allpages.put("/map-many.php", "Ally - Partner Locator");
		allpages.put("/map-one.php", "Ally - Partner Locator");
		allpages.put("/share.php", "Ally - Share");
		allpages.put("/how-to-use.php", "Ally - How To Use");

		// Create a new instance of the Google driver
		// Notice that the remainder of the code relies on the interface,
		// not the implementation.
		driver = new ChromeDriver();
	}

	public void shutdown() {
		driver.quit();
	}
}
