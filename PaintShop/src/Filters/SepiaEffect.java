package Filters;

import java.awt.image.BufferedImage;

import Tools.GamePanel;
/*
 * "|" operation is bitwise Or
 * ">>"  shifts a bit pattern to the right
 * "0xff" is for taking last digit of binaries
 */
public class SepiaEffect {
	public static BufferedImage sepiaEffect(GamePanel panel){
		int width = panel.getLast().getWidth();
		int height = panel.getLast().getHeight();

		//convert to sepia
		for(int y = 0; y < height; y++){
			for(int x = 0; x < width; x++){
				int p = panel.getLast().getRGB(x,y);
				
				int a = (p>>24)&0xff;
				int r = (p>>16)&0xff;
				int g = (p>>8)&0xff;
				int b = p&0xff;
				int tr = (int)(0.393*r + 0.769*g + 0.189*b);
				int tg = (int)(0.349*r + 0.686*g + 0.168*b);
				int tb = (int)(0.272*r + 0.534*g + 0.131*b);

				//check condition
				if(tr > 255){
					r = 255;
				}else{
					r = tr;
				}

				if(tg > 255){
					g = 255;
				}else{
					g = tg;
				}

				if(tb > 255){
					b = 255;
				}else{
					b = tb;
				}

				//set new RGB value
				p = (a<<24) | (r<<16) | (g<<8) | b;

				panel.getLast().setRGB(x, y, p);
			}
		}
		return panel.getLast();
	}
}
