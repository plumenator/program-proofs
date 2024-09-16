method Triple(x: int) returns (r: int) {
  var y := 2 * x;
  r := x + y;
  // assert x == 0;
  // Uncomment above line to remove the error below
  assert r == 10 * x;
  // Error: assertion might not hold
  assert r < 5;
  // no error because if above holds, this holds too (when x == 0)
  // change the second assertion to remove the error below to
  // assert false;
  // assert 1 == 2;
  assert false;
  // Error: assertion might not hold
}
