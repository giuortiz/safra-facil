import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:safra_facil/containers/safra/bloc/safra-cubit.dart';


class Detail extends StatefulWidget {
  SafraCubit bloc;
  String text;

  Detail({required this.bloc, required this.text});

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
                          new Container(
                            width: 150,
                            alignment: Alignment.center,
                            height: 150,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8)),
                            child: new Text(
                              "Sem\nimagem",
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(16),
                      child: new Text(
                        widget.text,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(16),
                      child: new Text(
                        "Em andamento",
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(16),
                      child: new Text(
                        "Outros meses em que é encontrado",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    new Container(
                      margin: EdgeInsets.all(16),
                      child: new Text(
                        "Em andamento",
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
