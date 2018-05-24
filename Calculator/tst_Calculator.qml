import QtTest 1.1

Calculator {
    id: calculator
    TestCase {
        name: "1Add5_Get6_Test"
        when: windowShown

        function test_1add5_get6()
        {
            mouseClick(iC, iC.width / 2, iC.height / 2);
            var i1 = calculator.i1;
            var i5 = calculator.i5;
            var iAdd = calculator.iAdd;
            var iE = calculator.iE;
            mouseClick(i1, i1.width / 2, i1.height / 2);
            mouseClick(iAdd, iAdd.width / 2, iAdd.height / 2);
            mouseClick(i5, i5.width / 2, i5.height / 2);
            mouseClick(iE, iE.width / 2, iE.height / 2);
            verify(calculator.text == "6");

        }

        function test_10add5_get15()
        {
            mouseClick(iC, iC.width / 2, iC.height / 2);
            var i1 = calculator.i1;
            var i0 = calculator.i0;
            var i5 = calculator.i5;
            var iAdd = calculator.iAdd;
            var iE = calculator.iE;
            mouseClick(i1, i1.width / 2, i1.height / 2);
            mouseClick(i0, i0.width / 2, i0.height / 2);
            mouseClick(iAdd, iAdd.width / 2, iAdd.height / 2);
            mouseClick(i5, i5.width / 2, i5.height / 2);
            mouseClick(iE, iE.width / 2, iE.height / 2);
            verify(calculator.text == "15");

        }

        function test_10sub5_get5()
        {
            mouseClick(iC, iC.width / 2, iC.height / 2);
            var i1 = calculator.i1;
            var i0 = calculator.i0;
            var i5 = calculator.i5;
            var iSub = calculator.iSub;
            var iE = calculator.iE;
            mouseClick(i1, i1.width / 2, i1.height / 2);
            mouseClick(i0, i0.width / 2, i0.height / 2);
            mouseClick(iSub, iSub.width / 2, iSub.height / 2);
            mouseClick(i5, i5.width / 2, i5.height / 2);
            mouseClick(iE, iE.width / 2, iE.height / 2);
            verify(calculator.text == "5");

        }

        function test_15mul2_get30()
        {
            mouseClick(iC, iC.width / 2, iC.height / 2);
            var i1 = calculator.i1;
            var i5 = calculator.i5;
            var i2 = calculator.i2;
            var iMul = calculator.iMul;
            var iE = calculator.iE;
            mouseClick(i1, i1.width / 2, i1.height / 2);
            mouseClick(i5, i5.width / 2, i5.height / 2);
            mouseClick(iMul, iMul.width / 2, iMul.height / 2);
            mouseClick(i2, i2.width / 2, i2.height / 2);
            mouseClick(iE, iE.width / 2, iE.height / 2);
            verify(calculator.text == "30");

        }

        function test_18div3_get6()
        {
            mouseClick(iC, iC.width / 2, iC.height / 2);
            var i1 = calculator.i1;
            var i8 = calculator.i8;
            var i3 = calculator.i3;
            var iDiv = calculator.iDiv;
            var iE = calculator.iE;
            mouseClick(i1, i1.width / 2, i1.height / 2);
            mouseClick(i8, i8.width / 2, i8.height / 2);
            mouseClick(iDiv, iDiv.width / 2, iDiv.height / 2);
            mouseClick(i3, i3.width / 2, i3.height / 2);
            mouseClick(iE, iE.width / 2, iE.height / 2);
            verify(calculator.text == "6");

        }
    }
}
