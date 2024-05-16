
void main() {
  (int, bool) testRecord() {
    return (1, true);
  }

  final res = testRecord();
  print(res.$1);
}
