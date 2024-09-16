method Triple(x: int) returns (r: int) {
  var y := 2 * x;
  r := x + y;
}

method Main() {
  var t := Triple(10);
  print t, "\n"; // need the new line character to see any output at all
}
