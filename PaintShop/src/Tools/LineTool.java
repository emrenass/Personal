package Tools;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;

public class LineTool extends MouseAdapter {

	GamePanel theCanvas;
	int oldX, oldY;
	int lastX,lastY ;
	int Stroke = 3;
	Color color;

	BufferedImage img;

	Graphics2D g2d;

	public LineTool(GamePanel canvas, int Stroke, Color color){
		theCanvas = canvas;
		this.Stroke=Stroke;
		this.color=color;
	}



	public void mousePressed(MouseEvent e) {

		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);


		oldX = e.getX();
		oldY = e.getY();

		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(Stroke));
		
		theCanvas.repaint();
		theCanvas.revalidate();
		

	}
	public void mouseReleased(MouseEvent e){
		lastX=e.getX();
		lastY=e.getY();
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(Stroke));
		
		g2d.drawLine(oldX, oldY, lastX, lastY);
		
		theCanvas.repaint();
		theCanvas.revalidate();
	}
	public void mouseClicked(MouseEvent e){
		
	}

	public void setStrokeSize(int Stroke){
		this.Stroke=Stroke;
	}
	public int getStrokeSize(){
		return Stroke;
	}
	
	public void setColor(Color color){
		this.color=color;
	}

}
