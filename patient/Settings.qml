import QtQuick 2.9
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Dialogs 1.2

SettingsForm {
    id: form
    anchors.fill: parent

    function readData() {
        PatientModel.selection.forEach(function (rowIndex) {
            form.firstName.text = PatientModel.get(rowIndex).firstName
            form.lastName.text = PatientModel.get(rowIndex).lastName
            form.patientId.text = PatientModel.get(rowIndex).patientId
            form.email.text = PatientModel.get(rowIndex).email
            form.address.text = PatientModel.get(rowIndex).address
            form.phoneNumber.text = PatientModel.get(rowIndex).phoneNumber
            form.zipCode.text = PatientModel.get(rowIndex).zipCode
            form.city.text = PatientModel.get(rowIndex).city
            form.title.currentIndex = form.title.find(PatientModel.get(rowIndex).title)
        })

        save.enabled = true
        cancel.enabled = true
        gridLayout.enabled = true
    }

    function writeData() {
        PatientModel.selection.forEach(function (rowIndex) {
            var notes = PatientModel.get(rowIndex).notes
            PatientModel.set(rowIndex, {
                                            firstName: form.firstName.text,
                                            lastName: form.lastName.text,
                                            patientId: form.patientId.text,
                                            email: form.firstName.email,
                                            address: form.lastName.address,
                                            phoneNumber: form.patientId.phoneNumber,
                                            zipCode: form.patientId.zipCode,
                                            city: form.patientId.city,
                                            title: form.title.currentText,
                                            notes: notes
                                        })
        })
    }

    cancel.onClicked: readData()
    save.onClicked: writeData()

    Connections {
        target: PatientModel.selection
        onSelectionChanged: form.readData()
    }

    Component.onCompleted: readData()
}
