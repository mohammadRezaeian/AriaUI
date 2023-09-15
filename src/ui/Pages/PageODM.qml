import QtQuick 2.15
import QtQuick.Layouts 1.15

import Ui 1.0

Item {

    ColumnLayout{

        anchors.fill: parent

        Rectangle{
            id: title

            Layout.fillWidth: true
            Layout.fillHeight:  true
            Layout.maximumHeight: 40


            color: "red"

            CustomLabel{

                textLabel: "ODM"

                anchors.centerIn: parent
            }

        }

        CustomToolBarButtons{
            Layout.fillWidth:  true
            Layout.fillHeight: true

        }

        Rectangle
        {
            Layout.fillWidth: true
//            Layout.maximumWidth: 100

            Layout.fillHeight: true
            Layout.maximumHeight: 50

            color: "transparent"

            RowLayout{
                anchors.fill: parent


                CustomIconButton{

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    colorBackImage: "blue"
                    srcImage: "qrc:/Icons/Remove.svg"
                }

                Rectangle{

                    Layout.fillWidth: true
                    Layout.maximumWidth: 10

                    Layout.fillHeight:  true

                    color: "red"

                }

                CustomIconButton{

                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    colorBackImage: "blue"
                    srcImage: "qrc:/Icons/Remove.svg"
                }

            }
        }
    }

}
