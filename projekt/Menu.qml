import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick 2.12

Item
{
    NumberAnimation on opacity
    {
        id:pokazywanie
        from: 0
        to: 100
        running: false

    }
    Rectangle
    {
        width: okno.width
        height:100
        color: "white"
        y: -360
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "black"
        border.width: 3
                Image
                {
                    width: 50
                    height: 50
                    x: 10
                    y: 8
                    source: "asd.png"

                }



        Text {
            id: name
            text: qsTr("STRONA GŁÓWNA")
            color: "black"
            font.pointSize: 28
            anchors.centerIn: parent
        }
    }
}
