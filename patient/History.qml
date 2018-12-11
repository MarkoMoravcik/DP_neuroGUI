import QtQuick 2.9
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

HistoryForm {
    id: form

    function readData() {
        PatientModel.selection.forEach(function (rowIndex) {

            var history = PatientModel.get(rowIndex).history
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
        target: PatientModel.selection
        onSelectionChanged: form.readData()
    }

    Component.onCompleted: readData()
}
