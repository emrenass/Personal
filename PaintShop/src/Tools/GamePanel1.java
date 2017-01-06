package Tools;


import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import java.awt.image.BufferedImage;
import java.awt.image.ImageObserver;
import java.util.LinkedList;

import javax.swing.JLabel;
import javax.swing.JPanel;

//import Tools.PenTool;

public class GamePanel1 extends JPanel {
static int xPos=0;
static int yPos=0;
boolean brushBoolean = false;
boolean lineBoolean = false;
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	int mouseX, mouseY, oldX, oldY;
	private Graphics2D g2d;
	int width,height;
	private static LinkedList<BufferedImage> list ;

	private BufferedImage image = new BufferedImage(1400, 1400, BufferedImage.TYPE_INT_ARGB);;
	public static Color backgroundColor = Color.red;
	
	public GamePanel1() {

		//a = new PenTool(this);
		list = new LinkedList<BufferedImage>();
		setLayout(null);
		setDoubleBuffered(true);
		setBackground(Color.RED);
		//setOpaque(true);
		//addMouseListener(new PenTool(this));
		//addMouseMotionListener(new PenTool(this));
		/*addMouseListener(new MouseAdapter() {
		      public void mousePressed(MouseEvent e) {
		        // save coord x,y when mouse is pressed
		        oldX = e.getX();
		        oldY = e.getY();
		        System.out.println(oldX+" "+oldY);
		        g2d.setColor(Color.white);
		        g2d.drawRect(oldX,oldY,30,30);
		        //list.add(image);
		        repaint();
		       		        
		      }
		      
		      public void mouseReleased(MouseEvent e){
		    	  //clear();
		    	  mouseX = e.getX();
		    	  mouseY = e.getY();
		    	  
		    	 
		    	  g2d.setColor(Color.blue);
		    	  //setImage(image);
		    	  g2d.drawLine(oldX,oldY,mouseX,mouseY);
		    	 // g2d.drawImage(image, 0, 10, null);
		    	  BufferedImage temp = list.pollFirst();
		    	  a();
		    	  g2d.drawImage(temp, 0, 0, null);
		    	  
		    	  a();
		    	  repaint();
		      }
		    });
		addMouseMotionListener(new MouseAdapter(){
			public void mouseDragged(MouseEvent e){
				mouseX = e.getX();
				mouseY = e.getY();
				g2d.drawLine(oldX, oldY, mouseX, mouseY);
				oldX=e.getX();
		    	oldY=e.getY();
				repaint();
				
			}
		});*/
		
		setVisible(true);
	}
	
	
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		//g2d = (Graphics2D) g;
	    if (image != null) {
	      // image to draw null ==> we create
	      //image = (BufferedImage)createImage(getWidth(), getHeight());
	      g2d = image.createGraphics();
	      
	      // enable antialiasing
	      g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
	      // clear draw area
	      //System.out.print(image.getHeight());
	      //clear();
	      setBackground(backgroundColor);
	      //g2d.setPaint(Color.red);
		    // draw white on entire draw area to clear
		    //g2d.fillRect(0, 0, image.getWidth(), image.getHeight());
		    g2d.setPaint(Color.blue);
		    list.add(image);
		    //System.out.println(list.toString());
		    g.drawImage(list.get(list.size()-1), 0, 0, null);
	     // a();
	    }
	    
	    
	  }
	public void addLabel(JLabel label){
		add(label);
		repaint();
	}
	
	public void setBackgroundColor(Color color){
		backgroundColor=color;
		repaint();
	}

	 public void clear(){
		 /*list.removeAll(list);
		 g2d.setPaint(Color.white);
		    // draw white on entire draw area to clear
		 g2d.fillRect(0, 0, 1500, 1500);
		 g2d.setPaint(backgroundColor);
		    
		 repaint();*/
		 image = new BufferedImage(1920, 1080, BufferedImage.TYPE_INT_ARGB);
		 g2d = image.createGraphics();
		 g2d.setPaint(backgroundColor);
		 //g2d.clearRect(0, 0, width, height);
		
		    // draw white on entire draw area to clear	 
		 list.removeAll(list);
		 list.add(image);
		 
		 g2d.drawImage(image,0,0,null);
		 
		 g2d.setPaint(backgroundColor);
		    
		 repaint();
	 }
	 
	 public void clearLast(){
		 if(!list.isEmpty()){
			 
			 
			 //list.remove(list.size()-1);
			 g2d = list.pollLast().createGraphics();
			 //g2d.setPaint(Color.white);
			    // draw white on entire draw area to clear
			 g2d.drawImage(list.get(list.size()-1), 0, 0, null);
			 //g2d.setPaint(backgroundColor);
			    
			 repaint();
		 }
		 
	 }
	 public void add1(BufferedImage img){
		 
		 g2d.drawImage(img, 0, 0, (ImageObserver) image);
		 repaint();
		 
	 }
	  // now we create exposed methods
	 

	public BufferedImage getImage() {
		// TODO Auto-generated method stub
		return image;
	}

	public void setImage(BufferedImage img) {
		// TODO Auto-generated method stub
		image = img;
	}
	
	public static void makeDragablePanel(GamePanel panel) {
		panel.addMouseListener(new MouseAdapter(){
			public void mousePressed(MouseEvent me){

				xPos = me.getX();
				yPos = me.getY();
			}
		});
		panel.addMouseMotionListener(new MouseMotionAdapter(){
			public void mouseDragged(MouseEvent me){
				panel.setLocation(panel.getX()+me.getX()-xPos,panel.getY()+me.getY()-yPos);
			}
		});
	}
	

	public LinkedList<BufferedImage> getList(){
		return list;
	}
	
}
