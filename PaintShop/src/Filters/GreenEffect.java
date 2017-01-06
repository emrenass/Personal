package Filters;

import java.awt.image.BufferedImage;

import Tools.GamePanel;
/*
 * "|" operation is bitwise Or
 * ">>"  shifts a bit pattern to the right
 * "0xff" is for taking last digit of binaries
 */
public class GreenEffect {
	public static BufferedImage greenEffect(GamePanel panel){

		int width = panel.getLast().getWidth();
		int height = panel.getLast().getHeight();

		//convert to green image
		for(int y = 0; y < height; y++){
			for(int x = 0; x < width; x++){
				int p = panel.getLast().getRGB(x,y);

				int a = (p>>24)&0xff;
				int g = (p>>8)&0xff;

				//set new RGB
				p = (a<<24) | (0<<16) | (g<<8) | 0;

				panel.getLast().setRGB(x, y, p);
			}
		}
		return panel.getLast();
	}
}
