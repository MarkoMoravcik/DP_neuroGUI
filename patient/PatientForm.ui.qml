import QtQuick 2.9

import QtQuick.Layouts 1.1
import QtQuick.Dialogs 1.1
import QtQuick.Controls 1.2

Item {
    width: 800
    height: 480
    property alias tableView: tableView

    SplitView {
        id: splitView
        anchors.fill: parent

        TableView {
            id: tableView

            property int columnWidth: width / 3
            Layout.minimumWidth: splitView.width / 3

            TableViewColumn {
                role: "patientId"
                title: qsTr("Patient Id")
                width: tableView.columnWidth
            }

            TableViewColumn {
                role: "firstName"
                title: qsTr("First Name")
                width: tableView.columnWidth
            }
            TableViewColumn {
                role: "lastName"
                title: qsTr("Last Name")
                width: tableView.columnWidth
            }
        }

        TabView {
            id: tabView

            Layout.minimumWidth: 480

            Tab {
                title: qsTr("Patient information")
                source: "Settings.qml"
            }
            Tab {
                title: qsTr("Patient History")
                source: "History.qml"
            }
        }
    }
}
