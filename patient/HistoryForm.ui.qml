import QtQuick 2.9
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

Item {
    id: content

    width: 640
    height: 480
    property alias tableView: tableView

    TableView {
        id: tableView

        property int columnWidth: width / 3

        anchors.fill: parent

        TableViewColumn {
            role: "date"
            title: qsTr("Date")
            width: tableView.columnWidth
        }

        TableViewColumn {
            role: "type"
            title: qsTr("Type")
            width: tableView.columnWidth
        }

        TableViewColumn {
            role: "text"
            title: qsTr("Description")
            width: tableView.columnWidth
        }

        model: ListModel {
        }
    }
}
