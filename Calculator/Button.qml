import QtQuick 2.6

Item {
    id: button
    signal clicked(string value);
    property alias text: itemText.text

    height: buttonGrid ? buttonGrid.button_height : 42;
    width: buttonGrid ? buttonGrid.button_width : 42;
    property color text_color: buttonGrid ? buttonGrid.text_color : "#000000";

    property int font_pixel_size: 24;
    property int radius: (height < width) ? height/8 : width/8;


    Rectangle {
    id: itemRectangle;
    anchors.fill: parent;
    radius: parent.radius;

    }


    Text {
    id: itemText;
    text: parent.text;
    color: text_color;
    font.pixelSize: font_pixel_size;
    anchors.centerIn: parent;
    }


    MouseArea {
    id: itemMouseArea;
    anchors.fill: parent;
    onClicked: button.clicked(text)
    }
}
