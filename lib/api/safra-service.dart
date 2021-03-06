import 'dart:convert';
import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
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
          .document("Banana Ma??a")
          .setData({"nome": "Banana Ma??a", "id": Uuid().v1()});*/
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
          .document("Caj??")
          .setData({"nome": "Caj??", "id": Uuid().v1()});*/
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
          .document("Lim??o")
          .setData({"nome": "Lim??o", "id": Uuid().v1()});*/
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Mam??o")
          .setData({"nome": "Mam??o", "id": Uuid().v1()});
      /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Mam??o Haway")
          .setData({"nome": "Mam??o Haway", "id": Uuid().v1()});*/
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
          .document("Mel??o")
          .setData({"nome": "Mel??o", "id": Uuid().v1()});*/
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
          .document("N??spera")
          .setData({"nome": "N??spera", "id": Uuid().v1()});
      await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("P??ssego")
          .setData({"nome": "P??ssego", "id": Uuid().v1()});
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
          .document("Uva It??lia")
          .setData({"nome": "Uva It??lia", "id": Uuid().v1()});*/
      /*    await Firestore.instance
          .collection("Tipo")
          .document("Frutas")
          .collection("Mes")
          .document("Dezembro")
          .collection("Alimentos")
          .document("Uva Ni??gara")
          .setData({"nome": "Uva Ni??gara", "id": Uuid().v1()});*/

      print("response");
    } catch (e) {
      print(e);
    }
  }


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


  Future<bool> salvarAlimentosLista(String nome, String dataColheita,
      String freqIrrigacao, Uint8List file) async {
    try {
      String id = Uuid().v1();
      salvarFoto(file, id);
      var response = await Firestore.instance
          .collection("Acompanhamento")
          .document("4vqMiGekCZqrJ3SNKqqV")
          .collection("Alimentos")
          .document(nome)
          .setData({
        "nome": nome,
        "dataInicio": DateTime.now().toIso8601String(),
        "dataColheita": dataColheita,
        "freqIrrigacao": freqIrrigacao,
        "idFoto": id
      });
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> apagarAlimentosLista() async {
    try {
      var response = await Firestore.instance
          .collection("Acompanhamento")
          .document("4vqMiGekCZqrJ3SNKqqV")
          .delete();
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<List<Alimento>> listarAlimentosSelecionados() async {
    List<Alimento> listaAlimentos = [];
    try {
      var response = await Firestore.instance
          .collection("Acompanhamento")
          .document("4vqMiGekCZqrJ3SNKqqV")
          .collection("Alimentos")
          .getDocuments()
          .then((value) {
        for (int i = 0; i < value.documents.length; i++) {
          listaAlimentos.add(new Alimento(
              nome: value.documents[i].data["nome"],
              id: value.documents[i].data["id"],
              dataColheita: value.documents[i].data["dataColheita"],
              dataInicio: value.documents[i].data["dataInicio"],
              freqIrrigacao: value.documents[i].data["freqIrrigacao"],
              idFoto: value.documents[i].data["idFoto"]));
        }
      });
      return listaAlimentos;
    } catch (e) {
      return null;
    }
  }

  Future<dynamic> buscarFoto(String idFoto) {
    try {
      final StorageReference firebaseStorageRef =
      FirebaseStorage.instance.ref().child(idFoto);
      var res = firebaseStorageRef.getDownloadURL();
      return res;
    } catch (e) {
      return null;
    }
  }

  bool salvarFoto(Uint8List file, String id) {
    try {
      final StorageReference firebaseStorageRef =
          FirebaseStorage.instance.ref().child(id);
      final StorageUploadTask task = firebaseStorageRef.putData(file);
      return true;
    } catch (e) {
      print(e);
    }
  }
}
