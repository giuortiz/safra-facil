import 'package:flutter_bloc/flutter_bloc.dart';
import 'safra-cubit-actions.dart';
import 'safra-model.dart';

class SafraCubit extends Cubit<SafraModel> implements SafraCubitActions {
  SafraCubit() : super(new SafraModel(selectedItem: 0, selectedMonth: 0));

  @override
  void changeSelectedItem(int item) {
    emit(state.patchState(selectedItem: item));
  }

  @override
  void changeSelectedMonth(int item) {
    emit(state.patchState(selectedMonth: item));
  }
}
