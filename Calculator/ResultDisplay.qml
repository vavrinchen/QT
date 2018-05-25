import QtQuick  2.6

Rectangle {
    
    id: resultDisplay
    color: "#ffffff"
    anchors.top: calculatorPane.top
    anchors.left: calculatorPane.left
    anchors.right: calculatorPane.right
    anchors.margins: calculatorPane.anchors.margins
    height: 42
    radius: height / 10
    
    Text {
        id: resultDisplayText
        text: calculatorPane.text
        color: "#000000"
        font.pixelSize: 24
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.margins: 10
    }
}
