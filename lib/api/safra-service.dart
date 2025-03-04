import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';
import 'package:uuid/uuid.dart';

import 'i-safra-service.dart';

class SafraService implements ISafraService {


@override
  Future<List<Alimento>> listarAlimentosTipoEMes(
      String tipo, String mes) async {
    List<Alimento> listaAlimentos = [];
    try {
      var response = await FirebaseFirestore.instance
          .collection("Tipo")
          .doc(tipo)
          .collection("Mes")
          .doc(mes)
          .collection("Alimentos")
          .get()
          .then((value) {
        for (var doc in value.docs) {
          listaAlimentos.add(Alimento(
            nome: doc.data()["nome"],
            id: doc.data()["id"],
          ));
        }
      });

      return listaAlimentos;
    } catch (e) {
      return [];
    }
  }
}
