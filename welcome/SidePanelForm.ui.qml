import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

Item {
    id: itemSide
    implicitWidth: 360
    implicitHeight: 1900
    property alias buttonSMSide: buttonSMSide
    property alias buttonPDSide: buttonPDSide
    property alias buttonHomeSide: buttonHomeSide

    FontLoader {
        id: fontRWreg
        source: "../fonts/Raleway-Regular.ttf"
    }

    FontLoader {
        id: fontOSreg
        source: "../fonts/OpenSans-Regular.ttf"
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 192
        color: "#051a2c"
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 182

        Button {
            id: buttonSMSide
            x: 86
            y: 54
            width: 266
            height: 40
            text: qsTr("Signals measurements")
            autoRepeat: false
            checkable: true
            font.pointSize: 11
            contentItem: Text {
                color: buttonSMSide.hovered ? "#13f5da" : "#b1aaaa"
                text: "Signals measurements"
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 12
                horizontalAlignment: Text.AlignLeft
                elide: Text.ElideRight
                opacity: enabled ? 1.0 : 0.3
                font.capitalization: Font.MixedCase
                font.weight: Font.ExtraLight
                renderType: Text.QtRendering
                textFormat: Text.AutoText
                font.wordSpacing: 0
                font.bold: false
                font.letterSpacing: 1
                font.family: "Encode Sans"
            }
            autoExclusive: false
            font.bold: false
            checked: false
            font.letterSpacing: 0.5
            background: Rectangle {
                color: rectangle.color
                radius: 4
                border.color: rectangle.color
                implicitHeight: 40
                border.width: 1
                implicitWidth: 200
            }
        }

        Button {
            id: buttonPDSide
            x: 86
            y: 97
            width: 222
            height: 40
            text: qsTr("Pacients database")
            font.letterSpacing: 0.5
            checkable: true
            font.bold: false
            font.pointSize: 10
            autoRepeat: false
            autoExclusive: false
            checked: false
            background: Rectangle {
                color: rectangle.color
                implicitWidth: 200
                implicitHeight: 40
                border.color: rectangle.color
                border.width: 1
                radius: 4
            }
            contentItem: Text {
                width: 284
                color: buttonPDSide.hovered ? "#13f5da" : "#b1aaaa"
                text: "Patients database"
                font.letterSpacing: 1
                font.wordSpacing: 0
                font.capitalization: Font.MixedCase
                font.weight: Font.ExtraLight
                font.bold: false
                font.pointSize: 12
                font.family: "Encode Sans"
                renderType: Text.QtRendering
                textFormat: Text.AutoText
                opacity: enabled ? 1.0 : 0.3
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }

        Button {
            id: buttonHomeSide
            x: 86
            y: 8
            width: 95
            height: 40
            text: qsTr("Signals measurements")
            flat: false
            font.letterSpacing: 0.5
            checkable: true
            font.bold: false
            font.pointSize: 10
            autoRepeat: false
            autoExclusive: false
            checked: true

            background: Rectangle {
                color: rectangle.color
                implicitWidth: 200
                implicitHeight: 40
                border.color: rectangle.color
                border.width: 1
                radius: 4
            }
            contentItem: Text {
                color: buttonHomeSide.hovered ? "#13f5da" : "#b1aaaa"
                text: "Home"
                font.letterSpacing: 1
                font.wordSpacing: 0
                font.capitalization: Font.MixedCase
                font.weight: Font.ExtraLight
                font.bold: false
                font.pointSize: 12
                font.family: "Encode Sans"
                renderType: Text.QtRendering
                textFormat: Text.AutoText
                opacity: enabled ? 1.0 : 0.3
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
    }

    Rectangle {
        id: rectangle1Side
        color: rectangle.color
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: rectangle.top
        anchors.bottomMargin: -1

        Image {
            id: iconBrain
            x: 85
            y: 28
            width: 47
            height: 40
            fillMode: Image.Stretch
            source: "qrc:/images/icons/brainIcon.png"
        }

        Label {
            id: labelBrain
            y: 66
            height: 34
            color: "#ffffff"
            text: qsTr("NEURO")
            anchors.left: parent.left
            anchors.leftMargin: 121
            anchors.right: parent.right
            anchors.rightMargin: 0
            font.bold: true
            font.pointSize: 18
        }
    }
}
