package Tools;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.MouseInfo;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;

public class triangleTool extends MouseAdapter  {
	int startingX;
	int startingY;
	int finalX;
	int finalY;
	Graphics2D g2d ;
	BufferedImage img ;
	int stroke=3 ;
	GamePanel theCanvas; 
	Color color;
	
	public triangleTool(GamePanel theCanvas,int stroke, Color color){

		this.theCanvas= theCanvas ;
		this.stroke=stroke ;
		this.color = color;
	}
	public void mousePressed(MouseEvent e){
		
		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(stroke));
		
		startingX=MouseInfo.getPointerInfo().getLocation().x;
		startingY=MouseInfo.getPointerInfo().getLocation().y;
	}

	public void mouseReleased(MouseEvent e){
		finalX=MouseInfo.getPointerInfo().getLocation().x;
		finalY=MouseInfo.getPointerInfo().getLocation().y;
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(stroke));
		g2d.drawLine(startingX, startingY, startingX, finalY);
		g2d.drawLine(startingX, finalY, finalX, finalY);
		g2d.drawLine(startingX,startingY,finalX,finalY);
		
		theCanvas.repaint(); 
		theCanvas.revalidate();
	}
	
	public void setStrokeSize(int stroke){
		this.stroke=stroke;
	}
	public int getStrokeSize(){
		return stroke;
	}	
	public void setColor(Color color){
		this.color=color;
	}
}
