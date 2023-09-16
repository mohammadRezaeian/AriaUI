import QtQuick 2.15
import QtQuick.Layouts 1.15

import Ui 1.0

Item {

    function reverseColorButtons()
    {
        buttonDownload.colorButton   = "transparent"
        buttonUnfnishedd.colorButton = "transparent"
        buttonFinished.colorButton   = "transparent"
        buttonQueue.colorButton      = "transparent"
        buttonTrash.colorButton      = "transparent"

    }

    ColumnLayout{

        anchors.fill: parent
        spacing: -60

        Rectangle{
            id: title

            Layout.fillWidth: true
            Layout.fillHeight:  true
            Layout.maximumHeight: 40

            Layout.alignment: Qt.AlignTop

            color:  Themes.titleLeftColumnBack

            radius: Themes.radiusLabels

            CustomLabel{

                textLabel: "ODM"

                anchors.centerIn: parent

                boldText: true
            }

        }

        Rectangle{

            Layout.fillWidth:  true

            Layout.fillHeight: true
            Layout.maximumHeight: 150

            Layout.alignment: Qt.AlignTop

            color: Themes.leftColumnBack

            ColumnLayout
            {
                anchors.fill: parent

                spacing: 1

                CustomButton{
                    id: buttonDownload

                    Layout.fillHeight: true
                    Layout.maximumHeight: 30

                    Layout.fillWidth: true
                    Layout.maximumWidth: sizeWidthText*Themes.emptyWidthLeftRightText

                    Layout.alignment: Qt.AlignCenter

                    textButton: "Downloads"

                    onClickedButton: {

                        reverseColorButtons()
                        buttonDownload.colorButton = Themes.selectToolButton

                    }
                }

                CustomButton{
                    id: buttonUnfnishedd

                    Layout.fillHeight: true
                    Layout.maximumHeight: 30

                    Layout.fillWidth: true
                    Layout.maximumWidth: sizeWidthText*Themes.emptyWidthLeftRightText

                    Layout.alignment: Qt.AlignCenter

                    textButton: "Unfinished"

                    onClickedButton: {

                        reverseColorButtons()
                        buttonUnfnishedd.colorButton = Themes.selectToolButton

                    }
                }

                CustomButton{
                    id: buttonFinished

                    Layout.fillHeight: true
                    Layout.maximumHeight: 30

                    Layout.fillWidth: true
                    Layout.maximumWidth: sizeWidthText*Themes.emptyWidthLeftRightText

                    Layout.alignment: Qt.AlignCenter

                    textButton: "Finished"

                    onClickedButton: {

                        reverseColorButtons()
                        buttonFinished.colorButton = Themes.selectToolButton

                    }
                }

                CustomButton{
                    id: buttonQueue

                    Layout.fillHeight: true
                    Layout.maximumHeight: 30

                    Layout.fillWidth: true
                    Layout.maximumWidth: sizeWidthText*Themes.emptyWidthLeftRightText

                    Layout.alignment: Qt.AlignCenter

                    textButton: "Queue"

                    onClickedButton: {

                        reverseColorButtons()
                        buttonQueue.colorButton = Themes.selectToolButton

                    }
                }

                CustomButton{
                    id: buttonTrash

                    Layout.fillHeight: true
                    Layout.maximumHeight: 30

                    Layout.fillWidth: true
                    Layout.maximumWidth: sizeWidthText*Themes.emptyWidthLeftRightText

                    Layout.alignment: Qt.AlignCenter

                    textButton: "Trash"

                    onClickedButton: {

                        reverseColorButtons()
                        buttonTrash.colorButton = Themes.selectToolButton

                    }
                }
            }
        }

        Rectangle
        {
            Layout.fillWidth: true
            Layout.maximumWidth: 150

            Layout.fillHeight: true
            Layout.maximumHeight: 40

            Layout.alignment: Qt.AlignHCenter

            radius: Themes.radiusButtons

            color: Themes.backIcons



            RowLayout{

                anchors.fill: parent


                CustomIconButton{

                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    srcImage: "qrc:/Icons/Add.svg"
                }

                Rectangle{

                    Layout.fillWidth: true
                    Layout.maximumWidth: 2

                    Layout.fillHeight:  true
                    Layout.maximumHeight: 30

                    color: Themes.pipelineSeparteIcons

                }

                CustomIconButton{

                    Layout.fillWidth: true
                    Layout.fillHeight: true

                    srcImage: "qrc:/Icons/Import.svg"
                }

            }
        }
    }

}
