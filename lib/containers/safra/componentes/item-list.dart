import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safra_facil/api/i-safra-service.dart';
import 'package:safra_facil/api/safra-service.dart';
import 'package:safra_facil/containers/safra/bloc/safra-cubit.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';

class ItemList extends StatefulWidget {
  SafraCubit bloc;
  Alimento alimento;
  String text;

  ItemList({required this.bloc, required this.text, required this.alimento});

  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
 late String file;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Navigator(
      onGenerateRoute: (_) => MaterialPageRoute(
        builder: (context2) => Builder(
          builder: (context) => CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
                leading: Container(), middle: Text("Descrição")),
            child: SafeArea(
              bottom: false,
              child: new SingleChildScrollView(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Container(
                      margin: EdgeInsets.only(top: 16),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 55,
                            backgroundColor: Color(0XFFA003EA),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  (file != null) ? NetworkImage(file) : null,
                              child: new Text(
                                (file != null) ? "" : "Sem\nimagem",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                        margin: EdgeInsets.all(16),
                        child: TextField(
                          enabled: true,
                          controller:
                              new TextEditingController(text: _dataFormatada()),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'data inicio',
                          ),
                          onChanged: (text) {
                            setState(() {});
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.all(16),
                        child: TextField(
                          enabled: true,
                          controller: new TextEditingController(
                              text: widget.alimento.dataColheita),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Data Colheita',
                          ),
                          onChanged: (text) {
                            setState(() {});
                          },
                        )),
                    new Container(
                        margin: EdgeInsets.all(16),
                        child: TextField(
                          enabled: true,
                          controller: new TextEditingController(
                              text: widget.alimento.freqIrrigacao),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Frequencia Irrigação',
                          ),
                          onChanged: (text) {
                            setState(() {});
                          },
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }

  String _dataFormatada() {
    DateTime data = DateTime.parse(widget.alimento.dataInicio!);

    return "${data.day}/${data.month}/${data.year}";
  }

  Widget addButtom(String text) {
    bool existeNaLista = false;
    for (int i = 0; i < widget.bloc.alimentosSelecionados.length; i++) {
      if (widget.bloc.alimentosSelecionados[i].nome == text) {
        existeNaLista = true;
      }
    }

    if (widget.bloc.alimentosSelecionados.length == 0 || !existeNaLista) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              widget.bloc.alimentosSelecionados
                  .add(new Alimento(nome: text, qtde: 1));
              setState(() {});
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
                      EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
                  child: new Text(
                    "Adicionar à lista de compras",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return new Container(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new IconButton(
                onPressed: () {
                  widget.bloc.alimentosSelecionados.last.qtde =
                      widget.bloc.alimentosSelecionados.last.qtde! - 1;
                  if (widget.bloc.alimentosSelecionados.last.qtde == 0) {
                    widget.bloc.alimentosSelecionados.removeLast();
                  }
                  setState(() {});
                },
                icon: Icon(
                  Icons.remove,
                  color: const Color(0xffA003EA),
                )),
            new Text(widget.bloc.alimentosSelecionados.last.qtde.toString()),
            new IconButton(
                onPressed: () {
                  widget.bloc.alimentosSelecionados.last.qtde =
                      widget.bloc.alimentosSelecionados.last.qtde! + 1;
                  setState(() {});
                },
                icon: Icon(
                  Icons.add,
                  color: const Color(0xffA003EA),
                ))
          ],
        ),
      );
    }
  }
}
