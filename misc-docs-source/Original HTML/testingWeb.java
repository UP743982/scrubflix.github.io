/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testingwebpage;

/**
 *
 * 782307
 */
    import static com.heliumhq.API.*;

public class testingWeb{
	public static void main(String... args) {
		startChrome();
		goTo("file:///C:/Users/Lenovo/Documents/INSE/scrubflix.github.io-master%20(1)/scrubflix.github.io-master/index.html");
		press(ENTER);           
		click("SCRUBFLIX");
                click("Movies");
                killBrowser();
	}
}
