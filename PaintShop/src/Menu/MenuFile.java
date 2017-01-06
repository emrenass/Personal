package Menu;

import java.awt.Color;
import java.awt.Component;
import java.awt.Dimension;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JLabel;
import javax.swing.filechooser.FileNameExtensionFilter;

import Tools.GamePanel;

public class MenuFile {
	public static int imageWidth;
	public static int imageHeight;
	public static Image image1;
	public static BufferedImage image;
	GamePanel dr;

	//Create New DrawPanel
	public static void newPage(GamePanel dr, int x, int y, int width, int height,Color color) {
		dr.clear(width,height,color);
		//dr.setLocation(x, y);
		dr.setPreferredSize(new Dimension(width, height));
	}

	//Opening a file from Menu tab
	public static JLabel Open(Component item){
		FileNameExtensionFilter filter = new FileNameExtensionFilter ("Image Files", "jpg", "JPEG", "png", "gif", "bmp");
		JFileChooser fileChooser = new JFileChooser();
		fileChooser.addChoosableFileFilter(filter);
		fileChooser.setAcceptAllFileFilterUsed(false);
		JLabel label = new JLabel();
		int retVal = fileChooser.showOpenDialog(item);
		image = null;
		if(retVal == JFileChooser.APPROVE_OPTION) {
			File file = fileChooser.getSelectedFile();


			try {
				image = ImageIO.read(file);
				BufferedImage c = new BufferedImage(image.getWidth(), image.getHeight(), BufferedImage.TYPE_INT_ARGB);
				Graphics2D g = c.createGraphics();
				imageWidth = image.getWidth();
				imageHeight = image.getHeight();
				g.drawImage(image, 0, 0, null);
			} 
			catch (IOException e) {
				e.printStackTrace();
			}
			label.setIcon(new ImageIcon());
			label.setVisible(true);
		}
		return label;
	}
	
	//Save the image where we get it from the last BufferedImage of list
	public static void save(GamePanel panel) throws IOException{
		String destination = "default";
		File yourFolder = new File(destination);
		JFileChooser fc = new JFileChooser();
		fc.setCurrentDirectory(new java.io.File("."));
		fc.setFileSelectionMode(JFileChooser.FILES_ONLY);
		fc.setSelectedFile(yourFolder);
		if(!fc.getSelectedFile().getName().endsWith(".png"))
			destination += ".png";
		yourFolder = new File(destination);
		fc.setSelectedFile(yourFolder);
		fc.showSaveDialog(null);

		try {
			BufferedImage bi = panel.getLast();
			ImageIO.write(bi, "png", fc.getSelectedFile());
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	//Exit from program from menu bar
	public static void Exit(){
		System.exit(0);
	}


}
