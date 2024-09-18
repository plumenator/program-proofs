function Average(x: int, y: int): int {
  (x + y) / 2
}

method Triple'(x: int) returns (r: int)
  ensures Average(r, 3 * x) == 3 * x
{
  r := 3 * x + 1; // integer division!
}
