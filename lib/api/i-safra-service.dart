import 'dart:typed_data';

import 'package:safra_facil/containers/safra/models/alimento.dart';

abstract class ISafraService {

  Future<List<Alimento>> listarAlimentosTipoEMes(String tipo, String Mes);
}
