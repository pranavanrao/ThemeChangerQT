import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    visible: true
    width: 400
    height: 150

    property bool darkTheme: false

    Row {
        anchors.centerIn: parent
        spacing: 100

        RadioButton {
            id: lightRadioButton
            Text {
                id: light
                text: qsTr("Light")
                color: darkTheme ? "white" : "Black"
                anchors.left: parent.right
            }
            checked: true
            onClicked: {
                if (checked) {
                    darkRadioButton.checked = false;
                    darkTheme = false;
                    console.log("Light theme selected");
                }
            }
        }

        RadioButton {
            id: darkRadioButton
            Text {
                id: dark
                text: qsTr("Dark")
                color: darkTheme ? "white" : "Black"
                anchors.left: parent.right
            }
            onClicked: {
                if (checked) {
                    lightRadioButton.checked = false;
                    darkTheme = true;
                    console.log("Dark theme selected");
                }
            }
        }
    }
}
