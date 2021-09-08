import 'package:flutter/material.dart';

class FormTIPage extends StatefulWidget {
  const FormTIPage({Key? key}) : super(key: key);

  @override
  _FormTIPageState createState() => _FormTIPageState();
}

class _FormTIPageState extends State<FormTIPage> {
  String dropdownValue = 'Selecione o Setor';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(240, 235, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 80,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Container(
                        height: 15,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(103, 58, 183, 1)),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Abertura de Chamado - TI",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Container(
                  // height: 120,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Informe seu nome: ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        decoration:
                            InputDecoration(hintText: "Nome do solicitante"),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Container(
                  // height: 120,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Departamento: ",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        // width: double.maxFinite,
                        decoration: BoxDecoration(
                            // color: Colors.blue[100],
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),

                        // width: MediaQuery.of(context).size.width * 0.6,
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          // icon: const Icon(Icons.arrow_downward),
                          // iconSize: 24,
                          icon: Container(),
                          underline: Container(),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),

                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'Selecione o Setor',
                            'Adimistrativo',
                            'Segurança do Trabalho',
                            'Transporte',
                            'Indústria',
                            'Recursos Humanos',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                  // color: Colors.blue[50],
                                  width:
                                      MediaQuery.of(context).size.width * 0.75,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        value,
                                        style: TextStyle(
                                            fontFamily: 'Roboto', fontSize: 16),
                                      ),
                                      Icon(Icons.arrow_drop_down)
                                    ],
                                  )),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Card(
                child: Container(
                  // height: 120,
                  width: double.maxFinite,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Descrição da solicitação",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        maxLength: 600,
                        maxLines: 6,
                        decoration: InputDecoration(
                            hintText: "Descreva a solicitação",
                            border: OutlineInputBorder()),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
