function F(): int {
  29
}

method M() returns (r: int)
  ensures r == 29 // makes the method deterministic
{
  r := 29;
}

method Caller() {
  var a := F();
  var b := M();
  assert a == 29;
  assert b == 29; // fails because M() is non deterministic
}
