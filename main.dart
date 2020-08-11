import 'dart:io';

class Calculator {
  double firstNumber, secondNumber;
  String operation;

  Calculator({this.firstNumber, this.secondNumber, this.operation});

  double get result {
    switch (this.operation) {
      case '+':
        return this.firstNumber + this.secondNumber;
        break;
      case '-':
        return this.firstNumber - this.secondNumber;
        break;
      case '*':
        return this.firstNumber * this.secondNumber;
        break;
      case '/':
        return this.firstNumber / this.secondNumber;
        break;
      default:
        return exit(0);
    }
  }
}

void main() {
  print("Hesap Makinesine hoş geldiniz. Çıkmak için 'q' yaziniz.");

  print("Lütfen bir sayi giriniz: ");
  double firstNumber = double.parse(stdin.readLineSync());
  getFromConsole(firstNumber);
}

void getFromConsole(double firstNum) {
  print("Lütfen bir islem giriniz: ");
  String operation = stdin.readLineSync();

  print("Lütfen bir sayi giriniz: ");
  double secondNumber = double.parse(stdin.readLineSync());

  Calculator calculator = Calculator(
      firstNumber: firstNum, secondNumber: secondNumber, operation: operation);

  double result = calculator.result;
  print('Sonuç: $result');

  calculator = null;
  getFromConsole(result);
}
