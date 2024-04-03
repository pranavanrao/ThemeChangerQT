import QtQuick

Window {
    width: 480
    height: 650
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        anchors.fill: parent
        color: darkThemeChecked ? "#2C3E50" : "#FFFFFF"
    }

    NavigationBar {
        id: navBar
        width: parent.width
        height: 100
    }

    ThemeRadio {
        id: themeRadio
        anchors.top: navBar.bottom

        onDarkThemeChanged: {
            darkThemeChecked = themeRadio.darkTheme
        }
    }

    property bool darkThemeChecked: false
}
