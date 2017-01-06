
import java.awt.Color;
import java.awt.Cursor;
import java.awt.Dimension;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.GraphicsEnvironment;
import java.awt.Panel;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;
import java.awt.event.MouseMotionAdapter;
import java.awt.event.MouseMotionListener;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

import Menu.MenuFile;
import Tools.ArrowTool;
import Tools.CircleTool;
import Tools.EraserTool;
import Tools.GamePanel;
import Tools.InvisibleTextArea;
import Tools.LineTool;
import Tools.PenTool;
import Tools.RectangleTool;
import Tools.SprayTool;
import Tools.ToolsColor;
import Tools.triangleTool;
import javax.swing.JScrollPane;
import javax.swing.ScrollPaneConstants;
import javax.swing.JToggleButton;
public class PaintShop {

	//Variables
	private JFrame frame;
	int x = 0;
	int y = 50;
	int xShape = 39;
	int yShape =148;
	static int xPos;
	static int yPos;
	int strokeInt=3;
	static GamePanel mainDrawArea = new GamePanel();
	Color drawColor = Color.black;
	String strokeString;
	String state = "PEN";
	PenTool pen;
	LineTool line;
	SprayTool spray;
	CircleTool circle;
	RectangleTool rect;
	EraserTool eraser;
	InvisibleTextArea textField;
	triangleTool triangle;
	ArrowTool arrow;
	Fill fill;
	/**
	 * Launch the application.
	 */
	
