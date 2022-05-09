import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4


Item {

    id: logowanie
    Column
    {
        spacing: 30
        anchors.centerIn: parent
        width: 300
        height: 600
        NumberAnimation on opacity
        {
            id: zanikanie
            to: 0
            running: false
            duration: 2000
            onFinished:
            {
                okno = 2
                result.visible = true
                mainMenu.enabled=true
            }
        }


        Text
        {
            text: qsTr("Panel logowania")
            color: "white"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 50
            font.family: "Calibri"
        }



        Text {
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 20
            color: "white"
            id: loginText
            text: qsTr("Podaj login:")
        }



        TextField
        {

            anchors.horizontalCenter: parent.horizontalCenter
            id: login
            width: 350
            height: 50
            font.family: "Arial"
            font.pointSize: 20
            focus: true
            textColor: "black"
        }



        Text {

            anchors.horizontalCenter: parent.horizontalCenter
            color: "white"
            font.pointSize: 20
            id: passwordText
            text: qsTr("Podaj Haslo:")
        }



        TextField
        {
            inputMethodHints: Qt.ImhHiddenText
            anchors.horizontalCenter: parent.horizontalCenter
            id: password
            width: 350
            height: 50
            textColor: "black"
            font.family: "Calibri"
            font.pointSize: 20
            focus: true
            echoMode:TextInput.Password

        }



        Button
        {
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Zaloguj sie!"
            width: 90
            height: 40



            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                id: result
                text: qsTr("")
                font.family: "Calibri"
                visible: false
                font.pointSize: 20
                y: 65
            }

            onClicked:
            {
                if (login.displayText === "robi" && password.text === "robi")
                {
                    result.visible = true
                    result.color = "white"
                    result.text = qsTr("Uzytkownik zalogowany:)")
                    zanikanie.running=true
                }
                else
                {
                    result.visible = true
                    result.color = "red"
                    result.text = qsTr("Podane dane sa niepoprawne")
                }
            }
        }
    }
}
