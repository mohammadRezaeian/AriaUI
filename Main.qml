import QtQuick 2.15
import QtQuick.Window 2.15

import Ui 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    CustomToolBarButtons{
        width: parent.width*0.5
        height: parent.height*0.5
        anchors.centerIn: parent
    }
}
