import QtTest 1.1

Calculator {
    id: calculator
    TestCase {
        name: "1Add5_Get6_Test"
        when: windowShown

        function init(){
            clear();
        }

        function test_button_1_clicked()
        {
            changeContent("1");
            verify(calculator.text === "1");

        }

        function test_button_add_clicked()
        {
            buttonGrid.setFirstNumAndCurrentOperator("+");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text === "");

        }

        function test_equal_1add5_get6()
        {
            buttonGrid.firstNum = 1;
            buttonGrid.currentValue = 5;
            equal("+");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text === "6");
        }

        function test_equal_2multiply10_get20()
        {
            buttonGrid.firstNum = 2;
            buttonGrid.currentValue =10;
            equal("*");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text === "20");
        }

    }
}
