method Triple(x: int) returns (r: int) {
  var y := 2 * x;
  r := x + y;
  assert r == 3 * x;
  // assert r == 3 * x + 1;
  // Error: assertion might not hold
}
