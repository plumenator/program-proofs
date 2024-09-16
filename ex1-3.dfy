method Triple(x: int) returns (r: int) {
  // if x == 0 {
  //   r := 0;
  // } else {
  //   var y := 2 * x;
  //   r := x + y;
  // }

  // if {
  // case x < 18 =>
  //   var a, b := 2 * x, 4 * x;
  //   r := (a + b) / 2;
  // case 0 <= x =>
  //   var y := 2 * x;
  //   r := x + y;
  // }

  // assert r == 3 * x;

  var y := 2 * x;
  r := x + y;
}

method Caller() {
  var t := Triple(18);
  assert t < 100; // error because Caller cannot make any assumptions about the body of Triple
}
