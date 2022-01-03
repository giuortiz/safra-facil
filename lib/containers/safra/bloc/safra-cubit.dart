import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:safra_facil/api/i-safra-service.dart';
import 'package:safra_facil/api/safra-service.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';
import 'safra-cubit-actions.dart';
import 'safra-model.dart';

class SafraCubit extends Cubit<SafraModel> implements SafraCubitActions {
  SafraCubit()
      : super(new SafraModel(
            selectedItem: 0, selectedMonth: 0));
  ISafraService _safraService;
  List<Alimento> alimentosAtuais = [];
  List<Alimento> alimentosSelecionados = [];
  List<Alimento> backupAlimentosSelecionados = [];

  @override
  void changeSelectedItem(int item) {
    emit(state.patchState(selectedItem: item));
  }

  @override
  void changeSelectedMonth(int item) {
    emit(state.patchState(selectedMonth: item));
  }

  Future<void> buscarAlimentos(String alimento, String mes) async {
    _safraService = new SafraService();
    List<Alimento> lista =
        await _safraService.listarAlimentosTipoEMes(alimento, mes);
    if (lista != null) {
      alimentosAtuais = lista;
    }
  }
}
