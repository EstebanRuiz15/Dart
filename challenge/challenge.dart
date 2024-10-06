
import 'dart:io';
import 'dart:math';

class challenge1 {
  void run() {
    print('Ingrese un numero');
    int? num = int.tryParse(stdin.readLineSync()!);
    if (num! < 0) {
      print('el numero es negativo, solo deben ser numeros positivos');
    } else {
      if (num == 0) {
        print('el resultado es 0');
      } else {
        print('como el numero es positivo el resultado es: ${pow(num, 2)}');
      }
    }
  }
}

class challenge2 {
  void run() {
    print('Escriba el primer numero');
    int? a = int.tryParse(stdin.readLineSync()!);
    print('Escriba el segundo numero');
    int? b = int.tryParse(stdin.readLineSync()!);
    if (a! >= b!) {
      print('el reesultado es: ${a * 2}');
    } else {
      print('el resultado es: ${b * 3}');
    }
  }
}

class challenge3 {
  void run() {
    print('Escriba un numero');
    int? a = int.tryParse(stdin.readLineSync()!);

    if(a!>0){
      double raiz= sqrt(a);
      print('la raiz cuadrada es: $raiz');
    }else{
      print('su cuadrado es: ${pow(a,2)}');
    }
  }
}

class challenge4 {
  void run() {
    print('Escriba el radio del circulo');
    double? a = double.tryParse(stdin.readLineSync()!);
    if(a!= null) print('el perimetro del circulo es: ${2*pi*a}');
    else print('porfavor escriba un valor valido');
  }
  
}

class challenge5 {
  void run() {
    print('escriba el dia de la semana');
    int? dia=int.tryParse(stdin.readLineSync()!);
    if(dia==1) return print('el dia es lunes');
    if(dia==2) return print('el dia es martes');
    if(dia==3) return print('el dia es miercoles');
    if(dia==4) return print('el dia es jueves');
    if(dia==5) return print('el dia es viernes');
    else return print('fuera de rango');
  }
}

class challenge6 {
  void run() {
    print('escribe tu salario');
    double? salario=double.tryParse(stdin.readLineSync()!);
    
    if(salario==null) return print('valor invalido');
    if(salario>12000){
      print('el impuesto a pagar es de: ${salario*(15/100)}');
    }else{
      print('no debe pagar impuesto');
     }
  }
}

class challenge7 {
  void run() {
    print('digite el primer numero');
    int? a=int.tryParse(stdin.readLineSync()!);
    print('digite el segundo numero');
    int? b=int.tryParse(stdin.readLineSync()!);
    if(b==0) return print('indefinido');
    if(a!=null && b!= null)return print('El residuo de $a dividido $b es: ${a%b}');
    print('escriba valores validos');

  }
}

class challenge8 {
  void run() {
    double suma=0;
    for(int i=1; i<=100; i++){
      if(i%2!=0) suma+=i;
    }
    print('el resltado de la suma de los numeros impares entre 1 y 100 es: $suma');
  }
}

class challenge9 {
  void run() {
    print('ingrese la primer fraccion, en el formato 1/1');
    String? fracc1=stdin.readLineSync();
    print('ingrese la segunda fraccion, en el formato 1/1');
    String? fracc2=stdin.readLineSync();
    if(fracc1!=null && fracc2!=null){
      int? a=int.tryParse(fracc1.split('/')[0]);
      int? b=int.tryParse(fracc1.split('/')[1]);
      int? c=int.tryParse(fracc2.split('/')[0]);
      int? d=int.tryParse(fracc2.split('/')[1]);
    if(b==0 || d==0) return print('indeterminado, los denominadores no deben ser 0');
    if(a!=null && b!=null &&c!=null && d!=null){
      return print('el resultado de la resta entre $fracc1 y $fracc2 es: ${(a/b)-(c/d)}');
    }
    }
    print('por favor digite las fracciones correctamente');


  }
}

class challenge10 {
  void run() {
    print('digita la palabra o frase');
    String? palabra=stdin.readLineSync();
    List<String> lis=palabra!.split(' ');
    if(palabra.isEmpty) return print('no puede estar vacia');
    int sum=0;
    for(int i=0; i<lis.length; i++){
      sum+=lis[i].length;
    }
    print('el tamaño de la palabra o frase es: $sum');
  }
}

class challenge11 {
  void run() {
    print('por favor escribe el primer numero');
    int? a=int.tryParse(stdin.readLineSync()!);
    print('por favor escribe el segundo numero');
    int? b=int.tryParse(stdin.readLineSync()!);
    print('por favor escribe el tercer numero');
    int? c=int.tryParse(stdin.readLineSync()!);
    if(a!=null && b!=null && c!=null){
      return print('el promedio es: ${(a+b+c)/3}');
    }
    print('por favor escriba valores validos');
  }
}

class challenge12 {
  void run() {
    List<int> lisnum=[];
    print('por favor escribe el primer numero');
    lisnum.add(int.tryParse(stdin.readLineSync()!)??0);
    print('por favor escribe el segundo numero');
    lisnum.add(int.tryParse(stdin.readLineSync()!)??0);
    print('por favor escribe el tercer numero');
    lisnum.add(int.tryParse(stdin.readLineSync()!)??0);
    print('por favor escribe el cuarto numero');
    lisnum.add(int.tryParse(stdin.readLineSync()!)??0);
    print('por favor escribe el quinto numero');
    lisnum.add(int.tryParse(stdin.readLineSync()!)??0);

  if(lisnum[0]!=0 && lisnum[1]!=0 && lisnum[2]!=0 && lisnum[3]!=0 && lisnum[4]!=0){
    int mayor=lisnum[0];
    for(int i=1; i<5; i++){
      if(lisnum[i]>mayor) mayor=lisnum[i];
    }
    return print('el numero mayor es el: $mayor');
  }
    print('por favor escriba valores validos');

  }
}

class challenge13 {
  void run() {
    print('digite la palabra');
    String? input=stdin.readLineSync();
    if(input==null || input.isEmpty) return print('no hay palabra para comparar');
    String palabra=input.toLowerCase();
    if(palabra.split('').reversed.join('')==palabra) return print('$palabra es una palabra palindroma');
   print('$palabra no es una palabra palindroma');
    
  }
}

class challenge14 {
  void run() {
    print('ingresa el numero');
    int? num=int.tryParse(stdin.readLineSync()!);
    if(num!=null){
      if(num%2==0)return print('el numero $num es par');
      return print('el numero $num es impar');
    }
    print('ingresa un numero valido');
  }
}



