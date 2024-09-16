method Triple(x: int) returns (r: int)
  requires x % 2 == 0 // commenting this out makes the postcondition below unprovable
  ensures r == 3 * x
{
  var y := x / 2;
  r := 6 * y;
}

method Caller() {
  var t := Triple(18);
  assert t < 100; // no error because Caller can look at the postcondition
}
