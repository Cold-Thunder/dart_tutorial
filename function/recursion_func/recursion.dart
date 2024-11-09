/// A function which is called itself again and again or recursively,
/// then this process is called recursion.


/// best  uses
/// it is best for a few questions such as
/// 1. searching,
/// 2. sorting,
/// 3. Inorder/Preorder/Postorder,
/// 4. Tree Traversal, and
/// 5. DFS of Graph algorithms.


/// Disadvantages of recursion function:
/// 1.The recursive calls consume a lot of memory;
///    that's why these are inefficient.
/// 2. The recursive functions are difficult to debug.
/// 3. Sometimes, It is hard to follow the logic behind the recursion.
void main(){
  int i =0;
  print(fector(5));
}

int fector(int a){
  if(a <= 1){
    return 1;
  }else{
    return a*fector(a-1);
  }
}
