import QtQuick  2.6

Rectangle {
    id: calculatorPane
    color: "#bebebe"
    width: 300
    height: 350
    anchors.margins: 5
    property string text: ""
    property int frontNum
    property int secondNum
    property int currentValue
    property int total
    property string currentOperator: ""
    property alias resultDisplay: resultDisplay


    function equal(currentOperator) {
        secondNum = currentValue
        switch (currentOperator) {
        case "+":
            total = frontNum + secondNum
            changeContent(total)
            text = total.toString()
            break
        case "-":
            total = frontNum - secondNum
            changeContent(total)
            text = total.toString()
            break
        case "*":
            total = frontNum * secondNum
            changeContent(total)
            text = total.toString()
            break
        case "/":
            total = frontNum / secondNum
            changeContent(total)
            text = total.toString()
            break
        default:
            console.log("default: " + currentOperator)
            break
        }
    }


    function changeContent(val) {
        console.log("calculatorPane: " + val)
        if (val == "+") {
            text = ""
            frontNum = currentValue
            currentOperator = val
        } else if (val == "-") {
            text = ""
            frontNum = currentValue
            currentOperator = val
        } else if (val == "*") {
            text = ""
            frontNum = currentValue
            currentOperator = val
        } else if (val == "/") {
            text = ""
            frontNum = currentValue
            currentOperator = val
        } else if (val == "=") {
            text = ""
            console.log("equal op: " + currentOperator)
            equal(currentOperator)
        } else {
            text += val
            text.toString()
            currentValue = parseInt(text)
        }
    }

    function clear(){
        text = "0"
    }

    ResultDisplay {
        id: resultDisplay
    }

    ButtonGrid {
        id: buttonGrid
    }

}
