import 'package:bloc/bloc.dart';

class BottomNavOperationCubit extends Cubit<int> {
  BottomNavOperationCubit() : super(0);
  int index = 0;
  changIndex(int index) {
    this.index = index;
    emit(index);
  }
}
