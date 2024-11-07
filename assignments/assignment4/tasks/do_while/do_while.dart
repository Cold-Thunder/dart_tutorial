/// in do...while loop it execute the block of code first
/// then it check the condition
///
/// if true, it will start iterating again
///
/// main difference between while and do...while loop is
/// it will execute the program for once.
/// syntax:
///
/// do{
///     //statements
///    }while(condition)

void main(){

  int i = 0;

  do{
    print(i);
    i++;
  }while(i < 1);
}