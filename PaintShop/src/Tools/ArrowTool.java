package Tools; 
import java.awt.BasicStroke;
//import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.Shape;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.awt.event.*;
import java.awt.geom.Line2D;
import java.awt.geom.Point2D;

import Tools.GamePanel;

public class ArrowTool extends MouseAdapter {
	
	GamePanel theCanvas ;
	int stroke ;
	Color color ;
	double curX,curY ;
	double oldX,oldY ;
	double lastX,lastY ;
	
	BufferedImage image ;
	Graphics2D g2d ;
	
	Shape line=null ;
	ArrayList<Shape> list=new ArrayList<Shape>();
	
	public ArrowTool(GamePanel theCanvas , int stroke, Color color){
		this.theCanvas=theCanvas ;
		this.stroke=stroke ;
		this.color=color ;
	}
	public void setStrokeSize(int stroke){
		this.stroke=stroke ;
	}
	public int getStrokeSize(){
		return stroke ;
	}
	public void setColor(Color color){
		this.color = color;
	}

	public void mousePressed(MouseEvent e){
		
		oldX=e.getX() ;
		oldY=e.getY() ;
		System.out.println(oldX + " " + oldY);
		
		image=theCanvas.getImage() ;
		g2d= image.createGraphics() ;
		theCanvas.setImage(image);
				
		line=new Line2D.Double(e.getPoint(),e.getPoint());
		list.add(line);
		for(Shape content : list)
			g2d.draw(content);
		
		theCanvas.repaint(); 
		theCanvas.revalidate();
	}
	
	public void mouseDragged(MouseEvent e){
		
		curX=e.getX();
		curY=e.getY();
		System.out.println(curX+ " "+ curY);
		
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(stroke));
		
		Line2D shape=(Line2D)line ;
		shape.setLine(shape.getP1(),e.getPoint());
	
		theCanvas.repaint();
		theCanvas.revalidate();
		
	}

	public void mouseReleased(MouseEvent e){
		
		lastX=e.getX() ;
		lastY=e.getY() ;
		System.out.println(lastX + " " + lastY);
		
		Line2D shape=(Line2D)line ;
		
		double angle=Math.atan2(shape.getY2()-shape.getY1(),shape.getX2()-shape.getX1() );
		
		int arrowHeight=5 ;
		int halfArrowWidth=9 ;
		
		//end
		Point2D end = shape.getP2();

		Point2D aroBase = new Point2D.Double(

		shape.getX2() - arrowHeight * Math.cos(angle),

		shape.getY2() - arrowHeight * Math.sin(angle)

		); // determine the location of middle of

		// the base of the arrow - basically move arrowHeight

		// distance back towards the starting point
		
		//end1
		Point2D end1 = new Point2D.Double(

		aroBase.getX() - halfArrowWidth * Math.cos(angle - Math.PI / 2),

		aroBase.getY() - halfArrowWidth * Math.sin(angle - Math.PI / 2));

		// locate one of the points, use angle-pi/2 to get the

		// angle perpendicular to the original line(which was 'angle')
		
		//end2
		Point2D end2 = new Point2D.Double(

		aroBase.getX() - halfArrowWidth * Math.cos(angle + Math.PI / 2),

		aroBase.getY() - halfArrowWidth * Math.sin(angle + Math.PI / 2));

		// same thing but with other side

	

		Line2D line2=new Line2D.Double(end, end2);

		Line2D line3=new Line2D.Double(end, end1);

	
		
		//list.add(line1);
		list.add(line2);
		list.add(line3);
		
		line = null;
		
		for(Shape content:list)
			g2d.draw(content);
		
		theCanvas.repaint();
		theCanvas.revalidate(); 
	}
	
}
