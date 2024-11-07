
void main(){
    List<int> numbers =[1,2,3,4,5];

    // properties

    // first:
    // this will show the first element of the list
    print(numbers.first);

    //isEmpty:
    // this propery check the list is empty or not
    // it will return false or true
    print(numbers.isEmpty);

    // isNotEmpty:
    // this property check the list is not empty or not
    // it will return true or false
    print(numbers.isNotEmpty);

    // length:
    // this property check the length of the list
    // this will return the length
    print(numbers.length);

    //last:
    //this will return last element of the property
    print(numbers.last);

    // reversed:
    // this property will reverse the list
    print(numbers.reversed);

    // Single:
    // this checks the list has single element and return it
    try{
        print(numbers.single);
    }catch(err){
        print(err);
    }

}
