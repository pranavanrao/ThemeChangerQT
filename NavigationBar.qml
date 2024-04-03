import QtQuick

Item {

    Rectangle {
        anchors.fill: parent
        color: "#1FFF0C"

        Text {
            id: navText
            text: qsTr("Theme Chnager")
            font.pointSize: 32
            anchors.centerIn: parent
        }
    }
}
