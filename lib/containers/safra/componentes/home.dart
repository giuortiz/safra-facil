import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:safra_facil/api/i-safra-service.dart';
import 'package:safra_facil/api/safra-service.dart';
import 'package:safra_facil/containers/safra/bloc/safra-cubit.dart';
import 'package:safra_facil/containers/safra/bloc/safra-model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SafraCubit _bloc = new SafraCubit();
  ISafraService _safraService;

  List<String> listMonth = [
    "JAN",
    "FEV",
    "MAR",
    "ABR",
    "MAI",
    "JUN",
    "JUL",
    "AGO",
    "SET",
    "OUT",
    "NOV",
    "DEZ"
  ];

  @override
  void initState() {
    _safraService = new SafraService();
    _safraService.listarAlimentosTipoEMes("Verduras", "Janeiro");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
      create: (context) {
        _bloc = new SafraCubit();
        return _bloc;
      },
      child: Scaffold(
        backgroundColor: const Color(0xffA003EA),
        body: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return new BlocBuilder<SafraCubit, SafraModel>(builder: (context, state) {
      return new SafeArea(
        bottom: false,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_buildHeader(context), _buildList(context)],
        ),
      );
    });
  }

  Widget _buildHeader(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new IconButton(
              icon: new Icon(
                Icons.list,
                color: Colors.transparent,
              ),
            ),
            new Text(
              "INÍCIO",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            new IconButton(
              icon: new Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {
                showBarModalBottomSheet(
                  context: context,
                  builder: (context) => Material(
                      child: Navigator(
                    onGenerateRoute: (_) => MaterialPageRoute(
                      builder: (context2) => Builder(
                        builder: (context) => CupertinoPageScaffold(
                          navigationBar: CupertinoNavigationBar(
                              leading: Container(),
                              middle: Text("Lista de compras")),
                          child: SafeArea(
                              bottom: false,
                              child: new Column(
                                children: [
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      new GestureDetector(
                                        onTap: () {},
                                        child: new Container(
                                          padding: EdgeInsets.all(4.0),
                                          margin: EdgeInsets.only(
                                              right: 16, bottom: 16),
                                          child: Material(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            elevation: 4,
                                            child: new Container(
                                              decoration: BoxDecoration(
                                                  color:
                                                      const Color(0XFFE7AF20),
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              padding: EdgeInsets.only(
                                                  top: 8,
                                                  bottom: 8,
                                                  left: 16,
                                                  right: 16),
                                              child: new Text(
                                                "Limpar lista",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  new Expanded(
                                    child: ListView(
                                      shrinkWrap: true,
                                      controller:
                                          ModalScrollController.of(context),
                                      children: ListTile.divideTiles(
                                        context: context,
                                        tiles: List.generate(
                                            10,
                                            (index) => _buildFoodCard(
                                                context, "Item teste $index")),
                                      ).toList(),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ),
                  )),
                );
              },
            ),
          ],
        ),
        _buildFilterList(context)
      ],
    );
  }

  Widget _buildFilterList(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 16),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildCardFilter(context, "Frutas", 0),
          _buildCardFilter(context, "Verduras", 1),
          _buildCardFilter(context, "Legumes", 2)
        ],
      ),
    );
  }

  Widget _buildCardFilter(BuildContext context, String text, int item) {
    if (_bloc.state.selectedItem == item)
      return new GestureDetector(
          onTap: () {
            _bloc.changeSelectedItem(item);
          },
          child: new Material(
            borderRadius: BorderRadius.circular(20),
            elevation: 4,
            child: new Container(
              padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: new Text(text, style: TextStyle(color: Colors.black)),
            ),
          ));
    else
      return new GestureDetector(
        onTap: () {
          _bloc.changeSelectedItem(item);
        },
        child: new Container(
          padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
          color: Colors.transparent,
          child: new Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
  }

  Widget _buildList(BuildContext context) {
    return new Container(
      height: MediaQuery.of(context).size.height * (3 / 4),
      decoration: BoxDecoration(
          color: const Color(0xFFEDEDED),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30))),
      child: new ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [_buildMonthList(context)],
      ),
    );
  }

  Widget _buildMonthList(BuildContext context) {
    return SingleChildScrollView(
      child: new Column(
        children: [
          new Container(
            margin: EdgeInsets.only(top: 32),
            child: new Text(
              "SETEMBRO",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 16,
            alignment: Alignment.center,
            width: double.infinity,
            child: new ListView.builder(
                padding: EdgeInsets.only(top: 16),
                scrollDirection: Axis.horizontal,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return _buildMonthCard(index);
                }),
          ),
          new Container(
            height: MediaQuery.of(context).size.height / 1.6,
            child: new SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new Wrap(
                direction: Axis.horizontal,
                children: [
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                  _buildFoodCard(context, "Abacaxi"),
                ],
              ),
            ),
          )
          /*    Container(
            height: MediaQuery
                .of(context)
                .size
                .height / 1.8,
            child: new ListView.builder(
                padding: EdgeInsets.only(top: 16),
                shrinkWrap: true,
                itemCount: 1,
                itemBuilder: (context, index) {
                  return _buildFoodCard(context, "Abacaxi");
                }),
          )*/
        ],
      ),
    );
  }

  Widget _buildMonthCard(int index) {
    if (_bloc.state.selectedMonth == index)
      return new GestureDetector(
        onTap: () {
          _bloc.changeSelectedMonth(index);
        },
        child: new Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 8),
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xFFC4C4C4)),
          child: new Text(
            listMonth[index],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    else
      return new GestureDetector(
        onTap: () {
          _bloc.changeSelectedMonth(index);
        },
        child: new Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(right: 8),
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: new Text(
            listMonth[index],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
  }

  Widget _buildFoodCard(BuildContext context, String text) {
    return new FlatButton(
      onPressed: () {
        showBarModalBottomSheet(
          context: context,
          builder: (context) => Material(
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
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(8)),
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.all(16),
                            child: new Text(
                              "ALIMENTO",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          new Container(
                            margin: EdgeInsets.all(16),
                            child: new Text(
                              "Descrição dos nutrientes do alimento (levando em conta uma porção, como por exemplo 100g)",
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
                              "Outubro, Novembro, Dezembro e Janeiro",
                            ),
                          ),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              new Container(
                                margin: EdgeInsets.only(right: 16, top: 32),
                                child: new Material(
                                  borderRadius: BorderRadius.circular(8),
                                  elevation: 4,
                                  child: new Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: const Color(0XFFA003EA)),
                                    padding: EdgeInsets.only(
                                        top: 8, bottom: 8, left: 16, right: 16),
                                    child: new Text(
                                      "Adicionar à lista de compras",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )),
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
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    new Container(
                      padding: EdgeInsets.only(left: 16),
                      child: new Text(
                        text,
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                new Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
