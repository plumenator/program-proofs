function Average(a: int, b: int): int {
  (a + b) / 2
}

// ghost method is allowed to call compiled
ghost method Triple(x: int) returns (r: int)
  ensures r == 3 * x
{
  r := Average(2 * x, 4 * x); // ghost fn is only allowed in specification contexts
}
