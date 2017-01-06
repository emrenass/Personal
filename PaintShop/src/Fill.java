

import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.image.BufferedImage;

import Tools.GamePanel;

public class Fill extends MouseAdapter {
	
	BufferedImage img ;
	
	GamePanel theCanvas ;
	Graphics2D g2d ;
	
	int count = 0;
	public Fill(GamePanel theCanvas){
		this.theCanvas=theCanvas ;
	}

	private void sleep(int msec) {
		try {
			Thread.currentThread();
			Thread.sleep(msec);
		} catch (InterruptedException e) {
		}
	}
	public void FloodFill(boolean[][] bl2, int row, int col , Color target){
		// make sure row and col are inside the image
		
		System.out.println(count++);
        if (row < 0) return;
        if (col < 0) return;
        if (col >= PaintShop.mainDrawArea.getLast().getHeight()) return;
        if (row >= PaintShop.mainDrawArea.getLast().getWidth()) return;
        // make sure this pixel hasn't been visited yet
        if (bl2[row][col]) return;

        // make sure this pixel is the right color to fill
        if (!(PaintShop.mainDrawArea.getLast().getRGB(col, row)==target.getRGB())) return;
        // fill pixel with target color and mark it as visited
        PaintShop.mainDrawArea.getLast().setRGB(col, row, target.getRGB());
        bl2[row][col]=true ;
        
        // animate
        

        
        // recursively fill surrounding pixels
        // (this is equivalent to depth-first search)
        FloodFill(bl2, row - 1, col, target);
        FloodFill(bl2, row + 1, col, target);
        FloodFill(bl2, row, col - 1, target);
        FloodFill(bl2, row, col + 1, target) ;
	}
	int curX ;
	int curY ;
	
	int	row ;
	int col ;
	
	//mouse events
	public void mousePressed(MouseEvent e){

		img = theCanvas.getImage();
		g2d = img.createGraphics();
		theCanvas.setImage(img);
		
		boolean[][] bl = new boolean[img.getWidth()][img.getHeight()];
		curX=e.getX() ;
		curY=e.getY();
		
		
		for(int row=curX ; row<img.getWidth(); row++)
			for(int col=curY ; col<img.getHeight(); col++)
					FloodFill(bl,row,col, Color.BLUE ) ;
		
		theCanvas.repaint(); 
		theCanvas.revalidate();
	}
	public void mouseReleased(MouseEvent e){
		
	}
}
