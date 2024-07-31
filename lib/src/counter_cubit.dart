import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  //Quando um Cubit emite um novo estado, uma Change acontece. Isso pode ser visto dessa forma:
  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  // o Cubit tem um método addError que pode ser usado para indicar que o um erro ocorreu
  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
}