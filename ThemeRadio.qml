import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 400
    height: 150

    Row {
        anchors.centerIn: parent
        spacing: 10

        RadioButton {
            id: lightRadioButton
            text: "Light"
            checked: true
            onClicked: {
                if (checked) {
                    darkRadioButton.checked = false;
                    console.log("Light theme selected");
                }
            }
        }

        RadioButton {
            id: darkRadioButton
            text: "Dark"
            onClicked: {
                if (checked) {
                    lightRadioButton.checked = false;
                    console.log("Dark theme selected");
                }
            }
        }
    }
}
