void main() {
  // if, else if, else
  bool trigger = 10 < 20;

  if (trigger) {
    print('true');
  } else {
    print('false');
  }

  int standard = 3;

  if (standard < 0) {
    print("0보다 작음");
  } else if (standard == 3) {
    print("3임");
  } else {
    print("다 아님..");
  }

  // switch
  int num = 1000;

  switch (num) {
    case 1:
      print("Switch $num");
    case 2:
      print("Switch $num");
    case 3:
      print("Switch $num");
    case 4:
      print("Switch $num");
    case 5:
      print("Switch $num");
    case > 100:
      print("big number!! $num");
    default:
      print("1~5 아님");
  }
}
