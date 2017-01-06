package Filters;

import java.awt.Color;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;

import Tools.GamePanel;
/*
 * "|" operation is bitwise Or
 * ">>"  shifts a bit pattern to the right
 * "0xff" is for taking last digit of binaries
 */
public class NegativeEffect {
	public static BufferedImage invertColors(GamePanel panel){

		int w = panel.getLast().getWidth();
		int h = panel.getLast().getHeight();
		int x = panel.getLast().getMinX();
		int y = panel.getLast().getMinY();

		int[] pixels = new int[w * h];
		PixelGrabber pg = new PixelGrabber((Image)panel.getLast(), x, y, w, h, pixels, 0, w);
		try
		{
			pg.grabPixels();
		} catch (InterruptedException e)
		{
			System.err.println("interrupted waiting for pixels!");
		}

		for (int j = 0; j < h; j++)
		{
			for (int i = 0; i < w; i++)
			{
				int pixel = pixels[j * w + i];
				int red = (pixel >> 16 ) & 0xff;
				int green = (pixel >> 8 ) & 0xff;
				int blue = (pixel ) & 0xff;

				red = Math.abs((red - 255));
				green = Math.abs((green - 255));
				blue = Math.abs((blue - 255));
				Color newColor = new Color(red,green,blue);

				panel.getLast().setRGB(x+i,y+j,newColor.getRGB());

			}
		}
		return panel.getLast();
	}
}
