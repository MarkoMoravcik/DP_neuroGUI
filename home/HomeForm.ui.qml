import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

import QtQuick.Window 2.2

Page {
    width: Screen.width - 300
    height: Screen.height - 200
    property alias homeMenu: homeMenu
    property alias buttonSM: buttonSM

    Rectangle {
        id: homeMenu
        color: "#1b2b49"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
        border.color: "#000000"
        border.width: 1

        BigMenuButton {
            id: buttonMH
            x: 566
            y: 155
            width: 220
            height: 200

            Image {
                id: imageMH
                x: 34
                y: 24
                width: 123
                height: 109
                anchors.verticalCenterOffset: -15
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/measurementesHistoryIcon.png"
            }

            Label {
                id: labelMH
                x: 29
                y: 158
                width: 143
                height: 24
                color: "#ffffff"
                text: qsTr(" Measurements History")
                anchors.verticalCenterOffset: 70
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 11
            }
        }

        BigMenuButton {
            id: buttonPD
            x: 325
            y: 155
            width: 220
            height: 200

            Image {
                id: imagePD
                x: 43
                y: 27
                width: 115
                height: 106
                anchors.verticalCenterOffset: -15
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/patientDatabaseIcon.png"
            }

            Label {
                id: labelPD
                x: 31
                y: 157
                width: 143
                height: 19
                color: "#ffffff"
                text: qsTr("Patient Database")
                anchors.verticalCenterOffset: 70
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 11
            }
        }

        BigMenuButton {
            id: buttonSM
            x: 79
            y: 155
            width: 220
            height: 200

            Image {
                id: imageSM
                x: 39
                y: 30
                width: 123
                height: 109
                anchors.verticalCenterOffset: -15
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/signalIcon.png"
            }

            Label {
                id: labelSM
                x: 29
                y: 156
                width: 143
                height: 24
                color: "#ffffff"
                text: qsTr("Signal Measurements")
                anchors.verticalCenterOffset: 70
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 11
                horizontalAlignment: Text.AlignHCenter
            }
        }
    }

    Connections {
        target: buttonSM
        onClicked: print("clicked")
    }
}

/*##^## Designer {
    D{i:2;anchors_width:220;anchors_x:566;anchors_y:155}D{i:5;anchors_x:325;anchors_y:155}
D{i:8;anchors_x:85;anchors_y:155}
}
 ##^##*/
