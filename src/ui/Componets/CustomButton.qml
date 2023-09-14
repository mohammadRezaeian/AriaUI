import QtQuick 2.15
import QtQuick.Controls 2.15

Item {

    property color  colorButton: "transparent"
    property string colorText: "blue"
    property string textButton: "Not Set"

    property real   readiusButton: 5

    signal          clickedButton()

    Rectangle{

        anchors.fill: parent
        radius: readiusButton
        color: colorButton

        MouseArea{

            anchors.fill: parent

            onClicked: clickedButton()

        }
    }


    Text {

        text: qsTr(textButton)
        color: colorText

        anchors.centerIn: parent

    }

}
