import QtQuick

Window {
    width: 480
    height: 650
    visible: true
    title: qsTr("Hello World")

    NavigationBar {
        id: navBar
        width: parent.width
        height: 100
    }

    ThemeRadio {
        id: themeRadio
        anchors.top: navBar.bottom
    }
}
