package Tools;

import java.awt.Color;

import javax.swing.JColorChooser;
import javax.swing.JPanel;


public class ToolsColor {
	public static Color shade;
	
	//For color spectrum
	public static Color EditColor(){
		shade = Color.white;
		JPanel colorPanel = new JPanel();;
		shade = JColorChooser.showDialog(null, "Pick a Color!",
		shade);
		colorPanel.setBackground(shade);
		return shade;
	}
	
	public static Color getColor(){
		return shade;
	}
	
	
}
