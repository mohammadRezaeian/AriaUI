import QtQuick 2.15
import QtQuick.Controls 2.15

import Ui 1.0

Item {

    property color  colorButton: "transparent"
    property string colorText:   Themes.textButtons
    property string textButton:  Themes.textShowButton
    property real   readiusButton: Themes.radiusButtons

    property real   sizeWidthText: textCustom.width
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
        id: textCustom

        text: qsTr(textButton)
        color: colorText

        anchors.centerIn: parent

    }

}
