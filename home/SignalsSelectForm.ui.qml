import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

Page {
    id: itemSM
    width: Screen.width - 300
    height: Screen.height - 200
    property alias buttonBAEP: buttonBAEP
    property alias buttonVEP: buttonVEP
    property alias itemSM: itemSM

    FontLoader {
        id: fontRWreg
        source: "../fonts/Raleway-Regular.ttf"
    }

    FontLoader {
        id: fontOSreg
        source: "../fonts/OpenSans-Regular.ttf"
    }

    Rectangle {
        id: signalsMenu
        color: "#1b2b49"
        radius: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        z: 0
        border.color: "#000000"
        border.width: 1

        Rectangle {
            id: rectangleEP
            color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 304
            anchors.left: parent.left
            anchors.leftMargin: 97
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 63
            anchors.top: parent.top
            anchors.topMargin: 147
            border.color: "#00000000"
            border.width: 3

            Label {
                id: labeEP
                x: 52
                y: 68
                width: 228
                height: 72
                color: "#ffffff"
                text: qsTr("Evoke potential")
                Layout.fillHeight: false
                Layout.fillWidth: false
                Layout.alignment: Qt.AlignRight | Qt.AlignBottom
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pointSize: 20
                font.family: fontRWreg.name
            }

            BigMenuButton {
                id: buttonVEP
                x: 52
                y: 146
                width: 130
                height: 100
                color: "#00000000"
                borderWidth: 0
                borderRadius: 0

                Label {
                    id: labelVEP1
                    color: "#ffffff"
                    text: qsTr("VEP")
                    anchors.horizontalCenterOffset: 40
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 15
                }

                Image {
                    id: imageVEP1
                    x: 9
                    y: 9
                    width: 62
                    height: 70
                    anchors.horizontalCenterOffset: -25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/images/icons/eyeIcon.png"
                }
            }

            BigMenuButton {
                id: buttonBAEP
                x: 38
                y: 282
                width: 144
                height: 100
                color: "#00000000"
                borderWidth: 0
                borderRadius: 0

                Label {
                    id: labelAEP1
                    color: "#ffffff"
                    text: qsTr("BAEP")
                    anchors.horizontalCenterOffset: 40
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: 0
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    font.pointSize: 15
                }

                Image {
                    id: imageAEP1
                    x: -5
                    y: -5
                    width: 62
                    height: 70
                    anchors.horizontalCenterOffset: -25
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    source: "qrc:/images/icons/earIcon.png"
                }
            }

            BigMenuButton {
                id: buttonSEP
                x: 272
                y: 146
                width: 130
                height: 100
                color: "#00000000"
                borderWidth: 0
                borderRadius: 0

                Image {
                    id: imageSEP
                    x: 1
                    y: 221
                    width: 62
                    height: 70
                    anchors.horizontalCenterOffset: -25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/images/icons/spinalIcon.png"
                }

                Label {
                    id: labelSEP
                    x: 85
                    y: 229
                    color: "#ffffff"
                    text: qsTr("SEP")
                    anchors.horizontalCenterOffset: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignLeft
                }
            }

            BigMenuButton {
                id: buttonMEP
                x: 272
                y: 282
                width: 130
                height: 100
                color: "#00000000"
                borderWidth: 0
                borderRadius: 0

                Image {
                    id: imageMEP
                    x: -237
                    y: 40
                    width: 62
                    height: 70
                    anchors.horizontalCenterOffset: -25
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                    source: "qrc:/images/icons/muscleIcon.png"
                }

                Label {
                    id: labelMEP
                    x: -153
                    y: 48
                    color: "#ffffff"
                    text: qsTr("MEP")
                    anchors.horizontalCenterOffset: 40
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 15
                    horizontalAlignment: Text.AlignLeft
                }
            }
        }

        Label {
            id: labelSM
            x: 69
            y: 48
            width: 375
            height: 105
            color: "#32e0e0"
            text: qsTr("Signal Measurements")
            font.family: fontRWreg.name
            font.capitalization: Font.AllUppercase
            font.bold: false
            font.italic: false
            styleColor: "#00000000"
            font.pointSize: 25
        }
    }
}


/*##^## Designer {
    D{i:5;anchors_height:72;anchors_x:377;anchors_y:54}D{i:4;anchors_height:480;anchors_width:362;anchors_x:153;anchors_y:221}
}
 ##^##*/
