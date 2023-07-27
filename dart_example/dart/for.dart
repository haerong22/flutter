void main() {
  // for
  for (int i = 0; i < 3; i++) {
    print("for $i");
  }

  // for in
  List<int> indexs = [0, 1, 2, 3];

  for (final i in indexs) {
    print("for in $i");
  }

  // while
  bool isRunning = true;
  int count = 0;

  while (isRunning) {
    if (count > 3) {
      isRunning = false;
      break;
    }

    print("while $count");

    count++;
  }

  // do while
  int num = 0;

  do {
    num++;

    if (num == 1) {
      continue;
    }

    print("do while $num");
  } while (num < 3);
}