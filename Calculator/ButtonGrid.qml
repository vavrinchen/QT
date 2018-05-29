import QtQuick  2.6
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Grid {
    id: buttonGrid
    columns: 4
    property int button_width: (width - 2 * anchors.margins) / columns
    property int button_height: button_width
    property int firstNum
    property int secondNum
    property int currentValue
    property var operators : {
        '+': function(firstNum, secondNum) { return firstNum + secondNum; },
        '-': function(firstNum, secondNum) { return firstNum - secondNum; },
        '*': function(firstNum, secondNum) { return firstNum * secondNum; },
        '/': function(firstNum, secondNum) { return firstNum / secondNum; }
    };

    spacing: calculatorPane.anchors.margins
    anchors.top: resultDisplay.bottom
    anchors.left: calculatorPane.left
    anchors.right: calculatorPane.right
    anchors.bottom: calculatorPane.bottom
    anchors.margins: calculatorPane.anchors.margins

    Component {
           id: buttontnStyle
           ButtonStyle {
               background: Rectangle {
                   id: buttonRectangle
                   implicitWidth: button_width
                   implicitHeight: button_height
                   radius: (implicitHeight < implicitWidth) ? implicitHeight/8 : implicitWidth/8;
               }
               label: Item {
                   id: labelOfButton
                   Text{
                   text: control.text
                   font.pixelSize: 24;
                   color: "#000000";
                   anchors.centerIn : labelOfButton
               }
               }

          }
    }

    /* Row 0 */
    Button {
        id: button7
        style: buttontnStyle
        text: "7"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button8
        style: buttontnStyle
        text: "8"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button9
        style: buttontnStyle
        text: "9"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonAdd
        style: buttontnStyle
        text: "+"
        onClicked: setFirstNumAndCurrentOperator(text)
    }

    /* Row 1 */
    Button {
        id: button4
        style: buttontnStyle
        text: "4"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button5
        style: buttontnStyle
        text: "5"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button6
        style: buttontnStyle
        text: "6"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonSubtract
        style: buttontnStyle
        text: "-"
        onClicked: setFirstNumAndCurrentOperator(text)
    }

    /* Row 2 */
    Button {
        id: button1
        style: buttontnStyle
        text: "1"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button2
        style: buttontnStyle
        text: "2"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: button3
        style: buttontnStyle
        text: "3"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonMultiply
        style: buttontnStyle
        text: "*"
        onClicked: setFirstNumAndCurrentOperator(text)
    }

    /* Row 3 */
    Button {
        id: buttonClean
        style: buttontnStyle
        text: "C"
        onClicked: calculatorPane.clear()
    }
    Button {
        id: button0
        style: buttontnStyle
        text: "0"
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonEqual
        style: buttontnStyle
        text: "="
        onClicked: calculatorPane.changeContent(text)
    }
    Button {
        id: buttonDivision
        style: buttontnStyle
        text: "/"
        onClicked: setFirstNumAndCurrentOperator(text)
    }

    function setFirstNumAndCurrentOperator(val) {
        calculatorPane.text = ""
        firstNum = currentValue
        currentOperator = val
    }
}
