import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

import Ui 1.0

Item {

    ColumnLayout
    {
        anchors.fill: parent
        spacing: 1

        CustomButton{
            id: buttonDownload

            Layout.fillHeight: true
            Layout.fillWidth: true

            textButton: "Downloads"

            onClickedButton: {

                colorButton = Themes.selectToolButton

            }
        }

    }

}
