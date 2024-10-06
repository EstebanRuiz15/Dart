void main(List<String> args) {
  cuadrado cuad= cuadrado();
  cuad.base=20;
  cuad.altura=40;
  print('el area es: ${cuad.area}');
  print('el lado es: ${cuad.lado}');
  print('el perimetro es: ${cuad.perimetro}');
}

class rectangulo{
  double? base;
  double? altura;

  double get area=>base!*altura!;
  double get perimetro=>2*base! + 2*altura!;
}

class cuadrado extends rectangulo{
  set lado(double value){
    base =value;
    altura=value;
  }
  double get lado=>base!;
}