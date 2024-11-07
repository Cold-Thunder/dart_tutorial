import 'dart:io';

void main(){
  print('Please enter the diagram length: ');
  int? num = int.tryParse(stdin.readLineSync()!);

  if(num != null){
    diagram_maker(num);
  }else{
    print('Please enter a valid number!');
  }
}

diagram_maker(int a){
  for(int i = 1; i <= a; i++){
    for(int j = 1; j < i; j++){
      stdout.write(" ");
    }
    stdout.write(i);
    stdout.write('\n');
  }
}