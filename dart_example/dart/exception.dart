void main() {
  int num1 = 10;
  int? num2;

  try {
    throw Exception("unknown error");
    print(num1 ~/ num2!);
  } on IntegerDivisionByZeroException catch (e, s) {
    print("0으로 나눌 수 없음");
  } on TypeError catch (e, s) {
    print("null 참조~");
  } catch (e, s) {
    print(e);
    print(s);
    rethrow;
  } finally {
    print("무조건 처리~");
  }

  print("동작 완료~");
}
