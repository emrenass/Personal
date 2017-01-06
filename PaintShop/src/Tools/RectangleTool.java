package Tools;
/*
import java.awt.Graphics2D;
import java.awt.BasicStroke ;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.awt.Color;
*/
import java.awt.* ;
import java.awt.event.*;
import java.awt.image.*;


public class RectangleTool extends MouseAdapter {
	
	
	int oldX, oldY;
	int curX, curY;
	int lastX,lastY ;
	int Stroke = 3;
	boolean dragged= false ;
	Color color;
	GamePanel theCanvas ;
	
	Graphics2D g2d ;
	
	BufferedImage img ;
	

	
	public RectangleTool(GamePanel theCanvas, int Stroke, Color color){
		this.theCanvas=theCanvas ;
		this.Stroke = Stroke;
		this.color = color;
	}
	
	@Override
	public void mousePressed(MouseEvent e) {
		
		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);
		
		dragged=true ;
		
		oldX = e.getX();
		oldY = e.getY();
		
		theCanvas.repaint();
		theCanvas.revalidate();
	}

	
	@Override
	public void mouseDragged(MouseEvent e) {
		
		curX = e.getX();
		curY = e.getY();
		System.out.println(curY+" "+curX+" "+ oldX + " " + oldY);
				
		theCanvas.repaint();
		theCanvas.revalidate();			
		
	}
	public void	mouseReleased(MouseEvent e){
		lastX=e.getX();
		lastY=e.getY();
		int w=Math.abs(lastX-oldX);
		int h=Math.abs(lastY-oldY);
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(Stroke));
		
		if(lastX<oldX && lastY<oldY)
			g2d.drawRect(lastX, lastY, w, h);
		if(lastY<oldY && lastX>oldX)
			g2d.drawRect(oldX, lastY, w, h);
		if(lastX<oldX && lastY>oldY)
			g2d.drawRect(lastX, oldY, w, h);
		if(lastX>oldX && lastY>oldY)
			g2d.drawRect(oldX, oldY, w, h);
		
		theCanvas.repaint();
		theCanvas.revalidate();
		
	}
	
	public void mouseClicked(MouseEvent e){
	}
	
	public void setStrokeSize(int stroke){
		this.Stroke=stroke;
		g2d.setStroke(new BasicStroke(Stroke));
	}
	public int getStrokeSize(){
		return Stroke;
	}
	public void setColor(Color color){
		this.color=color;
	}
	
}
