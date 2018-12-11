import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

Page {
    width: Screen.width - 300
    height: Screen.height - 100

    FontLoader {
        id: fontRWreg
        source: "../fonts/Raleway-Regular.ttf"
    }

    Rectangle {
        id: beapMenu
        color: "#ddddde"
        radius: 2
        anchors.fill: parent
        border.color: "#1e376a"
        border.width: 2

        Rectangle {
            id: aboutButton
            x: 816
            y: 190
            width: 60
            height: 60
            implicitWidth: 120
            implicitHeight: 120
            color: "#00000000"

            Image {
                id: image2
                x: 0
                y: 0
                width: 43
                height: 43
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/aboutIcon.png"
            }

            Label {
                id: label3
                x: 4
                y: 60
                width: 71
                height: 18
                color: "#1e376a"
                text: qsTr("About")
                font.family: "Encode Sans"
                font.pointSize: 9
                anchors.verticalCenterOffset: 25
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: runTestButton
            x: 316
            y: 168
            width: 80
            height: 80
            implicitWidth: 120
            implicitHeight: 120
            color: "#00000000"

            Image {
                id: image
                x: 14
                y: 0
                width: 58
                height: 58
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/runIcon.png"
            }

            Label {
                id: label1
                x: 23
                y: 98
                width: 71
                height: 16
                color: "#1e376a"
                text: qsTr("Run test")
                font.pointSize: 11
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: 35
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Encode Sans"
                horizontalAlignment: Text.AlignHCenter
            }
        }

        Rectangle {
            id: resetButton
            x: 904
            y: 190
            width: 60
            height: 60
            color: "#00000000"

            Label {
                id: label2
                x: 5
                y: 82
                width: 71
                height: 18
                color: "#1e376a"
                text: qsTr("Reset Graph")
                font.family: "Encode Sans"
                font.pointSize: 9
                anchors.verticalCenterOffset: 25
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                horizontalAlignment: Text.AlignHCenter
            }

            Image {
                id: image1
                x: -3
                y: -9
                width: 43
                height: 43
                anchors.verticalCenterOffset: -10
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                source: "qrc:/images/icons/resetIcon.png"
            }
        }

        Label {
            id: label4
            x: 107
            y: 67
            width: 667
            height: 54
            color: "#1e376a"
            text: qsTr("Brainstem Auditory Evoked Potential  (BAEP)")
            font.bold: true
            font.underline: false
            font.pointSize: 20
            font.family: fontRWreg.name

            Rectangle {
                id: rectangle
                x: 0
                y: 42
                width: label4.width
                height: 4
                color: "#1e376a"
                radius: 1
            }
        }

        Rectangle {
            id: checkrboardButton
            x: 444
            y: 190
            width: 60
            height: 60
            color: "#00000000"
            Label {
                id: label5
                x: -6
                y: 42
                width: 71
                height: 18
                color: "#1e376a"
                text: qsTr("Audio")
                anchors.verticalCenterOffset: 25
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Encode Sans"
                font.pointSize: 9
                horizontalAlignment: Text.AlignHCenter
            }

            Image {
                id: image3
                x: 9
                y: -7
                width: 43
                height: 43
                anchors.verticalCenterOffset: -10
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/speakerIcon.png"
            }
        }

        Rectangle {
            id: printButton
            x: 733
            y: 190
            width: 60
            height: 60
            color: "#00000000"
            Label {
                id: label6
                x: -7
                y: 42
                width: 71
                height: 18
                color: "#1e376a"
                text: qsTr("Print")
                anchors.verticalCenterOffset: 25
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.pointSize: 9
                font.family: "Encode Sans"
                horizontalAlignment: Text.AlignHCenter
            }

            Image {
                id: image4
                x: 8
                y: 0
                width: 43
                height: 43
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: -10
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/icons/printerIcon.png"
            }
        }

        Rectangle {
            id: settingsMenu
            width: 246
            height: 389
            color: "#00000000"
            anchors.left: parent.left
            anchors.leftMargin: 52
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 352
            anchors.top: parent.top
            anchors.topMargin: 515

            Slider {
                id: slider
                y: 90
                height: 48
                stepSize: 1
                orientation: Qt.Horizontal
                to: 8
                from: -3
                font.bold: false
                anchors.right: parent.right
                anchors.rightMargin: 22
                anchors.left: parent.left
                anchors.leftMargin: 22
                value: 5

                Label {
                    id: label
                    color: "#1e376a"
                    text: qsTr("Threshold")
                    font.bold: false
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenterOffset: -30
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text1
                    x: -22
                    y: 21
                    width: 30
                    height: 20
                    text: qsTr("-3")
                    font.pixelSize: 12
                }

                Text {
                    id: text2
                    x: 203
                    y: 19
                    width: 32
                    height: 21
                    text: qsTr("8")
                    font.pixelSize: 12
                }

                Text {
                    id: text3
                    x: 76
                    y: 41
                    text: slider.value
                    font.pixelSize: 12
                }
            }

            ComboBox {
                id: comboBox
                y: 195
                height: 51
                anchors.right: parent.right
                anchors.rightMargin: 22
                anchors.left: parent.left
                anchors.leftMargin: 22
                flat: false
                editable: false
                currentIndex: 8
                displayText: ""
                textRole: "key"
                model: ListModel {
                    ListElement {
                        key: "Delta [0-4]"
                        value: 2
                    }
                    ListElement {
                        key: "Theta [4-8]"
                        value: 6
                    }
                    ListElement {
                        key: "Alpha [8-12]"
                        value: 10
                    }
                }

                Label {
                    id: label8
                    x: 6
                    y: 6
                    width: 100
                    height: 20
                    color: "#1e376a"
                    text: qsTr("Sampling rate")
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenterOffset: -38
                    anchors.horizontalCenterOffset: 0
                }
            }

            Rectangle {
                id: timeRange
                y: 265
                width: 179
                height: 82
                color: "#00000000"
                anchors.right: parent.right
                anchors.rightMargin: 22
                anchors.left: parent.left
                anchors.leftMargin: 17

                Button {
                    id: button
                    x: 72
                    y: -90
                    width: 40
                    height: 40
                    text: qsTr("-")
                    anchors.verticalCenterOffset: 10
                    anchors.horizontalCenterOffset: -30
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }

                Button {
                    id: button1
                    x: 72
                    y: -90
                    width: 40
                    height: 40
                    text: qsTr("+")
                    anchors.horizontalCenterOffset: 30
                    anchors.verticalCenterOffset: 10
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }

                Label {
                    id: label9
                    color: "#1e376a"
                    text: qsTr("Time range")
                    anchors.verticalCenterOffset: -20
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
            }
        }

        Rectangle {
            id: signalsView
            color: "#00000000"
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.left: parent.left
            anchors.leftMargin: 304
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 47
            anchors.top: parent.top
            anchors.topMargin: 296

            PlotView {
                id: plotView1
                y: 515
                height: 482
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                implicitWidth: 640
                implicitHeight: 480
            }

            PlotView {
                id: plotView
                height: 504
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                implicitWidth: 640
                implicitHeight: 480
            }
        }
    }
}


/*##^## Designer {
    D{i:12;anchors_height:281;anchors_x:0;anchors_y:0}D{i:37;anchors_height:350;anchors_width:1300;anchors_x:8;anchors_y:287}
D{i:38;anchors_height:281;anchors_width:1308}
}
 ##^##*/
