import QtQuick 2.10

import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1
import QtQuick.Controls 2.3
import QtQuick.Controls.Material 2.4
import QtQuick.Controls.Styles 1.4
import "patient"
import "home"
import "welcome"

ApplicationWindow {
    id: window
    width: Screen.width
    height: Screen.height
    visible: true
    title: "BrainAPP"

    MessageDialog {
        id: aboutDialog
        icon: StandardIcon.Information
        title: qsTr("About")
        text: "BrainAPP-About"
        informativeText: qsTr("About this")
    }

    menuBar: MenuBar {
        contentWidth: window.width
        background: Rectangle {
            implicitWidth: 40
            implicitHeight: 40
            color: "#1b2b49"
        }
        delegate: MenuBarItem {
                id: menuBarItem

                contentItem: Text {
                    text: menuBarItem.text
                    font: menuBarItem.font
                    color: menuBarItem.highlighted ? "#13f5da" : "#ffffff"
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }

                background: Rectangle {
                    implicitWidth: 40
                    implicitHeight: 40
                    color: menuBarItem.highlighted ? "#1b2b49" : "#1b2b49"
                }
            }

           Menu {
               title: qsTr("File")
               Action {
                   text: qsTr("New...")
               }
               Action { text: qsTr("Open...") }
               Action { text: qsTr("Save") }
               Action { text: qsTr("Save As...") }
               MenuSeparator { }
               Action {
                   text: qsTr("Quit")
                   shortcut: StandardKey.Quit
                   onTriggered: Qt.quit()
                  }
           }
           Menu {
               title: qsTr("Edit")
               MenuItem {
                   action: cutAction
               }
               MenuItem {
                   action: copyAction
               }
               MenuItem {
                   action: pasteAction
               }
           }
           Menu {
               title: qsTr("Help")
               Action { text: qsTr("About")
                   onTriggered: aboutDialog.open()
               }
           }
       }


    Action {
        id: copyAction
        text: qsTr("Copy")
        icon.name: "edit-copy"
        shortcut: StandardKey.Copy
        enabled: (!!activeFocusItem && !!activeFocusItem["copy"])
        onTriggered: activeFocusItem.copy()
    }

    Action {
        id: cutAction
        text: qsTr("Cut")
        shortcut: StandardKey.Cut
        icon.name: "edit-cut"
        enabled: (!!activeFocusItem && !!activeFocusItem["cut"])
        onTriggered: window.activeFocusItem.cut()
    }

    Action {
        id: pasteAction
        text: qsTr("Paste")
        shortcut: StandardKey.Paste
        icon.name: "edit-paste"
        enabled: (!!activeFocusItem && !!activeFocusItem["paste"])
        onTriggered: activeFocusItem.paste()
    }

    Welcome{
        id: wcView

        anchors.fill: parent
    }
}
