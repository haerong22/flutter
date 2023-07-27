import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  print("가위, 바위, 보 중 하나를 입력해 주세요.");
  final String userInput = stdin.readLineSync(encoding: utf8) ?? "Error";

  const selectList = ["가위", "바위", "보"];
  final cpuInput = selectList[Random().nextInt(3)];

  final result = getResult(userInput, cpuInput);

  print(result);
}

String getResult(String userInput, String cpuInput) {
  const win = "이겼다!";
  const draw = "비겼네-ㅅ-";
  const lose = "졌다ㅠㅠ";

  String result = draw;

  switch (userInput) {
    case "가위":
      if (cpuInput == "바위") {
        result = lose;
      }

      if (cpuInput == "보") {
        result = win;
      }

    case "바위":
      if (cpuInput == "보") {
        result = lose;
      }

      if (cpuInput == "가위") {
        result = win;
      }

    case "보":
      if (cpuInput == "가위") {
        result = lose;
      }

      if (cpuInput == "바위") {
        result = win;
      }

    default:
      result = "잘못된 입력값";
  }

  return result;
}
