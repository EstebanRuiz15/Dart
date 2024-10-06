import 'dart:ffi';
import 'dart:io';

void main(){
  print('Por favor digite el primer numero');
  double? a=double.tryParse(stdin.readLineSync()!);
  print('Por favor digite el segundo numero');
  double? b=double.tryParse(stdin.readLineSync()!);
  const indeter= 'indeterminado';

  if(a!= null && b!= null){
    print('la suma es: ${a + b}\nla resta es: ${a - b}\nla multiplicacion es: ${a * b}\nla division es: ${(b!=0? a / b : indeter)}' );
  }else{
    print('por favor escriba valores validos');
  }
}