import 'package:cubit/src/counter_cubit.dart';
import 'package:cubit/src/simple_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/*void main() {
  final cubit = CounterCubit();
  print(cubit.state); // 0
  cubit.increment();
  print(cubit.state); // 1
  cubit.close();
}*/

// Real-times state update usando Stream
/*Future<void> main() async {
  final cubit = CounterCubit();
  final subscription = cubit.stream.listen(print); // 1
  cubit.increment();
  await Future.delayed(Duration.zero);
  await subscription.cancel();
  await cubit.close();
}*/

//Changes
void main() {
  Bloc.observer = SimpleBlocObserver();
  CounterCubit()
    ..increment()
    ..close();
}

