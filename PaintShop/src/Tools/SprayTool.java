package Tools;

import java.awt.BasicStroke;
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.Point;
import java.awt.Toolkit;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;
import java.util.Timer;
import java.util.TimerTask;



public class SprayTool extends MouseAdapter {
	final int maxIterations = 35;
	boolean hold=true;
	int oldX, oldY;
	int curX, curY;
	int tempX , tempY;
	int width1 = 10;
	int height1 = 10;
	int Stroke = 3;
	int distance = 15;
	boolean dragged= false ;
	float radx;
	float rady;
	float angle1;
	float x;
	float y;
	Color color;
	GamePanel theCanvas ;

	Graphics2D g2d ;

	BufferedImage img ;


	public SprayTool(GamePanel theCanvas, int distance, Color color){
		this.theCanvas=theCanvas ;
		this.distance = distance;
		this.color = color;
	}
	Timer timer = new Timer();
	TimerTask task;

	private class MyTimerTask extends TimerTask {


		public void run() {
			//generate a random distance from 0 to 19
			int nRand = (int)(Math.random() * distance);
			//generate a random angle from 0 to 2 pi
			double dTheta = Math.random() * 361;
			//find x and y of random dot
			int nX = (int)(oldX + nRand * Math.cos(dTheta));
			int nY = (int)(oldY + nRand * Math.sin(dTheta));

			g2d.setColor(color);
			g2d.setStroke(new BasicStroke(Stroke));
			g2d.fillOval(nX,nY,1,1);
			theCanvas.repaint();

		}
	}
	@Override
	public void mousePressed(MouseEvent e) {
		task = new MyTimerTask();

		hold = true;
		oldX = e.getX();
		oldY = e.getY();
		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);

		for (int i=0; i < maxIterations; i++) {
			//generate a random distance from 0 to 19
			int nRand = (int)(Math.random() * distance);
			//generate a random angle from 0 to 2 pi
			double dTheta = Math.random() * 361;
			//find x and y of random dot
			int nX = (int)(oldX + nRand * Math.cos(dTheta));
			int nY = (int)(oldY + nRand * Math.sin(dTheta));

			g2d.setColor(color);
			g2d.setStroke(new BasicStroke(Stroke));
			g2d.fillOval(nX,nY,1,1);
		}
		timer.scheduleAtFixedRate(task, 0, 10); 
		tempX = e.getX();
		tempY = e.getY();
		theCanvas.repaint();
		theCanvas.revalidate();


	}


	public void mouseDragged(MouseEvent e) {

		task.cancel();
		task = new MyTimerTask();
		hold = false;
		curX = e.getX();
		curY = e.getY();


		g2d.setColor(Color.BLACK);
		g2d.setStroke(new BasicStroke(Stroke));
		for (int i=0; i < maxIterations; i++) {
			//generate a random distance from 0 to 19
			int nRand = (int)(Math.random() * distance);
			//generate a random angle from 0 to 2 pi
			double dTheta = Math.random() * 361;
			//find x and y of random dot
			int nX = (int)(oldX + nRand * Math.cos(dTheta));
			int nY = (int)(oldY + nRand * Math.sin(dTheta));

			g2d.setColor(color);
			g2d.setStroke(new BasicStroke(Stroke));
			g2d.fillOval(nX,nY,1,1);
		}
		timer.scheduleAtFixedRate(task, 0, 10); 
		oldX = curX;
		oldY = curY;

		theCanvas.repaint();
		theCanvas.revalidate();

	}

	public void mouseReleased(MouseEvent e){
		task.cancel();
		hold = false;
		curX = e.getX();
		curY = e.getY();

		for (int i=0; i < maxIterations; i++) {
			//generate a random distance from 0 to 19
			int nRand = (int)(Math.random() * distance);
			//generate a random angle from 0 to 2 pi
			double dTheta = Math.random() * 361;
			//find x and y of random dot
			int nX = (int)(oldX + nRand * Math.cos(dTheta));
			int nY = (int)(oldY + nRand * Math.sin(dTheta));

			g2d.setColor(color);
			g2d.setStroke(new BasicStroke(Stroke));
			g2d.fillOval(nX,nY,1,1);
		}

		theCanvas.repaint();
		theCanvas.revalidate();
	}

	public void mouseEntered(MouseEvent e){
		Toolkit toolkit = Toolkit.getDefaultToolkit();
		Image image = toolkit.getImage("rsc\\spray-cursor.png");
		Cursor a = toolkit.createCustomCursor(image , new Point(3, 5), "");

		theCanvas.setCursor (a);
	}



	public void setStrokeSize(int distance){
		this.distance=distance;
	}
	public int getStrokeSize(){
		return Stroke;
	}
	
	public void setColor(Color color){
		this.color=color;
	}
}