import 'dart:io';

import 'challenge/challenge.dart';
import 'menu/manu.dart';

void main(List<String> args) {
  menu menuu=menu();
  menuu.Mostrarmenu();

  print('por favor escoge una opcion\n');
  int? opcion = int.tryParse(stdin.readLineSync()!);
  while (opcion != 15) {
  
   switch (opcion) {
      case 1: challenge1().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 2: challenge2().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 3: challenge3().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 4: challenge4().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 5: challenge5().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 6: challenge6().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 7: challenge7().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 8: challenge8().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 9: challenge9().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 10: challenge10().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 11: challenge11().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 12: challenge12().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 13: challenge13().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 14: challenge14().run();
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
      case 15: 
      break;
      default: 
      print('Opcion no valida');
      print('Dale enter para continuar al menu');
      stdin.readLineSync();
      break;
    }
    menuu.Mostrarmenu();
   print('por favor escoge una opcion\n');
   opcion = int.tryParse(stdin.readLineSync()!);
    
  }
  print('Gracias por participar');
}
