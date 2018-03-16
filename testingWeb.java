/*
 * 
 */
package testingwebpage;

/**
 *   
 * 782307
 * Testing the application with HeliumHq
 */
    import static com.heliumhq.API.*;

public class testingWeb{
	public static void main(String... args) {
		startChrome();
		goTo("localhost.57147/Default.aspx");
		press(ENTER);           
		click("SCRUBFLIX");
                click("Movies");
                killBrowser();
	}
}
