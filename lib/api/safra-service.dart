import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';
import 'package:uuid/uuid.dart';

import 'i-safra-service.dart';

class SafraService implements ISafraService {
  @override
  Future<void> buscarSolicitacoes() async {
    try {
/*      var response = await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Abacate")
          .setData({"nome": "Abacate", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Abacaxi Haway")
          .setData({"nome": "Abacaxi Haway", "id": Uuid().v1()});*/
    /*  await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Abacaxi Perola")
          .setData({"nome": "Abacaxi Perola", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Ameixa")
          .setData({"nome": "Ameixa", "id": Uuid().v1()});
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Banana Nanica")
          .setData({"nome": "Banana Nanica", "id": Uuid().v1()});*/
  /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Banana Maça")
          .setData({"nome": "Banana Maça", "id": Uuid().v1()});*/
 /*     await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Banana Prata")
          .setData({"nome": "Banana Prata", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Cajú")
          .setData({"nome": "Cajú", "id": Uuid().v1()});*/
  /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Caqui")
          .setData({"nome": "Caqui", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Coco Seco")
          .setData({"nome": "Coco Seco", "id": Uuid().v1()});*/
    /*  await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Figo")
          .setData({"nome": "Figo", "id": Uuid().v1()});*/
   /*   await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Fruta do Conde")
          .setData({"nome": "Fruta do Conde", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Goiaba")
          .setData({"nome": "Goiaba", "id": Uuid().v1()});
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Jabuticaba")
          .setData({"nome": "Jabuticaba", "id": Uuid().v1()});*/
 /*     await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Laranja")
          .setData({"nome": "Laranja", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Limão")
          .setData({"nome": "Limão", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Mamão")
          .setData({"nome": "Mamão", "id": Uuid().v1()});
  /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Mamão Haway")
          .setData({"nome": "Mamão Haway", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Manga")
          .setData({"nome": "Manga", "id": Uuid().v1()});
  /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Maracuja Azedo")
          .setData({"nome": "Maracuja Azedo", "id": Uuid().v1()});*/
 /*     await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Maracuja Doce")
          .setData({"nome": "Maracuja Doce", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Melancia")
          .setData({"nome": "Melancia", "id": Uuid().v1()});
     /* await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Melão")
          .setData({"nome": "Melão", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Morango")
          .setData({"nome": "Morango", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Nectarina")
          .setData({"nome": "Nectarina", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Nêspera")
          .setData({"nome": "Nêspera", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Pêssego")
          .setData({"nome": "Pêssego", "id": Uuid().v1()});
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Tangerina Cravo")
          .setData({"nome": "Tangerina Cravo", "id": Uuid().v1()});*/
 /*     await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Tangerina Murgot")
          .setData({"nome": "Tangerina Murgot", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Tangerina Poncan")
          .setData({"nome": "Tangerina Poncan", "id": Uuid().v1()});*/
/*      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Uva Itália")
          .setData({"nome": "Uva Itália", "id": Uuid().v1()});*/
  /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Uva Niágara")
          .setData({"nome": "Uva Niágara", "id": Uuid().v1()});*/

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

      });
      return listaAlimentos;
    } catch (e) {
      return null;
    }
  }
}
