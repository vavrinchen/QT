import QtQuick  2.6

Rectangle {
    id: calculatorPane
    color: "#bebebe"
    width: 300
    height: 350
    anchors.margins: 5
    property string text: ""
    property int total
    property string currentOperator: ""
    property alias buttonGrid: buttonGrid

    ResultDisplay {
        id: resultDisplay
    }

    ButtonGrid {
        id: buttonGrid
    }


    function equal(currentOperator) {
        buttonGrid.secondNum = buttonGrid.currentValue
        total = buttonGrid.operators[currentOperator](buttonGrid.firstNum, buttonGrid.secondNum);
        changeContent(total)
        text = total.toString()
        console.log("default: " + currentOperator + " total: " + total)

    }


    function changeContent(val) {
        console.log("calculatorPane: " + val)
        if (val === "=") {
            text = ""
            console.log("equal op: " + currentOperator)
            equal(currentOperator)
        } else {
            text += val
            text.toString()
            buttonGrid.currentValue = parseInt(text)
        }
    }

    function clear(){
        text = ""
    }



}
