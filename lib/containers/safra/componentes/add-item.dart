import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:safra_facil/api/i-safra-service.dart';
import 'package:safra_facil/api/safra-service.dart';

class AddItem extends StatefulWidget {
  String nome;

  AddItem({Key key, this.nome}) : super(key: key);

  @override
  _AddItemState createState() => _AddItemState();
}

class _AddItemState extends State<AddItem> {
  ISafraService _safraService;
  TextEditingController _dataColheitaController = new TextEditingController();
  TextEditingController _freqIrrigacaoController = new TextEditingController();
  Uint8List file;

  @override
  void initState() {
    _safraService = new SafraService();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: EdgeInsets.all(32),
        padding: EdgeInsets.all(16),
        color: Colors.white,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Column(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialogBottomFoto();
                  },
                  child: CircleAvatar(
                    radius: 55,
                    backgroundColor: Color(0XFFA003EA),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          (file != null) ? MemoryImage(file) : null,
                      child: new Text(
                        (file != null) ? "" : "Sem\nimagem",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                new Container(
                    margin: EdgeInsets.all(16),
                    child: TextField(
                      controller: _dataColheitaController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Data colheita',
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    )),
                new Container(
                    margin: EdgeInsets.all(16),
                    child: TextField(
                      controller: _freqIrrigacaoController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Frequencia irrigação',
                      ),
                      onChanged: (text) {
                        setState(() {});
                      },
                    )),
              ],
            ),
            GestureDetector(
              onTap: () async {
                await _safraService.salvarAlimentosLista(
                    widget.nome,
                    _dataColheitaController.text,
                    _freqIrrigacaoController.text,
                    file);
                Navigator.of(context).pop();
              },
              child: new Container(
                margin: EdgeInsets.only(right: 16, top: 32),
                child: new Material(
                  borderRadius: BorderRadius.circular(8),
                  elevation: 4,
                  child: new Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0XFFA003EA)),
                    padding:
                        EdgeInsets.only(top: 8, bottom: 8, left: 32, right: 32),
                    child: new Text(
                      "SALVAR",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> openCamera() async {
    var buscarfoto = await ImagePicker.pickImage(
      source: ImageSource.camera,
    );

    if (buscarfoto != null) {
      file = await buscarfoto.readAsBytes();
      setState(()  {

      });
    }
  }

  Future<String> openGallery() async {
    var buscarfoto = await ImagePicker.pickImage(
      source: ImageSource.gallery,
    );

    if (buscarfoto != null) {
      file = await buscarfoto.readAsBytes();
      setState(()  {

      });
    }
  }

  Future showDialogBottomFoto() {
    return showModalBottomSheet<String>(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        builder: (builder) {
          return new Container(
              height: 130,
              decoration: new BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(10.0),
                      topRight: const Radius.circular(10.0))),
              child: new Column(
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        padding: const EdgeInsets.only(top: 18, bottom: 8),
                        child: new Text(
                          "ADICIONAR FOTO",
                          style: new TextStyle(color: Color(0xff999999)),
                        ),
                      )
                    ],
                  ),
                  new Divider(color: Color(0xffCECECE)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Expanded(
                          flex: 5,
                          child: new GestureDetector(
                            onTap: () async {
                              Navigator.pop(context);
                              await Permission.camera.request();
                              openCamera();
                            },
                            child: new Container(
                              color: Colors.transparent,
                              child: new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Container(
                                    padding: const EdgeInsets.only(top: 8),
                                    child: new Icon(
                                      Icons.camera_alt,
                                      color: Colors.purple,
                                    ),
                                  ),
                                  new Container(
                                    margin: const EdgeInsets.only(top: 6),
                                    child: new Text(
                                      "Usar Câmera",
                                      style: new TextStyle(
                                          color: Color(0xff999999)),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      new Expanded(
                          flex: 5,
                          child: new GestureDetector(
                              onTap: () async {
                                Navigator.pop(context);
                                await Permission.storage.request();
                                openGallery();
                              },
                              child: new Container(
                                color: Colors.transparent,
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Container(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: new Icon(
                                        Icons.add_photo_alternate,
                                        color: Colors.purple,
                                      ),
                                    ),
                                    new Container(
                                      margin: const EdgeInsets.only(top: 6),
                                      child: new Text(
                                        "Usar Galeria",
                                        style: new TextStyle(
                                            color: Color(0xff999999)),
                                      ),
                                    )
                                  ],
                                ),
                              )))
                    ],
                  ),
                ],
              ));
        });
  }
}
