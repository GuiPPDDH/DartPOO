import 'dart:mirrors';
import 'fazer.dart';
import 'pessoa.dart';

void main() {
  final p1 = Pessoa();

  var instanceMirror = reflect(p1);
  var classMirror = instanceMirror.type;

  classMirror.metadata.forEach((annotation) {
    var instanceAnnotation = annotation.reflectee;
    if (instanceAnnotation is Fazer) {
      print('Quem: ${instanceAnnotation.quem}');
      print('O que: ${instanceAnnotation.oque}');
    }
  });

  classMirror.declarations.values.forEach((declarationMirror) {
    if (declarationMirror is VariableMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('VARIÁVEIS!!!!');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que: ${instanceAnnotation.oque}');
        }
      });
    } else if (declarationMirror is MethodMirror) {
      declarationMirror.metadata.forEach((annotation) {
        var instanceAnnotation = annotation.reflectee;
        if (instanceAnnotation is Fazer) {
          print('MÉTODOS!!!!');
          print('Quem: ${instanceAnnotation.quem}');
          print('O que: ${instanceAnnotation.oque}');
        }
      });
    }
  });
}
