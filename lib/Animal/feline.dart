import 'Mammal.dart';
import 'predators.dart';
class Feline extends Mammal with Predators{
  bool hasClaws = true;

  @override
  void runs(){
    super.runs();
    print("cats are fast runner");
  }
  @override
  void standoutFeature(){
    super.standoutFeature();
  }
}
