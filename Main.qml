import QtQuick 2.15
import QtQuick.Window 2.15

import Ui 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
//    Rectangle{
//        anchors.centerIn: parent
//    }

    PageODM {

        width: parent.width*0.2
        height: parent.height

        anchors.left: parent.left
    }

}
