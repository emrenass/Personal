package Tools;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;


public class PenTool extends MouseAdapter {
	
	int oldX, oldY;
	int curX, curY;
	int Stroke = 3;
	Color color;
	BufferedImage img;
	
	GamePanel theCanvas;
	
	Graphics2D g2d;
	
	public PenTool(GamePanel canvas, int Stroke, Color color){
		
		theCanvas = canvas;
		this.Stroke = Stroke;
		this.color = color;
	}
	
	@Override
	public void mousePressed(MouseEvent e) {
		
		img = theCanvas.getImage();
		g2d = (Graphics2D) img.createGraphics();
		theCanvas.setImage(img);
		
		oldX = e.getX();
		oldY = e.getY();
		
	}
	
	@Override
	public void mouseDragged(MouseEvent e) {
		
		
		curX = e.getX();
		curY = e.getY();
		
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(Stroke));
		g2d.drawLine(oldX,oldY,curX,curY);
		
		oldX = curX;
		oldY = curY;
		
		theCanvas.repaint();
		theCanvas.revalidate();
		
	}
	
	@Override
	public void mouseReleased(MouseEvent e) {
		
		curX = e.getX();
		curY = e.getY();
		
		
		
		theCanvas.add1(img);
		theCanvas.setImage(img);
		theCanvas.repaint();
		theCanvas.revalidate();		
		theCanvas.repaint();
		theCanvas.revalidate();
	}
	
	public void mouseClicked(MouseEvent e){
		//theCanvas.clear();
	}
	
	public void setStrokeSize(int Stroke){
		this.Stroke=Stroke;
	}
	public int getStrokeSize(){
		return Stroke;
	}
	
	public void setColor(Color color){
		this.color = color;
	}

}
