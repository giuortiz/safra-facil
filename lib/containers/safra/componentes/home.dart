import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:safra_facil/containers/safra/bloc/safra-cubit.dart';
import 'package:safra_facil/containers/safra/bloc/safra-model.dart';
import 'package:safra_facil/containers/safra/componentes/responsive.dart';
import 'detail.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  SafraCubit _bloc = new SafraCubit();

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

  Map<String, String> listMonthName = {
    "JAN": "Janeiro",
    "FEV": "Fevereiro",
    "MAR": "Março",
    "ABR": "Abril",
    "MAI": "Maio",
    "JUN": "Junho",
    "JUL": "Julho",
    "AGO": "Agosto",
    "SET": "Setembro",
    "OUT": "Outubro",
    "NOV": "Novembro",
    "DEZ": "Dezembro",
  };
  String mes = "Janeiro";

  @override
  void initState() {
    _bloc = new SafraCubit();
    _bloc.buscarAlimentos(mes).then((value) => setState(() {}));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new BlocProvider(
      create: (context) {
        return _bloc;
      },
      child: Scaffold(
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new Text(
                "Calendário da Safra",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Descubra quais frutas, verduras e legumes estão em sua melhor época durante o ano",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildList(BuildContext context) {
    return new Container(
      child: ListView(
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
          Container(
            margin: (Responsive.isMobile(context))
                ? EdgeInsets.only(left: 16, right: 16)
                : EdgeInsets.only(left: 64, right: 64),
            alignment: Alignment.center,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsets.all(4),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 4,
                runSpacing: 4,
                children: List.generate(12, (index) {
                  return SizedBox(
                    width: 70,
                    child: _buildMonthCard(index),
                  );
                }),
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 16),
            child: new Text(
              '$mes - Alimentos Da Safra',
              style: TextStyle(fontSize: 16),
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height / 1.6,
            child: new SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: new Wrap(
                  direction: Axis.horizontal, children: foodList(context)),
            ),
          )
        ],
      ),
    );
  }

  List<Widget> foodList(BuildContext context) {
    List<Widget> lista = [];
    print(_bloc.frutasAtuais.length);
    _bloc.frutasAtuais.forEach((element) {
      lista.add(
        _buildFoodCard(context, element.nome ?? ""),
      );
    });
    return lista;
  }

  Widget _buildMonthCard(int index) {
    if (_bloc.state.selectedMonth == index)
      return new GestureDetector(
        onTap: () async {
          mes = listMonthName[listMonth[index]] ?? "";
          _bloc.changeSelectedMonth(index);
          await _bloc.buscarAlimentos(mes);
          setState(() {});
        },
        child: new Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.white),
          child: new Text(
            listMonth[index],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
    else
      return new GestureDetector(
        onTap: () async {
          mes = listMonthName[listMonth[index]] ?? "";
          _bloc.changeSelectedMonth(index);
          await _bloc.buscarAlimentos(mes);
          setState(() {});
        },
        child: new Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: new Text(
            listMonth[index],
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
      );
  }

  Widget _buildFoodCard(BuildContext context, String text) {
    return TextButton(
      onPressed: () {
        showBarModalBottomSheet(
          context: context,
          builder: (context) => Detail(
            bloc: _bloc,
            text: text,
          ),
        );
      },
      child: Container(
        width: 420,
        margin: const EdgeInsets.only(bottom: 8),
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 4,
          child: Container(
            padding: const EdgeInsets.only(
              top: 8,
              right: 16,
              left: 16,
              bottom: 8,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "Sem\nimagem",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        text,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
