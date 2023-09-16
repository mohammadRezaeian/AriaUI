import QtQuick 2.15
import Ui 1.0

Item {

    property string colorBack: "transparent"
    property string textLabel: "Not Set"
    property string colorText: Themes.titleText
    property bool   boldText:  false

    Rectangle{

        anchors.fill: parent

        color: colorBack

        radius: Themes.radiusLabels
    }

    Text {

        text: qsTr(textLabel)

        anchors.centerIn: parent

        color: colorText

        font.bold: boldText
    }
}
