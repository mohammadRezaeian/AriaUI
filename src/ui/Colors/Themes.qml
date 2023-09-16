import QtQuick 2.15

pragma Singleton

QtObject {

    // Property Colors
    property string paleAqua:      "#D1F9DA"
    property string lightPeach:    "#FFD9B3"
    property string paleLavender:  "#E1D1F9"
    property string palePink:      "#F9D1D5"
    property string paleGrey:      "#F6F5F4"
    property string lightGrey:     "#DEDDDA"
    property string softBlue:      "#1C71D8"
    property string mediumGrey:    "#77767B"
    property string charcoalGrey:  "#5E5C64"
    property string black:         "#0000000"
    property string paleGreyFirst: "#EBEBEB"
    property string paleGreySecond:"#F3F3F3"
    property string whiteColor:    "#FFFFFF"
    property string blackTitle:    "#000000"


    property color titleLeftColumnBack: paleGreySecond
    property color selectToolButton:    paleGreySecond
    property color leftColumnBack:      whiteColor
    property color topTitleMainPage:    paleGreyFirst
    property color centerMainPage:      paleGrey
    property color statusBarColorUp:    lightGrey
    property color statusBarColorBack:  paleAqua
    property color inProgressDownload:  paleAqua
    property color inProgressPause:     lightPeach
    property color titleText:           blackTitle
    property color textButtons:         blackTitle
    property color backIcons:           paleGreySecond
    property color pipelineSeparteIcons:lightGrey

    // text and radius
    property string textShowButton:     "Not Set"

    property real   radiusButtons:      10
    property real   radiusLabels:       10
    property real   emptyWidthLeftRightText: 1.2
}
