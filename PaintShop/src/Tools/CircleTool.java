package Tools; 
import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.event.*;
import Tools.GamePanel;

public class CircleTool extends MouseAdapter {
	
	int oldX,oldY,lastX,lastY ;
	Graphics2D g2d ;
	BufferedImage img ;
	int stroke=3 ;
	GamePanel theCanvas; 
	Color color;
	
	public CircleTool(GamePanel theCanvas,int stroke, Color color){
		
		this.theCanvas= theCanvas ;
		this.stroke=stroke ;
		this.color = color;
	}
	@Override
	public void mousePressed(MouseEvent e){
		
		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);
		
		oldX=e.getX();
		oldY=e.getY();
		System.out.println(oldX + " " + oldY );
		
		
		theCanvas.repaint();
		theCanvas.revalidate();
		
		
	}
	@Override
	public void mouseReleased(MouseEvent e){
		
		lastX=e.getX() ;
		lastY=e.getY() ;
		System.out.println(lastX + " " + lastY);
		
		// diameter
		int w= (int) Math.sqrt( Math.pow((int)(lastX-oldX), 2)+ Math.pow((int)(lastY-oldY), 2)) ;
		
		// center coordinates
		int m_x=(oldX+lastX)/2 ;
		int m_y=(oldY+lastY)/2 ;
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(stroke));
		
		g2d.drawOval(m_x-w/2, m_y-w/2, w, w);
		
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