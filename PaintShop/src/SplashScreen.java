import java.awt.*;
import javax.swing.*;
 
public class SplashScreen extends JWindow {
     
    private int duration;
     
    //Constructor
    public SplashScreen(int d) {
        duration = d;
    }
    
    public void showSplash() {
        JPanel content = (JPanel)getContentPane();
        content.setBackground(Color.white);
         
        //This for method setSize and setLocation of the Splash Scren
        int width = 575;
        int height =130;
        Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (screen.width-width)/2;
        int y = (screen.height-height)/2;
        setBounds(x,y,width,height);
         
        // Build the splash screen
        JLabel label = new JLabel(new ImageIcon("rsc\\Splash.gif"));
        JLabel copyrt = new JLabel
                ("Copyright 2015, PaintShoper", JLabel.CENTER);
        copyrt.setFont(new Font("Sans-Serif", Font.BOLD, 12));
        content.add(label, BorderLayout.CENTER);
        content.add(copyrt, BorderLayout.SOUTH);
        Color oraRed = new Color(156, 20, 20,  255);
        content.setBorder(BorderFactory.createLineBorder(oraRed, 10));
         
        // Make it visible
        setVisible(true);
         
        // Wait for "duration" time
        try { Thread.sleep(duration); } catch (Exception e) {}
        
        // Make it invisible
        setVisible(false);
         
    }
}