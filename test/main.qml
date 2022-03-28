import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    color: "green"
    title: qsTr("Apka")

    Column
    {
        anchors.centerIn: parent
        Rectangle
        {
        width: 150
        height: 300


        Text
        {
            text: ("Login")
            font.pixelSize: 20

        }

        }
    }
}
