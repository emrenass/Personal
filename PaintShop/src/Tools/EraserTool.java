package Tools;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;


/*
 * Basically this tool take the backgroundColor and draw a square to the mainDrawArea. The trick of this method is the square do not start from
 * the cursor's top instead, it calculate the stroke and bring the cursor middle of the square so user will not get any difficulty while erasing.
 */
public class EraserTool extends MouseAdapter {
	int oldX, oldY;
	int curX, curY;
	int Stroke = 3;
	
	BufferedImage img;
	Color color;
	GamePanel theCanvas;
	
	Graphics2D g2d;
	
	
	public EraserTool(GamePanel canvas, int Stroke, Color color){
		
		theCanvas = canvas;
		this.Stroke = Stroke;
		this.color = color;
	}
	
	@Override
	public void mousePressed(MouseEvent e) {
		
		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);
		
		oldX = e.getX()-Stroke/2;
		oldY = e.getY()-Stroke/2;
		g2d.setColor(color);
		g2d.fillRect(oldX,oldY,Stroke,Stroke);
	}
	
	@Override
	public void mouseDragged(MouseEvent e) {
		
		curX = e.getX()-Stroke/2;
		curY = e.getY()-Stroke/2;
		
		try{
		g2d.setColor(color);
		g2d.setStroke(new BasicStroke(Stroke));
		g2d.fillRect(curX,curY,Stroke,Stroke);
		}catch(NullPointerException error){
			System.out.println("Null Pointer");
		}
		
		oldX = curX;
		oldY = curY;
		
		theCanvas.repaint();
		theCanvas.revalidate();
		
	}
	
	@Override
	public void mouseReleased(MouseEvent e) {
		
		curX = e.getX();
		curY = e.getY();
		
		theCanvas.repaint();
		theCanvas.revalidate();
	}
	
	public void mouseClicked(MouseEvent e){
		
	}
	
	public void setStrokeSize(int Stroke){
		this.Stroke=Stroke;
		g2d.setStroke(new BasicStroke(Stroke));
	}
	public int getStrokeSize(){
		return Stroke;
	}
	
	public void setColor(Color color){
		this.color = color;
	}

}

