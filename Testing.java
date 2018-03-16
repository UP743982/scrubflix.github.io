
import static com.heliumhq.API.ENTER;
import static com.heliumhq.API.click;
import static com.heliumhq.API.goTo;
import static com.heliumhq.API.into;
import static com.heliumhq.API.press;
import static com.heliumhq.API.startChrome;
import static org.openqa.selenium.lift.Finders.image;

/*
 * To 
 */

/** Testing using heliumhq showing the functionality of the website
 *
 * @au
 */
public class testingWebTwo 
{
 public static void main(String... args) {
		startChrome();
                goTo("localhost.57147/Default.aspx");
                press(ENTER); 
                click("Top20");
                click("The Dark Knight");
                click("Genre");
                click(Button("Horror"));
                
                
                
                
                
                
                
                
                
                        
    
    
}
