import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:safra_facil/api/i-safra-service.dart';
import 'package:safra_facil/api/safra-service.dart';
import 'package:safra_facil/containers/safra/bloc/safra-cubit.dart';
import 'package:safra_facil/containers/safra/models/alimento.dart';

import 'item-list.dart';

class BuyList extends StatefulWidget {
  SafraCubit bloc;

  BuyList({this.bloc});

  @override
  _BuyListState createState() => _BuyListState();
}

class _BuyListState extends State<BuyList> {
  SnackBar snackBar;
  ISafraService _safraService;

  @override
  void initState() {
    _safraService = new SafraService();
    buscarLista();
    snackBar = SnackBar(
      content: const Text('Lista excluída com sucesso'),
      action: SnackBarAction(
        label: 'Desfazer',
        onPressed: () {
          widget.bloc.alimentosSelecionados =
              widget.bloc.backupAlimentosSelecionados;
          setState(() {});
        },
      ),
    );
    super.initState();
  }

  Future<void> buscarLista() async {
    widget.bloc.alimentosSelecionados =
        await _safraService.listarAlimentosSelecionados();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
          child: Navigator(
        onGenerateRoute: (_) => MaterialPageRoute(
          builder: (context2) => Builder(
            builder: (context) => CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                  leading: Container(), middle: Text("Lista de alimentos")),
              child: SafeArea(
                  bottom: false,
                  child: new Column(
                    children: [
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          new GestureDetector(
                            onTap: () {
                              widget.bloc.backupAlimentosSelecionados.clear();

                              for (int i = 0;
                                  i < widget.bloc.alimentosSelecionados.length;
                                  i++) {
                                widget.bloc.backupAlimentosSelecionados
                                    .add(widget.bloc.alimentosSelecionados[i]);
                              }

                              widget.bloc.alimentosSelecionados.clear();
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              setState(() {});
                            },
                            child: new Container(
                              padding: EdgeInsets.all(4.0),
                              margin: EdgeInsets.only(right: 16, bottom: 16),
                              child: Material(
                                borderRadius: BorderRadius.circular(8),
                                elevation: 4,
                                child: new Container(
                                  decoration: BoxDecoration(
                                      color: const Color(0XFFE7AF20),
                                      borderRadius: BorderRadius.circular(8)),
                                  padding: EdgeInsets.only(
                                      top: 8, bottom: 8, left: 16, right: 16),
                                  child: new Text(
                                    "Limpar lista",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      buildList()
                    ],
                  )),
            ),
          ),
        ),
      )),
    );
  }

  Widget buildList() {
    if (widget.bloc.alimentosSelecionados.length == 0) {
      return new Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(8)),
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(left: 16, right: 16),
        child: new Text("Sem itens na lista"),
      );
    } else
      return new Expanded(
        child: ListView(
          shrinkWrap: true,
          controller: ModalScrollController.of(context),
          children: ListTile.divideTiles(
            context: context,
            tiles: List.generate(
                widget.bloc.alimentosSelecionados.length,
                (index) => _buildFoodCard(
                    context,
                    widget.bloc.alimentosSelecionados[index].nome,
                    index,
                    widget.bloc.alimentosSelecionados[index])),
          ).toList(),
        ),
      );
  }

  Widget _buildFoodCard(
      BuildContext context, String text, int index, Alimento alimento) {
    return new FlatButton(
      onPressed: () {
        showBarModalBottomSheet(
          context: context,
          builder: (context) => ItemList(
            bloc: widget.bloc,
            alimento: alimento,
            text: text,
          ),
        );
      },
      child: Container(
        width: 420,
        margin: EdgeInsets.only(bottom: 8),
        child: new Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 4,
          child: new Container(
            padding: EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
            child: new Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Row(
                  children: [
                    new Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                      child: new Text(
                        "Sem\nimagem",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 16),
                      child: new Text(
                        "$text",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                new IconButton(
                    onPressed: () {
                      widget.bloc.alimentosSelecionados.removeAt(index);
                      setState(() {});
                    },
                    icon: Icon(
                      Icons.remove_circle,
                      color: Colors.red,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("Cancelar"),
      onPressed: () {
        Navigator.of(context).pop();
        setState(() {});
      },
    );
    Widget continueButton = FlatButton(
      child: Text("Confirmar"),
      onPressed: () {
        widget.bloc.alimentosSelecionados.clear();
        Navigator.of(context).pop();
        setState(() {});
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text("Atenção"),
      content: Text("Tem certeza que deseja limpar a lista de compras?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