	//Main Method
	public static void main(String[] args) {
		SplashScreen splash = new SplashScreen(3000);
        splash.showSplash();
        //First splash will appear after it is finished run method will initiliaze paintshop
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					PaintShop window = new PaintShop();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}
	/**
	 * Create the application.
	 */
	public PaintShop() {
			initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */


	private void initialize() {
		frame = new JFrame();
		frame.getContentPane().setBackground(Color.LIGHT_GRAY);
		frame.setBounds(174, 64, 552, 480);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setExtendedState(frame.getExtendedState() | JFrame.MAXIMIZED_BOTH);
		//Icon Of the Application
		BufferedImage appIcon = null;
		try {
			appIcon = ImageIO.read(new File("rsc\\Paint-icon.png"));
			frame.setIconImage(appIcon);
		}catch (IOException e) {
			e.printStackTrace();
		}

		//Title
		frame.setTitle("PaintShop");
		frame.getContentPane().setLayout(null);
		mainDrawArea.setPreferredSize(new Dimension(1024, 720));

		//Menu Bar
		JMenuBar menuBar = new JMenuBar();
		Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();
		menuBar.setBounds(0, -2, (int)dim.getWidth(), 21);
		frame.getContentPane().add(menuBar);
		menuBar.setBackground(Color.WHITE);
		menuBar.setForeground(Color.BLACK);

		//Variables
		JMenu mnFile = new JMenu("File");
		menuBar.add(mnFile);

		JMenuItem mnitmNew = new JMenuItem("New");
		mnFile.add(mnitmNew);

		JMenuItem mnitmOpen = new JMenuItem("Open");
		mnFile.add(mnitmOpen);

		JMenuItem mnitmSave = new JMenuItem("Save");
		mnFile.add(mnitmSave);

		JMenuItem mnitmSaveAs = new JMenuItem("Save as");
		mnFile.add(mnitmSaveAs);

		JMenuItem mnitmPrint = new JMenuItem("Print");
		mnFile.add(mnitmPrint);

		JMenuItem mnitmImport = new JMenuItem("Import");
		mnFile.add(mnitmImport);

		JMenuItem mnitmExport = new JMenuItem("Export");
		mnFile.add(mnitmExport);

		JMenuItem mnitmExit = new JMenuItem("Exit");
		mnFile.add(mnitmExit);

		JMenu mnEdit = new JMenu("Edit");
		menuBar.add(mnEdit);

		JMenuItem mnitmBackgroundColor = new JMenuItem("Background Color");
		mnEdit.add(mnitmBackgroundColor);

		JMenuItem mnitmCopy = new JMenuItem("Copy");
		mnEdit.add(mnitmCopy);

		JMenuItem mnitmPaste = new JMenuItem("Paste");
		mnEdit.add(mnitmPaste);

		JMenuItem mnitmCut = new JMenuItem("Cut");
		mnEdit.add(mnitmCut);

		JMenuItem mnitmCrop = new JMenuItem("Crop");
		mnEdit.add(mnitmCrop);

		JMenuItem mnitmUndo = new JMenuItem("Undo");
		mnEdit.add(mnitmUndo);

		JMenuItem mnitmRedo = new JMenuItem("Redo");
		mnEdit.add(mnitmRedo);

		JMenuItem mnitmFilters = new JMenuItem("Filters");
		mnEdit.add(mnitmFilters);

		JMenu mnTools = new JMenu("Tools");
		menuBar.add(mnTools);

		JMenuItem mnitmBrushes = new JMenuItem("Brushes");
		mnTools.add(mnitmBrushes);

		JMenuItem mnitmTextField = new JMenuItem("Text Field");
		mnTools.add(mnitmTextField);

		JMenuItem mnitmStamp = new JMenuItem("Stamp");
		mnTools.add(mnitmStamp);

		JMenuItem mnitmEraser = new JMenuItem("Eraser");
		mnTools.add(mnitmEraser);

		JMenuItem mnitmGraffiti = new JMenuItem("Graffiti");
		mnTools.add(mnitmGraffiti);

		JMenuItem mnitmFillBucket = new JMenuItem("Fill Bucket");
		mnTools.add(mnitmFillBucket);

		JMenuItem mnitmPenpencil = new JMenuItem("Pen/Pencil");
		mnTools.add(mnitmPenpencil);

		JMenuItem mnitmColor = new JMenuItem("Color");
		mnTools.add(mnitmColor);

		JMenu mnLayer = new JMenu("Layer");
		menuBar.add(mnLayer);

		JMenu mnHelp = new JMenu("Help");
		menuBar.add(mnHelp);

		//This is the panel where the tool buttons stored
		Panel toolToolbar = new Panel();
		toolToolbar.setBackground(new Color(135, 206, 235));
		toolToolbar.setBounds(0, 16, 1920, 30);
		frame.getContentPane().add(toolToolbar);
		toolToolbar.setLayout(null);
		
		//Combobox for the available fonts on computer
		JComboBox<String> comboBox = new JComboBox<String>();
		comboBox.setBounds(50, 5, 110, 20);
		String[] fonts = GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames();

		for ( int i = 0; i < fonts.length; i++ ){
			comboBox.addItem(fonts[i]);
		}
		toolToolbar.add(comboBox);

		JLabel lblFonts = new JLabel("Fonts:");
		lblFonts.setBounds(10, 8, 39, 14);
		toolToolbar.add(lblFonts);

		JLabel lblStroke = new JLabel("Stroke:");
		lblStroke.setBounds(178, 8, 49, 14);
		toolToolbar.add(lblStroke);

		JTextField strokeField = new JTextField();
		strokeField.setText("3");
		strokeField.setBounds(230, 5, 62, 20);
		toolToolbar.add(strokeField);
		strokeField.setColumns(10);
		
		//This combobox for font's size
		JComboBox<Integer> comboBoxSize = new JComboBox<Integer>();
		int[] points = new int[49];
		int multiple = 2;
		for(int i = 1; i<points.length; i++){
			points[i]= multiple*i;
		}
		for ( int i = 1; i < points.length; i++ ){
			comboBoxSize.addItem(points[i]);
		}
		comboBoxSize.setSelectedIndex(11);
		comboBoxSize.setBounds(360, 5, 69, 20);
		toolToolbar.add(comboBoxSize);
		
		JLabel pointLabel = new JLabel("Point");
		pointLabel.setBounds(301, 8, 49, 14);
		toolToolbar.add(pointLabel);
		
		JToggleButton bolButton = new JToggleButton("");
		bolButton.setBounds(439, 4, 23, 23);
		bolButton.setIcon(new ImageIcon("rsc\\bold-icon.png"));
		toolToolbar.add(bolButton);
		
		JToggleButton italicButton = new JToggleButton("");
		italicButton.setBounds(465, 4, 23, 23);
		italicButton.setIcon(new ImageIcon("rsc\\Italic-icon.png"));
		toolToolbar.add(italicButton);
		
		//This ActionListener take a string which should be an integer and convert it to integer in order to set Stroke
		strokeField.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				strokeString = strokeField.getText();
				try{
				strokeInt = Integer.parseInt(strokeString);
				}catch(NumberFormatException err){
					err.printStackTrace();
				}
			}
		});

		//This is the panel which is pinned to toolbar it appears when user clicks shapes button
		Panel shapeToolbar = new Panel();
		shapeToolbar.setBackground(new Color(127, 255, 212));
		shapeToolbar.setBounds(36, 150, 55, 120);
		shapeToolbar.setVisible(false);
		frame.getContentPane().add(shapeToolbar);


		Panel Toolbar = new Panel();
		Toolbar.setBackground(new Color(127, 255, 212));
		Toolbar.setBounds(x, y, 38, 427);
		frame.getContentPane().add(Toolbar);
		Toolbar.addMouseListener(new MouseAdapter() {
			public void mousePressed(MouseEvent me) {
				x = me.getX();
				y = me.getY();

			}
		});
		shapeToolbar.addMouseListener(new MouseAdapter(){
			public void mouseClicked(MouseEvent e){
				shapeToolbar.setVisible(false);
			}
		});

		Toolbar.addMouseMotionListener(new MouseMotionAdapter() {
			
			//This is method make toolbar and shapetoolbar draggable after the program gets x and y in mousepressed method
			@Override
			public void mouseDragged(MouseEvent me) {
				me.translatePoint(me.getComponent().getLocation().x-x, me.getComponent().getLocation().y-y);
				Toolbar.setLocation(me.getX(), me.getY());
				me.translatePoint(me.getComponent().getLocation().x-x, me.getComponent().getLocation().y-y);
				shapeToolbar.setLocation(Toolbar.getX()+xShape-2,Toolbar.getY()+yShape-48);
			}
		});
		
		//ScrollPane add to the our drawable panel scrollbars 
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setVerticalScrollBarPolicy(ScrollPaneConstants.VERTICAL_SCROLLBAR_ALWAYS);
		scrollPane.setHorizontalScrollBarPolicy(ScrollPaneConstants.HORIZONTAL_SCROLLBAR_ALWAYS);
		scrollPane.setBounds(109, 69, 1043, 739);
		frame.getContentPane().add(scrollPane);
		scrollPane.setViewportView(mainDrawArea);


		mainDrawArea.setBackground(Color.WHITE);
		mainDrawArea.addMouseListener(new MouseAdapter(){
			public void mouseClicked(MouseEvent e){
				shapeToolbar.setVisible(false);
			}
			
			/*
			In order to make only one button works we remove mouseListeners and mouseMotionListeners when the mouse
			enter to mainDrawArea  
			 */
			public void mouseEntered(MouseEvent e){
				mainDrawArea.removeMouseListener(pen);
				mainDrawArea.removeMouseMotionListener(pen);
				mainDrawArea.removeMouseListener(circle);
				mainDrawArea.removeMouseMotionListener(circle);
				mainDrawArea.removeMouseListener(rect);
				mainDrawArea.removeMouseMotionListener(rect);
				mainDrawArea.removeMouseListener(spray);
				mainDrawArea.removeMouseMotionListener(spray);
				mainDrawArea.removeMouseListener(line);
				mainDrawArea.removeMouseMotionListener(line);
				mainDrawArea.removeMouseListener(eraser);
				mainDrawArea.removeMouseMotionListener(eraser);
				mainDrawArea.removeMouseListener(fill);
				mainDrawArea.removeMouseMotionListener(fill);
				mainDrawArea.removeMouseListener(textField);
				mainDrawArea.removeMouseListener((MouseListener) textField);
				mainDrawArea.removeMouseListener(triangle);
				mainDrawArea.removeMouseMotionListener(triangle);
				mainDrawArea.removeMouseListener(arrow);
				mainDrawArea.removeMouseMotionListener(arrow);
				
				/*This switch-case method change the tools and add mouselistener
				and mousemotionlistener for specific tools*/
				switch (state){
				case "LINE":
					line = new LineTool(mainDrawArea, strokeInt, drawColor);
					//line.setStrokeSize(strokeInt);
					mainDrawArea.addMouseListener(line);
					mainDrawArea.addMouseMotionListener(line);
					break;
				case "SPRAY":

					spray = new SprayTool(mainDrawArea, strokeInt, drawColor);
					//spray.setStrokeSize(strokeInt);
					mainDrawArea.addMouseListener(spray);
					mainDrawArea.addMouseMotionListener(spray);

					break;
				case "PEN":
					pen = new PenTool(mainDrawArea, strokeInt, drawColor);
					mainDrawArea.addMouseListener(pen);
					mainDrawArea.addMouseMotionListener(pen);
					break;

				case "CIRCLE":
					circle = new CircleTool(mainDrawArea, strokeInt, drawColor);
					mainDrawArea.addMouseListener(circle);
					mainDrawArea.addMouseMotionListener(circle);
					break;

				case "RECT":
					rect = new RectangleTool(mainDrawArea, strokeInt, drawColor);
					mainDrawArea.addMouseListener(rect);
					mainDrawArea.addMouseMotionListener(rect);
					break;

				case "FILL":
					fill = new Fill(mainDrawArea);
					mainDrawArea.addMouseListener(fill);
					mainDrawArea.addMouseMotionListener(fill);
					break;
					
				case "TEXTAREA":
					Font font;
					if(bolButton.isSelected()){
						font = new Font((String)comboBox.getSelectedItem(),Font.BOLD, (Integer)comboBoxSize.getSelectedItem());
						italicButton.setSelected(false);
					}
					else if(italicButton.isSelected()){
						font = new Font((String)comboBox.getSelectedItem(),Font.ITALIC, (Integer)comboBoxSize.getSelectedItem());
						bolButton.setSelected(false);
					}
					else
						font = new Font((String)comboBox.getSelectedItem(),Font.PLAIN, (Integer)comboBoxSize.getSelectedItem());

					mainDrawArea.setFocusable( true );
					mainDrawArea.addMouseListener( new MouseAdapter()
					{
						public void mousePressed(MouseEvent e)

						{
							mainDrawArea = (GamePanel)e.getSource();
							if (e.getClickCount() == 1)
							{
								mainDrawArea.requestFocusInWindow();
							}
							if (e.getClickCount() == 2)
							{
								InvisibleTextArea textArea = new InvisibleTextArea();
								textArea.setLocation(e.getPoint());
								textArea.setFont(font);
								textArea.setForeground(ToolsColor.shade);
								mainDrawArea.add( textArea );
								textArea.requestFocusInWindow();
							}
						}
					});
					break;
				case "TRIANGLE":
					triangle = new triangleTool(mainDrawArea, strokeInt, drawColor);
					mainDrawArea.addMouseListener(triangle);
					mainDrawArea.addMouseMotionListener(triangle);
					break;
				case "CURSOR":
					break;
				case "ERASER":
					eraser = new EraserTool(mainDrawArea, strokeInt, GamePanel.backgroundColor);
					mainDrawArea.addMouseListener(eraser);
					mainDrawArea.addMouseMotionListener(eraser);
					break;
				case "ARROW":
					arrow = new ArrowTool(mainDrawArea, strokeInt, drawColor);
					mainDrawArea.addMouseListener(arrow);
					mainDrawArea.addMouseMotionListener(arrow);
				}
			}
		});


		JButton cursorButton = new JButton();
		cursorButton.setPreferredSize(new Dimension(32, 32));
		cursorButton.setIcon(new ImageIcon("rsc\\cursor-icon.png"));
		cursorButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "CURSOR";
			}
		});
		Toolbar.add(cursorButton);

		JButton brushBotton = new JButton();
		brushBotton.setPreferredSize(new Dimension(32, 32));
		brushBotton.setIcon(new ImageIcon("rsc\\brush-icon.png"));
		Toolbar.add(brushBotton);
		brushBotton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "PEN";
			}
		});

		JButton fillBucketButton = new JButton();
		fillBucketButton.setPreferredSize(new Dimension(32, 32));
		fillBucketButton.setIcon(new ImageIcon("rsc\\color-fill-icon.png"));
		Toolbar.add(fillBucketButton);
		fillBucketButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "FILL";

			}
		});


		JButton shapeButton = new JButton();
		shapeButton.setPreferredSize(new Dimension(32, 32));
		shapeButton.setIcon(new ImageIcon("rsc\\shapes-icon.png"));
		Toolbar.add(shapeButton);
		shapeButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent me) {
				shapeToolbar.setVisible(true);
			}
		});

		JButton rectangleButton = new JButton();
		shapeToolbar.add(rectangleButton);
		rectangleButton.setPreferredSize(new Dimension(32, 32));
		rectangleButton.setIcon(new ImageIcon("rsc\\Rectangle-icon.png"));
		rectangleButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "RECT";
			}
		});


		JButton circleButton = new JButton();
		circleButton.setPreferredSize(new Dimension(32, 32));
		circleButton.setIcon(new ImageIcon("rsc\\Circle-icon.png"));
		shapeToolbar.add(circleButton);
		circleButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state= "CIRCLE";
			}
		});

		JButton triangleButton = new JButton("");
		triangleButton.setPreferredSize(new Dimension(32, 32));
		triangleButton.setIcon(new ImageIcon("rsc\\triangle-icon.png"));
		shapeToolbar.add(triangleButton);

		triangleButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state= "TRIANGLE";
			}
		});

		JButton lineButton = new JButton();
		lineButton.setPreferredSize(new Dimension(32, 32));
		lineButton.setIcon(new ImageIcon("rsc\\Line-icon.png"));
		Toolbar.add(lineButton);

		lineButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "LINE";
			}
		});

		JButton sprayButton = new JButton();
		sprayButton.setPreferredSize(new Dimension(32, 32));
		sprayButton.setIcon(new ImageIcon("rsc\\Spray-icon.png"));
		Toolbar.add(sprayButton);
		sprayButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "SPRAY";
			}
		});

		JButton eraserButton = new JButton();
		eraserButton.setPreferredSize(new Dimension(32, 32));
		eraserButton.setIcon(new ImageIcon("rsc\\Eraser-icon.png"));
		Toolbar.add(eraserButton);
		eraserButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "ERASER";
			}
		});

		JButton textButton = new JButton();
		textButton.setPreferredSize(new Dimension(32, 32));
		textButton.setIcon(new ImageIcon("rsc\\text-icon.png"));
		Toolbar.add(textButton);
		textButton.addActionListener(new ActionListener(){
			public void actionPerformed(ActionEvent e) {
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "TEXTAREA";
			}
		});

		JButton arrowButton = new JButton();
		arrowButton.setPreferredSize(new Dimension(32, 32));
		arrowButton.setIcon(new ImageIcon("rsc\\Arrow-icon.png"));
		arrowButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e){
				shapeToolbar.setVisible(false);
				mainDrawArea.setCursor(Cursor.getPredefinedCursor(Cursor.DEFAULT_CURSOR));
				state = "ARROW";
			}
		});
		Toolbar.add(arrowButton);

		JButton btnNewButton_10 = new JButton();
		btnNewButton_10.setPreferredSize(new Dimension(32, 32));
		Toolbar.add(btnNewButton_10);

		//This button change the drawColor's color
		JButton colorButton = new JButton();
		colorButton.setPreferredSize(new Dimension(32, 32));
		colorButton.setIcon(new ImageIcon("rsc\\Color-Meter-icon.png"));
		colorButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event){
				shapeToolbar.setVisible(false);
				drawColor = ToolsColor.EditColor();
			}
		});
		Toolbar.add(colorButton);
		
		
		//Our background logo
		JLabel backgorundLabel = new JLabel("");
		backgorundLabel.setBounds(323, 821, 575, 95);
		backgorundLabel.setIcon(new ImageIcon("rsc\\background.png"));
		frame.getContentPane().add(backgorundLabel);

		//New blank page
		mnitmNew.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event){
				int n = JOptionPane.showConfirmDialog(
						null,
						"Are you sure you want to create new page?",
						"Warning",
						JOptionPane.YES_NO_OPTION);
				if(n == JOptionPane.YES_OPTION){
					JTextField Width = new JTextField();
					JTextField Height = new JTextField();
					Object[] message = {
							"Width:", Width,
							"Height:",  Height
					};
					try{
						int m = JOptionPane.showConfirmDialog(null, message, "Image Size: ", JOptionPane.OK_CANCEL_OPTION);
						if(m == JOptionPane.OK_OPTION){
							int width = Integer.parseInt(Width.getText());
							int height = Integer.parseInt(Height.getText());
							
							ToolsColor.EditColor();
							//if(ToolsColor.shade == Color.WHITE){
								MenuFile.newPage(mainDrawArea, 174, 64, width, height, ToolsColor.getColor());
								//mainDrawArea.setBackgroundColor(ToolsColor.shade);
							//}
								
							//else{
							//	MenuFile.newPage(mainDrawArea, 174, 64, width, height, Color.white);
							//	mainDrawArea.setBackground(Color.WHITE);
								
							//}
								
							
							mainDrawArea.revalidate();
							frame.revalidate();
						}
					}catch(NumberFormatException e){
						JOptionPane.showMessageDialog ( 
								null, "Please enter valid inputs", "Error", JOptionPane.ERROR_MESSAGE); 
					}

				}
			}
		});

		//For opening a file from file tab;
		mnitmOpen.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				JLabel layer = MenuFile.Open(mnitmOpen);
				if((MenuFile.imageWidth>0 && MenuFile.imageWidth>mainDrawArea.getWidth()) || (MenuFile.imageHeight>0 && MenuFile.imageHeight>mainDrawArea.getHeight())){
					mainDrawArea.setPreferredSize(new Dimension(MenuFile.imageWidth, MenuFile.imageHeight));
					//mainDrawArea.addLabel(layer);
					//mainDrawArea.getGraphics().drawImage(MenuFile.image, 0, 0, null);
					mainDrawArea.add1(MenuFile.image);
					mainDrawArea.repaint();
					frame.revalidate();	
				}
				else {
					mainDrawArea.add1(MenuFile.image);
					mainDrawArea.repaint();
					frame.revalidate();	
				}
			}
		});
		
		//For saving
		mnitmSave.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				try {
					MenuFile.save(mainDrawArea);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		});

		//For exiting from program
		mnitmExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				MenuFile.Exit();
			}
		});
		
		//Change the background color
		mnitmBackgroundColor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				ToolsColor.EditColor();
				mainDrawArea.setBackgroundColor(ToolsColor.shade);
				mainDrawArea.revalidate();
			}
		});

		//For choosing a color from edit tab
		mnitmColor.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				ToolsColor.EditColor();
			}
		});
		
		//For making filterDiolog visible
		mnitmFilters.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent event) {
				filterDialog dialog = new filterDialog();
				dialog.setVisible(true);
			}
		});
	}
}
