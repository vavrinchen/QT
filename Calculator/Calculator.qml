import QtQuick  2.6

Rectangle {
    id: calculatorPane
    color: "#bebebe"
    width: 300
    height: 350
    anchors.margins: 5
    property string text: ""
    property int firstNum
    property int secondNum
    property int currentValue
    property int total
    property string currentOperator: ""
    property alias resultDisplay: resultDisplay
    property var operators : {
        '+': function(firstNum, secondNum) { return firstNum + secondNum; },
        '-': function(firstNum, secondNum) { return firstNum - secondNum; },
        '*': function(firstNum, secondNum) { return firstNum * secondNum; },
        '/': function(firstNum, secondNum) { return firstNum / secondNum; }
    };

    ResultDisplay {
        id: resultDisplay
    }

    ButtonGrid {
        id: buttonGrid
    }


    function equal(currentOperator) {
        secondNum = currentValue
        total = operators[currentOperator](firstNum, secondNum);
        changeContent(total)
        text = total.toString()
        console.log("default: " + currentOperator + " total: " + total)

    }


    function setFirstNumAndCurrentOperator(val) {
        text = ""
        firstNum = currentValue
        currentOperator = val
    }


    function changeContent(val) {
        console.log("calculatorPane: " + val)
        if (val == "=") {
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
        text = ""
    }



}
