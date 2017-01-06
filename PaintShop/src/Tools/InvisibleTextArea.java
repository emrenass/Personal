package Tools;

import java.awt.BorderLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.event.DocumentEvent;
import javax.swing.event.DocumentListener;

public class InvisibleTextArea extends JTextArea
    implements ActionListener, FocusListener, MouseListener, DocumentListener
{
    public InvisibleTextArea()
    {
        setOpaque( false );
        setColumns( 1 );
        setSize( getPreferredSize() );
        setColumns( 0 );
        //addActionListener( this );
        addFocusListener( this );
        addMouseListener( this );
        getDocument().addDocumentListener( this );
    }



    public void actionPerformed(ActionEvent e)
    {
        setEditable( false );
    }


    public void focusLost(FocusEvent e)
    {
        setEditable( false );
    }

    public void focusGained(FocusEvent e) {}



    public void mouseClicked( MouseEvent e )
    {
        if (e.getClickCount() == 2)
            setEditable( true );
    }

    public void mouseEntered( MouseEvent e ) {}

    public void mouseExited( MouseEvent e ) {}

    public void mousePressed( MouseEvent e ) {}

    public void mouseReleased( MouseEvent e ) {}


    public void insertUpdate(DocumentEvent e)
    {
        updateSize();
    }

    public void removeUpdate(DocumentEvent e)
    {
        updateSize();
    }

    public void changedUpdate(DocumentEvent e) {}

    private void updateSize()
    {
        setSize( getPreferredSize() );
    }

    public static void main(String[] args)
    {
        JPanel panel = new JPanel();
        panel.setFocusable( true );
        panel.setLayout( null );
        panel.addMouseListener( new MouseAdapter()
        {
            public void mousePressed(MouseEvent e)
            {
                JPanel panel = (JPanel)e.getSource();

                if (e.getClickCount() == 1)
                {
                    panel.requestFocusInWindow();
                }
                if (e.getClickCount() == 2)
                {
                    InvisibleTextArea tf = new InvisibleTextArea();
                    tf.setLocation(e.getPoint());
                    panel.add( tf );
                    tf.requestFocusInWindow();
                }
            }
        });

        JFrame frame = new JFrame();
        frame.setDefaultCloseOperation( JFrame.EXIT_ON_CLOSE );
        frame.add(new JLabel("Double Click to Add Text"), BorderLayout.NORTH);
        frame.add(panel);
        frame.setSize(650, 300);
        frame.setLocationRelativeTo( null );
        frame.setVisible(true);
    }
}