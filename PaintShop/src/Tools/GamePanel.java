package Tools;


import java.awt.Color;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import java.awt.image.BufferedImage;
import java.util.ArrayList;

import javax.swing.JLabel;
import javax.swing.JPanel;

//import Tools.PenTool;

public class GamePanel extends JPanel {
static int xPos=0;
static int yPos=0;
boolean brushBoolean = false;
boolean lineBoolean = false;
boolean a = true;
	/**
	 * 
	 */
	//private static final long serialVersionUID = 1L;
	int mouseX, mouseY, oldX, oldY;
	private Graphics2D g2d;
	int width,height;
	private ArrayList<BufferedImage> list ;

	private BufferedImage image ;
	public static Color backgroundColor = Color.white;
	
	
	public GamePanel() {



		list = new ArrayList<BufferedImage>();
		setLayout(null);


		setDoubleBuffered(true);
		setBackground(Color.RED);


		list.add(image);
		setVisible(true);
	}
	
	
	public void paintComponent(Graphics g) {
		super.paintComponent(g);
		g2d = (Graphics2D) g;
	    if (this.image != null) {
	    	
	      
	      g2d = image.createGraphics();
	      
	     
	      g2d.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
	      
		   
		    
		   
		    if(a){
		    	
		    	g.drawImage(image, 0, 0, backgroundColor, null);
		    	
		    }else{
		    	
		    	g2d = list.get(list.size()-1).createGraphics();
		    	
		    	g.drawImage(list.get(list.size()-1), 0, 0, backgroundColor, null);
		    	a=true;
		    }
		    	
	        
		    
		    
		    g2d.dispose();
		    
	     
	    } else{
	    	image = new BufferedImage(this.getWidth(), this.getHeight(),BufferedImage.TYPE_INT_ARGB);
	    	
	    	add1(image);
	    	g.drawImage(list.get(0), 0, 0,backgroundColor ,null);
	    	list.remove(0);
	    	
	    	
	    	
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
	
	public void undo(){
		
	}

	 public void clear(int width, int height,Color color){
		
		 image = new BufferedImage(width,height,BufferedImage.TYPE_INT_ARGB);
		 
		 try{
			 g2d = image.createGraphics();
		 } catch(NullPointerException e){
			
		 };
		 
		 for(int i=0;i<list.size();i++)
			 list.remove(i);
		 
		 g2d.setPaint(color);
		 g2d.fillRect(0, 0, getWidth(), getHeight());
		// g2d.drawImage(image, getWidth(), getHeight(), null);
		 add1(image);
		 
		 
		 
		 
		
		    
		 repaint();
	 }
	 
	 public void clearLast(){
		 
			 g2d = list.get(list.size()-1).createGraphics();
			
			 list.remove(list.size()-1);
			
			 g2d = list.get(list.size()-1).createGraphics();
			 
			 
			 g2d.drawImage(list.get(list.size()-1), 0, 0, null);
			 add1(list.get(list.size()-1));
			 setImage(list.get(list.size()-1));
			 
			 
			 repaint();
		
		 
	 }
	 public void add1(BufferedImage img){
		 
		 list.add(img);
		 a=false;
		 
		 
	 }
	  
	 
	public BufferedImage getImage() {
		
		return list.get(list.size()-1);
	}

	public void setImage(BufferedImage img) {
		
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
	
	public void setBackColor(Color color){
		backgroundColor = color;
	}
	
	public ArrayList<BufferedImage> getList(){
		return list;
	}
	
	public BufferedImage getLast(){
		return list.get(list.size()-1);
	}
}
