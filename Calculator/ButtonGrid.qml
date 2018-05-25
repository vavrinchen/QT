import QtQuick  2.6

Grid {
    id: buttonGrid
    columns: 4
    property int button_width: (width - 2 * anchors.margins) / columns
    property int button_height: button_width
    property color text_color: "#000000"
    spacing: calculatorPane.anchors.margins
    anchors.top: resultDisplay.bottom
    anchors.left: calculatorPane.left
    anchors.right: calculatorPane.right
    anchors.bottom: calculatorPane.bottom
    anchors.margins: calculatorPane.anchors.margins
    
    /* Row 0 */
    Button {
        id: button7
        text: "7"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button8
        text: "8"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button9
        text: "9"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonAdd
        text: "+"
        onClicked: calculatorPane.setFirstNumAndCurrentOperator(text)
    }
    
    /* Row 1 */
    Button {
        id: button4
        text: "4"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button5
        text: "5"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button6
        text: "6"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonSubtract
        text: "-"
        onClicked: calculatorPane.setFirstNumAndCurrentOperator(text)
    }
    
    /* Row 2 */
    Button {
        id: button1
        text: "1"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button2
        text: "2"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button3
        text: "3"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonMultiply
        text: "*"
        onClicked: calculatorPane.setFirstNumAndCurrentOperator(text)
    }
    
    /* Row 3 */
    Button {
        id: buttonClean
        text: "C"
        onClicked: calculatorPane.clear()
    }
    Button {
        id: button0
        text: "0"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonEqual
        text: "="
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonDivision
        text: "/"
        onClicked: calculatorPane.setFirstNumAndCurrentOperator(text)
    }
}
