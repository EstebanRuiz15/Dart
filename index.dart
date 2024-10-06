import 'dart:io';

void main(){
  print('Hola! bienvenidos al calculador de edad');
  print('escribe tu nombre');
  String? nameInput=stdin.readLineSync();
  if (nameInput == null || nameInput.isEmpty) {
    print('El nombre no puede estar vacío');
    return;
  }
  print('Un gusto conocerte $nameInput');
  print('escribe tu fecha de ancimiento en formato yyyy-mm-dd');
  String? birthDayInput=stdin.readLineSync();
  DateTime? dateConverted=DateTime.tryParse(birthDayInput!);
  if(dateConverted == null){
    print('la fecha de nacimiento $birthDayInput es invalida ');
    return ;
  }
  int? agee;
  if(DateTime.now().year<dateConverted.year) { 
    agee=DateTime.now().year - dateConverted.year;
    }else{
      agee=DateTime.now().year - dateConverted.year-1;
    }
   var person=Person(
    name: nameInput,
    birthday: dateConverted,
    age: agee,
   );
   print('tu nombre: ${person.name}');
   print('tu fecha de nacimiento: ${person.birthday}');
   print('tu edad: ${person.age}');
}

class Person{
  final String? name;
  final DateTime? birthday;
  final int? age;
  Person({this.name,this.birthday, this.age});
}