import QtQuick 2.6

Rectangle {
    id: iRoot
    color: "gray"
    width: 300
    height: 350
    anchors.margins: 5
    property string text: ""
    property int fNum
    property int sNum
    property int curValue
    property int total
    property bool addBool: false
    property bool subBool: false
    property bool mulBool: false
    property bool divBool: false
    property alias iDisplay: iDisplay
    property alias iAdd: iAdd
    property alias iSub: iSub
    property alias iMul: iMul
    property alias iDiv: iDiv
    property alias iC: iC
    property alias iE: iE
    property alias i0: i0
    property alias i1: i1
    property alias i2: i2
    property alias i3: i3
    property alias i4: i4
    property alias i5: i5
    property alias i6: i6
    property alias i7: i7
    property alias i8: i8
    property alias i9: i9

    function equal() {
        sNum = curValue
        if (addBool) {
            total = fNum + sNum
            contentChanged(total)
            text = total.toString()
            console.log("total: " + text)
        }
        if (subBool) {
            total = fNum - sNum
            contentChanged(total)
            text = total.toString()
            console.log("total: " + text)
        }
        if (mulBool) {
            total = fNum * sNum
            contentChanged(total)
            text = total.toString()
            console.log("total: " + text)
        }
        if (divBool) {
            total = fNum / sNum
            contentChanged(total)
            text = total.toString()
            console.log("total: " + text)
        }
        addBool = false
        subBool = false
        mulBool = false
        divBool = false
    }

    function dataListen(val) {
        console.log("iRoot: " + val)
        contentChanged(val)
    }

    function contentChanged(val) {
        if (val == "+") {
            text = ""
            fNum = curValue
            addBool = true
        } else if (val == "-") {
            text = ""
            fNum = curValue
            subBool = true
        } else if (val == "*") {
            text = ""
            fNum = curValue
            mulBool = true
        } else if (val == "/") {
            text = ""
            fNum = curValue
            divBool = true
        } else if (val == "=") {
            text = ""
            equal()
        } else {
            text += val
            text.toString()
            curValue = parseInt(text)
        }
    }

    signal clear
    onClear: {
        text = "0"
    }

    Rectangle {

        id: iDisplay
        color: "white"
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: parent.anchors.margins
        height: 42
        radius: height / 10

        Text {
            id: iDisplayText
            text: iRoot.text
            color: "black"
            font.pixelSize: 24
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            anchors.margins: 10
        }
    }

    Grid {
        columns: 4
        property int button_width: (width - 2 * anchors.margins) / columns
        property int button_height: button_width
        property color button_color_top: "#8888FF"
        property color button_color_bot: "blue"
        property color text_color: "black"
        spacing: parent.anchors.margins
        anchors.top: iDisplay.bottom
        anchors.left: iRoot.left
        anchors.right: iRoot.right
        anchors.bottom: iRoot.bottom
        anchors.margins: parent.anchors.margins

        /* Row 0 */
        Button {
            id: i7
            text: "7"
        }
        Button {
            id: i8
            text: "8"
        }
        Button {
            id: i9
            text: "9"
        }
        Button {
            id: iAdd
            text: "+"
        }

        /* Row 1 */
        Button {
            id: i4
            text: "4"
        }
        Button {
            id: i5
            text: "5"
        }
        Button {
            id: i6
            text: "6"
        }
        Button {
            id: iSub
            text: "-"
        }

        /* Row 2 */
        Button {
            id: i1
            text: "1"
        }
        Button {
            id: i2
            text: "2"
        }
        Button {
            id: i3
            text: "3"
        }
        Button {
            id: iMul
            text: "*"
        }

        /* Row 3 */
        Button {
            id: iC
            text: "C"
        }
        Button {
            id: i0
            text: "0"
        }
        Button {
            id: iE
            text: "="
        }
        Button {
            id: iDiv
            text: "/"
        }
    }

    Component.onCompleted: {

        iC.postValue.connect(iRoot.clear)
        iE.postValue.connect(iRoot.dataListen)
        iAdd.postValue.connect(iRoot.dataListen)
        iSub.postValue.connect(iRoot.dataListen)
        iMul.postValue.connect(iRoot.dataListen)
        iDiv.postValue.connect(iRoot.dataListen)
        i0.postValue.connect(iRoot.dataListen)
        i1.postValue.connect(iRoot.dataListen)
        i2.postValue.connect(iRoot.dataListen)
        i3.postValue.connect(iRoot.dataListen)
        i4.postValue.connect(iRoot.dataListen)
        i5.postValue.connect(iRoot.dataListen)
        i6.postValue.connect(iRoot.dataListen)
        i7.postValue.connect(iRoot.dataListen)
        i8.postValue.connect(iRoot.dataListen)
        i9.postValue.connect(iRoot.dataListen)
    }
}
