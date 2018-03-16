/*
 * 
 */
package testingwebpage;

/**
 *   
 * 782307
 * Testing the application with HeliumHq 
 * Testing the Functionality of The Search Bar testing on the application.  
 */
    import static com.heliumhq.API.*;

public class testingWebTesting{
	public static void main(String... args) {
		startChrome();
		goTo("localhost.57147/Default.aspx");
		press(ENTER);           
		click("Movies");
                write("Ice Age", into("Search"));
                press(ENTER);
                killBrowser();
	}
}

/**
 * The Search Bar does not work and displays 'file not found'
 */