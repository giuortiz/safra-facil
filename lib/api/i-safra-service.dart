import 'package:safra_facil/containers/safra/models/alimento.dart';

abstract class ISafraService {
  Future<void> buscarSolicitacoes();
  Future<List<Alimento>> listarAlimentosTipoEMes(String tipo, String Mes);
}
