import 'package:dart_poo/13_operator_methods/numero.dart';

void main() {
  var num1 = Numero(10);
  var num2 = Numero(20);
  var totalSoma = num1 + num2;
  print(totalSoma.i);

  var totalSub = num1 - num2;
  print(totalSub.i);

  var totalMulti = num1 * num2;
  print(totalMulti.i);
}