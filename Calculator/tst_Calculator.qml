import QtTest 1.1

Calculator {
    id: calculator
    TestCase {
        name: "1Add5_Get6_Test"
        when: windowShown

        function test_button_1_clicked()
        {
            changeContent("1");
            verify(calculator.text == "1");

        }

        function test_button_add_clicked()
        {
            changeContent("+");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text == "");

        }

        function test_equal_1add5_get6()
        {
            calculator.frontNum = 1;
            calculator.currentValue = 5;
            equal("+");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text == "6");
        }

        function test_equal_2multiply10_get20()
        {
            calculator.frontNum = 2;
            calculator.currentValue =10;
            equal("*");
            console.log("calculator.text: " + calculator.text);
            verify(calculator.text == "20");
        }

    }
}
