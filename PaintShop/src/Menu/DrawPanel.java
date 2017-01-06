package Menu;
import java.awt.* ;
import javax.swing.* ;
import java.awt.event.*;
import java.awt.image.BufferedImage;

public class DrawPanel extends JPanel {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	BufferedImage image = null;
	
	JScrollPane pictureScrollPane ;
	
	Font font ;
	
	Stroke cur_stroke ;
	
	//Graphics g2d ;
	
	int width=1 ;
	int height=1;
	int xPos;
	int yPos;
//**************************************************************************	
	public DrawPanel(){
		width=640 ;
		height=480;
		pictureScrollPane = new JScrollPane();
		pictureScrollPane.setPreferredSize(new Dimension(width,height));
		setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
		add(pictureScrollPane);
	
	}
	public DrawPanel (int w, int h){
		width=w ;
		height=h ;
		
		pictureScrollPane.setPreferredSize(new Dimension(width,height));
		
		setLayout(new BoxLayout(this, BoxLayout.X_AXIS));
		add(pictureScrollPane);
		
	}
	/*public void paint(Graphics g){
		
		
		int x = image.getWidth()-image.getMinX();
		int y = image.getHeight()-image.getMinY();
		
		Graphics2D temp_g2d = (Graphics2D)g ;
		temp_g2d.drawImage(image,x,y,null);
		pictureScrollPane.paintAll(g);
	}
	*/
	
	// we clear the panel 
	public void clear(){
		
		/*if(image!= null)
			image=new BufferedImage(image.getWidth(),image.getHeight(),BufferedImage.TYPE_INT_RGB);
		else
			image= new BufferedImage(1,1,BufferedImage.TYPE_INT_RGB);
		
		Graphics2D g2d=image.createGraphics() ;
		g2d.setColor(Color.white);
		g2d.fillRect(0,0,image.getWidth(), image.getHeight());*/
		
		this.removeAll();
		this.revalidate();
	}

	
	// it sets the characteristics of lines of borders for any shape
	public void setStroke(int number){
		cur_stroke= new BasicStroke(number);
		
	}
	
	// it sets the current font style
	public void setFont(Font style){
		font=style ;
	}
	public void drawIt(Shape s){
		
		// Strokes the outline of a Shape using the settings of the current Graphics2D context.
		Graphics2D g2d = image.createGraphics();
		g2d.draw(s);
	}
	public void resizeImage (int w, int h){
		
		BufferedImage temp = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
		
		Graphics2D g2d=temp.createGraphics();
		
		g2d.setColor(Color.white);
		g2d.fillRect(0,0,width, height);
		g2d.drawImage(image,0,0,null);
		
		// copy method that we will create later to copy temp as image
		image= copyImage(temp);
		width=image.getWidth();
		height=image.getHeight();
		
		temp.flush();
		
	}
	// setting the main image
	public void setImage(BufferedImage image){
		this.image=image ;
		
		width=image.getWidth() ;
		height=image.getHeight() ;
		
		image.flush();
		
		repaint();
		
	}
	// getter for image
	public BufferedImage getImage (){
		return image ;
	}
	
	// copying the image
	public BufferedImage copyImage(BufferedImage im){
		BufferedImage temp= new BufferedImage(im.getWidth(),im.getHeight(),BufferedImage.TYPE_INT_RGB);
		
		Graphics2D g= temp.createGraphics();
		g.drawImage(im, 0, 0, null);
		
		return temp ;
	}
	
	public void dragableDrawPanel(){
		addMouseListener(new MouseAdapter(){
			public void mousePressed(MouseEvent me){

				xPos = me.getX();
				yPos = me.getY();
			}
		});
		addMouseMotionListener(new MouseMotionAdapter(){
			public void mouseDragged(MouseEvent me){
				setLocation(getX()+me.getX()-xPos,getY()+me.getY()-yPos);
			}
		});
	}
	
}
