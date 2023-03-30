contract Test {
  // ruleid: constant-not-in-uppercase
  uint8 constant test = 1337;
  // ruleid: constant-not-in-uppercase
  string constant Test = "kekeke";
  // ruleid: constant-not-in-uppercase
  bytes internal constant aTEST = hex"616161";
  // ok: constant-not-in-uppercase
  uint256 constant TEST = 31338;
  // ok: constant-not-in-uppercase
  int64 constant THE_TEST = 123;
}