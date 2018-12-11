import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2
import "../signals"
import "../welcome"

HomeForm {


        Loader {
             id: loader
              anchors.fill: parent
             focus: true
         }

    buttonSM.onClicked: {

        loader.source = "SignalsSelect.qml"
    }

}
