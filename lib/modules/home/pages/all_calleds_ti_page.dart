import 'package:flutter/material.dart';
import 'package:sinc_forms/modules/home/widgets/called_widget.dart';

class AllCalledsTIPage extends StatefulWidget {
  const AllCalledsTIPage({Key? key}) : super(key: key);

  @override
  _AllCalledsTIPageState createState() => _AllCalledsTIPageState();
}

class _AllCalledsTIPageState extends State<AllCalledsTIPage> {
  var list = [
    {"title": "Recarga de tonner", "subtitle": "Indústria"},
    {"title": "Reativação do Office", "subtitle": "Indústria"},
    {"title": "Recarga de tonner", "subtitle": "Indústria"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(37, 59, 179, 1),
        title: Text('Todos os chamados'),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(37, 59, 179, 1),
      body: ListView(
        children: [
          Container(
            height: 30,
          ),
          ...List.generate(
              list.length,
              (index) => CalledWidget(
                  title: list[index]["title"]!,
                  subtitle: list[index]["title"]!))
        ],
      ),
    );
  }
}
