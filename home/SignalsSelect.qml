import QtQuick 2.9
import QtQuick.Controls 2.2
import "../welcome"

SignalsSelectForm {

    Loader {
         id: loader
         anchors.fill: parent
         focus: true
     }

    buttonBAEP.onClicked: {

        loader.source = "qrc:/signals/BEAP.qml"
    }

    buttonVEP.onClicked: {

        loader.source = "qrc:/signals/VEP.qml"
    }


}
