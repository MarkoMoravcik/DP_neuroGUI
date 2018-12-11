import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import "../home"

Item {
    id: item1
    width: Screen.width
    height: Screen.height
    property alias loader: loader
    property alias menuView: menuView
    property alias sidePanel: sidePanel

    Rectangle {
        id: welcomeView
        color: "#051a2c"
        anchors.fill: parent

        SidePanelForm {
            id: sidePanel
            x: 0
            y: 88
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 2230
            anchors.top: parent.top
            anchors.topMargin: 88
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 113
        }

        Rectangle {
            id: menuView
            width: Screen.width - 200
            height: Screen.height - 100
            color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 330
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 136
            anchors.top: parent.top
            anchors.topMargin: 130

            Home {
                width: 1590
                height: 880
                anchors.fill: parent
                Loader {
                    id: loader
                    anchors.leftMargin: 0
                    focus: true
                    anchors.fill: parent
                }
            }
        }
    }
}


/*##^## Designer {
    D{i:4;anchors_x:330;anchors_y:130}
}
 ##^##*/
