import QtQuick 2.4
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

HistoryForm {
    id: form

    function readData() {
        CustomerModel.selection.forEach(function (rowIndex) {

            var history = CustomerModel.get(rowIndex).history
            var entries = history.split("~")

            form.tableView.model.clear()

            var index
            for (index = 0; index < entries.length; index++) {
                var entry = entries[index]
                var data = entry.split("|")
                form.tableView.model.append({
                                           date: data[0],
                                           type: data[1],
                                           text: data[2]
                                       })
            }
        })
    }

    Connections {
        target: CustomerModel.selection
        onSelectionChanged: form.readData()
    }

    Component.onCompleted: readData()
}
