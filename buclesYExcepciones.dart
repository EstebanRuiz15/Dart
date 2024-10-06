import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  var cir = new Circulo();
  cir.Radio = 20;

  var resultArea = cir.Area();
  var resultPerim = cir.Perimetro();

  print('El área del círculo es: ${resultArea}, y el perímetro es: ${resultPerim} y el nuevo radio es: ${cir.ad10()}');

  int prev = 0, next = 1, sum;
  for (int i = 0; i < 10; i++)
   {
     print(prev);
     sum = prev + next;
     prev = next;
     next = sum;
   }

    try
      {
        print("Escriba numero a dividir");
        double? num = double.parse(stdin.readLineSync()!);
        print("Escriba numero divisor");
        double numDivisor = double.parse(stdin.readLineSync()!);
        if (numDivisor == 0){
            throw new ArgumentError('No se puede dividir por 0');
      }
       print("Resultado es: ${num / numDivisor}");
      } on ArgumentError catch (e){
         print(e.message);
      }catch (e){
        print("Error desconocido");
      }
 }
  
   abstract class ExtraCalculations{
    double ad10();
   }

   abstract class IFigura{
       double Area();
       double Perimetro();
    }


    class Circulo implements IFigura, ExtraCalculations {
      double? Radio;
       @override
       double Area() => pi * Radio! * Radio!;
     
       @override
       double Perimetro() => 2 * pi * Radio!;
       
       @override
       double ad10() {
        return Radio!+10;
         }
    }

