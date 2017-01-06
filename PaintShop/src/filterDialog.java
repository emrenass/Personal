
import Filters.*;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.awt.image.PixelGrabber;
import java.awt.image.RescaleOp;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.Icon;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.JSlider;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

import Tools.GamePanel;
import javax.swing.JLabel;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class filterDialog extends JDialog {

	private final JPanel contentPanel = new JPanel();
	float brightness;
	public filterDialog() {
		
		//Icon of the diolog
		BufferedImage appIcon = null;
		try {
			appIcon = ImageIO.read(new File("rsc\\filter-icon.png"));
			setIconImage(appIcon);
		}catch (IOException e) {
			e.printStackTrace();
		}

		//Title
		setTitle("Filters");
		
		//This method will always keep dialog on top so user will not loose it when he/she clicked somewhere else
		setAlwaysOnTop(true);
		
		//Sliders range
		final int BR_MIN = 0;
		final int BR_MAX = 20;
		final int BR_INIT = 10; 

		setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
		setBounds(100, 100, 430, 450);
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(null);
		
		//Picture of negative label
		JLabel negativeLabel = new JLabel("");
		negativeLabel.setBounds(10, 10, 100, 100);
		negativeLabel.setIcon(new ImageIcon("rsc\\Negative.png"));
		contentPanel.add(negativeLabel);
		
		//Add actionlistener to negativeButton
		JButton negativeButton = new JButton("Negative");
		negativeButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				NegativeEffect.invertColors(PaintShop.mainDrawArea);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
		negativeButton.setBounds(18, 113, 89, 23);
		contentPanel.add(negativeButton);
		
		//Picture of brightnessLabel
		JLabel brightnessLabel = new JLabel("");
		brightnessLabel.setBounds(145, 10, 100, 100);
		brightnessLabel.setIcon(new ImageIcon("rsc\\brightness-icon.png"));
		contentPanel.add(brightnessLabel);
		//initial frames per second
		JSlider brigthnessSetting = new JSlider(JSlider.HORIZONTAL,
				BR_MIN, BR_MAX, BR_INIT);
		brigthnessSetting.addChangeListener(new sliderListener());
		brightness = brigthnessSetting.getValue();
		brigthnessSetting.setMajorTickSpacing(10);
		brigthnessSetting.setPaintTicks(true);
		brigthnessSetting.setMinorTickSpacing(1);
		brigthnessSetting.setPaintLabels(true);
		brigthnessSetting.setSize(110, 39);
		brigthnessSetting.setLocation(135, 147);
		contentPanel.add(brigthnessSetting);


		JButton brightnessButton = new JButton("Brightness");
		brightnessButton.setBounds(145, 113, 89, 23);
		contentPanel.add(brightnessButton);
		
		//Picture of greenLabel
		JLabel greenLabel = new JLabel("");
		greenLabel.setBounds(280, 210, 100, 100);
		greenLabel.setIcon(new ImageIcon("rsc\\green-icon.png"));
		contentPanel.add(greenLabel);

		JButton greenButton = new JButton("Green Filter");
		greenButton.setBounds(280, 312, 89, 23);
		contentPanel.add(greenButton);

		//Picture of sepiaLabel
		JLabel sepiaLabel = new JLabel("");
		sepiaLabel.setBounds(280, 10, 100, 100);
		sepiaLabel.setIcon(new ImageIcon("rsc\\sepia-icon.png"));
		contentPanel.add(sepiaLabel);

		JButton sepiaButton = new JButton("Sepia");
		sepiaButton.setBounds(280, 113, 89, 23);
		sepiaButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				SepiaEffect.sepiaEffect(PaintShop.mainDrawArea);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
		contentPanel.add(sepiaButton);

		//Picture of redLabel
		JLabel redLabel = new JLabel("");
		redLabel.setBounds(10, 210, 100, 100);
		redLabel.setIcon(new ImageIcon("rsc\\red-icon.png"));
		contentPanel.add(redLabel);

		JButton redButton = new JButton("Red Filter");
		redButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				RedEffect.redEffect(PaintShop.mainDrawArea);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
		redButton.setBounds(18, 312, 89, 23);
		contentPanel.add(redButton);
		
		//Picture of blueLabel
		JLabel blueLabel = new JLabel("");
		blueLabel.setBounds(145, 210, 100, 100);
		blueLabel.setIcon(new ImageIcon("rsc\\blue-icon.png"));
		contentPanel.add(blueLabel);
		
		JButton blueButton = new JButton("Blue Filter");
		blueButton.setBounds(145, 312, 89, 23);
		blueButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				BlueEffect.blueEffect(PaintShop.mainDrawArea);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
		contentPanel.add(blueButton);


		greenButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				GreenEffect.greenEffect(PaintShop.mainDrawArea);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
		brightnessButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				BufferedImage img = changeBrightness(PaintShop.mainDrawArea.getLast(),brightness);
				PaintShop.mainDrawArea.getList().add(img);
				PaintShop.mainDrawArea.revalidate();
				PaintShop.mainDrawArea.repaint();
			}
		});
	}

	//Methods
	
	//Change the brigtness of picture with the help of RexcaleOp method
	public BufferedImage changeBrightness(BufferedImage src,float val){
		RescaleOp brighterOp = new RescaleOp(val, 0, null);
		src = brighterOp.filter(src,null); //filtering
		return src;
	}



	//This stateChanged is looking for any change on the JSlider
	private class sliderListener implements ChangeListener {
		public void stateChanged(ChangeEvent e) {
			JSlider source = (JSlider)e.getSource();
			if (!source.getValueIsAdjusting()) {
				brightness = (float)source.getValue()/10;
				System.out.println(brightness);
			}    
		}
	}
	
}
