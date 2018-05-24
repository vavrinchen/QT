import QtQuick 2.6

Item {

    property string text: ""

    height: parent ? parent.button_height : 42;
    width: parent ? parent.button_width : 42;
    property color text_color: parent ? parent.text_color : "black";


    property int font_pixel_size: 24;
    property int radius: (height < width) ? height/8 : width/8;


    signal postValue(string val);

    Rectangle {
    id: iRectangle;
    anchors.fill: parent;
    radius: parent.radius;

    }


    Text {
    id: iText;
    text: parent.text;
    color: text_color;
    font.pixelSize: font_pixel_size;
    anchors.centerIn: parent;
    }


    MouseArea {
    id: iMouseArea;
    anchors.fill: parent;
    onClicked: {
        postValue(text);
    }
    }
}
