import QtQuick 2.15

Item {

    property string colorBack: "transparent"
    property string textLabel: "Not Set"
    property string colorText: "green"

    Rectangle{

        anchors.fill: parent

        color: colorBack

    }

    Text {

        text: qsTr(textLabel)

        anchors.centerIn: parent

        color: colorText

    }
}
