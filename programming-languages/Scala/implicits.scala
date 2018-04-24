import java.awt.event._
import javax.swing.JButton
//Old school Java
val button = new JButton
button.addActionListener(
    new ActionListener {
        def actionPerformed(event: ActionEvent) {
            println("pressed!!")
        }
    }
)

//Scala version
//type mismatch, because addActionListener expects an ActionListener and we're passing in a function literal
//Solution is implicit convesion : function => ActionListener
button.addActionListener((_: ActionEvent) => println("pressed"))

implicit def functionToActionListener(f: ActionEvent => Unit): ActionListener = 
    new ActionListener {
        def actionPerformed(event: ActionEvent) = f(event)
    }
