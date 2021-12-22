import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';
import 'package:uuid/uuid.dart';

import 'i-safra-service.dart';

class SafraService implements ISafraService {
  @override
  Future<void> buscarSolicitacoes() async {
    try {
      /*   var response = await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Acelga")
          .setData({"nome": "Acelga", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Agrião")
          .setData({"nome": "Agrião", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Alface")
          .setData({"nome": "Alface", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Alho Porró")
          .setData({"nome": "Alho Porró", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Almeirão")
          .setData({"nome": "Almeirão", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Aspargo")
          .setData({"nome": "Aspargo", "id": Uuid().v1()});
      /*   await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Brócolis")
          .setData({"nome": "Brócolis", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Catalonha")
          .setData({"nome": "Catalonha", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Cebolinha")
          .setData({"nome": "Cebolinha", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Chicória")
          .setData({"nome": "Chicória", "id": Uuid().v1()});
      /* await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Coentro")
          .setData({"nome": "Coentro", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Couve")
          .setData({"nome": "Couve", "id": Uuid().v1()});
      /*  await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Couve Flor")
          .setData({"nome": "Couve Flor", "id": Uuid().v1()});*/
      /*  await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Erva Doce")
          .setData({"nome": "Erva Doce", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Escarola")
          .setData({"nome": "Escarola", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Espinafre")
          .setData({"nome": "Espinafre", "id": Uuid().v1()});
      /* await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Gobô")
          .setData({"nome": "Gobô", "id": Uuid().v1()});*/
      /*  await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Louro")
          .setData({"nome": "Louro", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Mostarda")
          .setData({"nome": "Mostarda", "id": Uuid().v1()});
      /* await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Moyashi")
          .setData({"nome": "Moyashi", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Nabo")
          .setData({"nome": "Nabo", "id": Uuid().v1()});
      /*  await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Rabanete")
          .setData({"nome": "Rabanete", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Repolho")
          .setData({"nome": "Repolho", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Rúcula")
          .setData({"nome": "Rúcula", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Salsa")
          .setData({"nome": "Salsa", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Verduras")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Salsão")
          .setData({"nome": "Salsão", "id": Uuid().v1()});

      print("response");
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<List<Alimento>> listarAlimentosTipoEMes(
      String tipo, String mes) async {
    List<Alimento> listaAlimentos = [];
    try {
      var response = await Firestore.instance
          .collection("Tipo")
          .document(tipo)
          .collection("Mes")
          .document(mes)
          .collection("Alimentos")
          .getDocuments()
          .then((value) {
        for (int i = 0; i < value.documents.length; i++) {
          listaAlimentos.add(new Alimento(
              nome: value.documents[i].data["nome"],
              id: value.documents[i].data["id"]));
        }
        return listaAlimentos;
      });
    } catch (e) {
      return null;
    }
  }
}
