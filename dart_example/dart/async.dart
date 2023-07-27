void main() {
  // todo(3);
  // todo(1);
  // todo(5);

  todo2().listen((event) {});
  todo2().listen((event) {});
}

// async, await, Future : 1회만 응답
Future<void> todo(int second) async {
  await Future.delayed(Duration(seconds: second));
  print("TODO Done in $second seconds");
}

// async*, yield, Stream : 지속적 응답
Stream<int> todo2() async* {
  int counter = 0;

  while (counter <= 5) {
    counter++;
    await Future.delayed(Duration(seconds: 1));
    print("TODO2 is Running $counter");
    yield counter;
  }

  print("TODO is Done");
}
