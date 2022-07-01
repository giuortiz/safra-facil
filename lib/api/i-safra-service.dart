import 'dart:typed_data';

import 'package:safra_facil/containers/safra/models/alimento.dart';

abstract class ISafraService {
  Future<void> buscarSolicitacoes();

  Future<List<Alimento>> listarAlimentosTipoEMes(String tipo, String Mes);

  Future<bool> salvarAlimentosLista(
      String nome, String dataColheita, String freqIrrigacao, Uint8List file);

  Future<bool> apagarAlimentosLista();

  Future<List<Alimento>> listarAlimentosSelecionados();

  Future<dynamic> buscarFoto(String idFoto);
}
