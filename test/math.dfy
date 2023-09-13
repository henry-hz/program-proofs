include "./test.dfy"


module MathTest {
    import opened Int



    method {:test} AdditionTests() {
        var a := 10;
        var b := 10;
        var res := Add(a,b);
        assert res == 20;
    }


}


