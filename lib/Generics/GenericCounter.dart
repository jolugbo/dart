class GenericCounter<T extends num>{
  List<T> _items = List<T>();
  void addAll(Iterable<T> iterable) => _items.addAll(iterable);
  void add(T value) => _items.add(value);
  T ElementAt(int index) => _items.elementAt(index);
  void total(){
    num value = 0;
    _items.forEach((item){
      value = value + item;
    });
    print(value);
  }
}