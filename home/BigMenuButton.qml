//Import the declarative plugins
 import QtQuick 2.0

 //Implementation of the Button control.
 Item {
     id: button
     width: 200
     height: 200
     property alias buttonText: innerText.text;
     property color color: "#117272"
     property color hoverColor: "#aaaaaa"
     property color pressColor: "slategray"
     property int fontSize: 10
     property int borderWidth: 1
     property int borderRadius: 2
     scale: state === "Pressed" ? 0.96 : 1.0
     onEnabledChanged: state = ""
     signal clicked


     //Rectangle to draw the button
     Rectangle {
         id: rectangleButton
         anchors.fill: parent
         radius: borderRadius
         color: button.enabled ? button.color : "grey"
         border.width: borderWidth
         border.color: "black"

         Text {
             id: innerText
             font.pointSize: fontSize
             anchors.centerIn: parent
         }
     }


     //define a scale animation
     Behavior on scale {
         NumberAnimation {
             duration: 100
             easing.type: Easing.InOutQuad
         }
     }
     //change the color of the button in differen button states
     states: [
         State {
             name: "Hovering"
             PropertyChanges {
                 target: rectangleButton
                 color: hoverColor
             }
         },
         State {
             name: "Pressed"
             PropertyChanges {
                 target: rectangleButton
                 color: pressColor
             }
         }
     ]

     //define transmission for the states
     transitions: [
         Transition {
             from: ""; to: "Hovering"
             ColorAnimation { duration: 200 }
         },
         Transition {
             from: "*"; to: "Pressed"
             ColorAnimation { duration: 10 }
         }
     ]

     //Mouse area to react on click events
     MouseArea {
         hoverEnabled: true
         anchors.fill: button
         onEntered: { button.state='Hovering'}
         onExited: { button.state=''}
         onClicked: { button.clicked();}
         onPressed: { button.state="Pressed" }
         onReleased: {
             if (containsMouse)
               button.state="Hovering";
             else
               button.state="";
         }
     }




 }
