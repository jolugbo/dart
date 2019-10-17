class GenericsModule{
  void GenericOperations(){
    List<int> numb =  List<int>();
    numb.addAll([1, 2, 3]);
    print(numb);
    List<String> strings = List<String>();
    add<int>(1,4);
    addNumbers<int>(1,4);
    print(addCollections<int>(24,[1,3,2]));
  }
  void add<T>(T a,T b){
    print(a);
    print(b);
  }
  void addNumbers<T extends num>(T a, T b){
    print(a+b);
  }

  T addCollections<T extends num>(T a,List<T> b){
    T ans = a;
    b.forEach((value){
      ans = ans + value;
    });
    return ans;
  }

  void addThis<T extends num>(T a, T b){
    print(a + b);
  }
  void addAllThis<T>(List<T> a, List<T> b){
    a.forEach((item) => print(item));

  }
}