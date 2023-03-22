/* import the package mobx and mobx.dart */
import 'package:mobx/mobx.dart';
/* part the model.g.dart using build runner package. */
part 'model.g.dart';

// Create a class named as HomeScreenModel and assign it witht eh base model named _HomeScreenModelBase.
class HomeScreenModel = _HomeScreenModelBase with _$HomeScreenModel;
// Create an abstract class named _HomeScreenModelBase.
abstract class _HomeScreenModelBase with Store {
  
  // Declare a class field observable
  @observable
  // Declare a identifier named as counter of type integer and assign "0" value to it.
  int counter = 0;
  /* Declare a arrow function of identifier named setcounter where the parameter given initiated is counter of type int. And it returns the counter assinged is counter */
  void setcounter({required int counter})=> this.counter = counter;
}