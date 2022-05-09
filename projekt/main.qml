import QtQuick 2.12
import QtQuick.Window 2.12


Window {
        property int okno: 1
        id: window
        width: 600
        height: 720
        visible: true
        title: qsTr("Aplikacja")
        color: "dodgerblue"
    Logowanie
    {
        id: panelLogowania
        anchors.centerIn: parent
        visible: okno == 1
        enabled: okno == 1
        opacity: okno == 1
    }
    Menu
    {
        id: mainMenu
        anchors.centerIn: parent
        visible: okno == 2
        enabled: okno == 2
        opacity: okno == 2
    }
}
