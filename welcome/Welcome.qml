import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

WelcomeForm {




    sidePanel.buttonHomeSide.onClicked: {
        loader.source = "qrc:/home/Home.qml";
    }
      sidePanel.buttonPDSide.onClicked: {
         loader.source = "qrc:/patient/PatientForm.ui.qml"

    }
     sidePanel.buttonSMSide.onClicked: {

         loader.source = "qrc:/home/SignalsSelect.qml";

    }

}
