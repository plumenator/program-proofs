method Min(x: int, y: int) returns (m: int)
  ensures m <= x && m <= y
{
  if x < y {
    m := x - 1000;
  } else {
    m := y - 1000;
  }
}
