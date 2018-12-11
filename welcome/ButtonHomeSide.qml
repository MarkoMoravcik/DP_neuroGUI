import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4

Button {
    id: buttonHomeSide
    width: 206
    height: 45
    text: qsTr("Home")
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
        color: buttonHomeSide.checked ? "#13f5da" : "#b1aaaa"
        text: "Home"
        font.letterSpacing: 1
        font.wordSpacing: 0
        font.capitalization: Font.MixedCase
        font.weight: Font.ExtraLight
        font.bold: false
        font.pointSize: 14
        font.family: "Encode Sans"
        renderType: Text.QtRendering
        textFormat: Text.AutoText
        opacity: enabled ? 1.0 : 0.3
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }
}
