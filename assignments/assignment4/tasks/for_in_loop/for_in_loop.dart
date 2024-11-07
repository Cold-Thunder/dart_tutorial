///for..in loop is similar to for loop.
/// but its syntax is just difference
/// it iterates through an objects properties
///
/// the variable var holds the value of the iteration
///
/// syntax:
/// for(var in expression){
///   statement
///   }

void main(){
    List<int> nums= [1,2,3,4,5,6];

    for(var x in nums){
      print(x);
    }
}