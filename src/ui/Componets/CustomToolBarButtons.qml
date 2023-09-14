import QtQuick 2.15
import QtQuick.Controls 2.15
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

    ColumnLayout
    {
        width: parent.width
        height: parent.height
        spacing: 1

        CustomButton{
            id: buttonDownload

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Downloads"

            onClickedButton: {

                reverseColorButtons()

                colorButton = "green"

            }
        }

        CustomButton{
            id: buttonUnfnishedd

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Unfinished"

            onClickedButton: {

                reverseColorButtons()

                colorButton = "green"

            }
        }

        CustomButton{
            id: buttonFinished

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Finished"

            onClickedButton: {

                reverseColorButtons()

                colorButton = "green"

            }
        }

        CustomButton{
            id: buttonQueue

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Queue"

            onClickedButton: {

                reverseColorButtons()

                colorButton = "green"

            }
        }

        CustomButton{
            id: buttonTrash

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Trash"

            onClickedButton: {

                reverseColorButtons()

                colorButton = "green"

            }
        }
    }

}
