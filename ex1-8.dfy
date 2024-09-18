method MaxSum(x: int, y: int) returns (s: int, m: int)
  ensures m >= x && m >= y
  ensures m == x || m == y
  ensures s == x + y
{
  s := x + y;
  if x > y {
    m := x;
  } else {
    m := y;
  }
}

method ReconstructFromMaxSum(s: int, m: int) returns (x: int, y: int)
  ensures s == x + y
  ensures m == x || m == y
  ensures m >= x && m >= y
  requires s - m <= m
{
  x := m;
  y := s - m;
}

method TestMaxSum(x: int, y: int) {
  var s, m := MaxSum(x, y);
  var xx, yy := ReconstructFromMaxSum(s, m);
  assert (x == xx && y == yy) || (x == yy && y == xx);
}
