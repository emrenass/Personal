package Tools;

import java.awt.event.MouseEvent;

import Menu.DrawPanel;

public interface Drawable {
	
	public void mouseClick(MouseEvent e,DrawPanel theCanvas);

    /** Called for all dragging actions.
     * @param mevt holds a MouseEvent for the dragging action
     * @param theCanvas holds a main_canvas
     */
    public void mouseDrag(MouseEvent e,DrawPanel theCanvas);

	/** Called for all mouse releasing actions.
	 * @param mevt holds a MouseEvent
	 * @param theCanvas holds a main_canvas
	 */
    public void mouseRelease(MouseEvent e,DrawPanel theCanvas);
	
	

}
