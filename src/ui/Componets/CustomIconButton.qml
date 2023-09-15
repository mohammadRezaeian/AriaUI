import QtQuick 2.15

Item {
    property string srcImage:   "Not Set"
    property string colorBackImage: "transparent"
    property string colorImage: "undefined"


    Rectangle{

        anchors.fill: parent

        color: colorBackImage

        radius: 20
        Image {
            id: image
            anchors.fill: parent

            fillMode: Image.PreserveAspectFit

            source: srcImage

            sourceSize: Qt.size(parent.width*0.9, parent.height*0.9)

        }

//        ColorOverlay {

//            anchors.fill: image

//            source: image

//            color: colorImage
//        }

    }
}
