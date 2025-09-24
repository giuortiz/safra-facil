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
 late ISafraService _safraService;
  List<Alimento> frutasAtuais = [];
  List<Alimento> verdurasAtuais = [];
  List<Alimento> legumesAtuais = [];
  List<Alimento> alimentosSelecionados = [];

  @override
  void changeSelectedItem(int item) {
    emit(state.patchState(selectedItem: item));
  }

  @override
  void changeSelectedMonth(int item) {
    emit(state.patchState(selectedMonth: item));
  }

  Future<void> buscarAlimentos(String mes) async {
    _safraService = new SafraService();
    List<Alimento> listaFrutas =
        await _safraService.listarAlimentosTipoEMes("Frutas", mes);
    List<Alimento> listaVerduras =
    await _safraService.listarAlimentosTipoEMes("Verduras", mes);
    List<Alimento> listaLegumes =
    await _safraService.listarAlimentosTipoEMes("Legumes", mes);

      frutasAtuais = listaFrutas;
      verdurasAtuais = listaVerduras;
      legumesAtuais = listaLegumes;

  }
}
