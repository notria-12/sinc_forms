import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 235, 248, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(240, 235, 248, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderForm(label: "Abertura de chamdo - T.I"),
            CardForm(
              label: "Informe seu nome: ",
              widget: TextFormField(
                decoration: InputDecoration(hintText: "Nome do solicitante"),
              ),
            ),
            CardForm(
                label: "Departamento",
                widget: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
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
                            width: MediaQuery.of(context).size.width * 0.75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                )),
            CardForm(
                label: "Descrição da solicitação",
                widget: TextFormField(
                  maxLength: 600,
                  maxLines: 6,
                  decoration: InputDecoration(
                      hintText: "Descreva a solicitação",
                      border: OutlineInputBorder()),
                )),
            CardForm(
              label: "Anexar Arquivo",
              widget: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(37, 59, 179, 1)),
                  onPressed: () {},
                  icon: Icon(Icons.file_present),
                  label: Text('Anexar Arquivo')),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                height: 30,
                width: MediaQuery.of(context).size.width * 0.4,
                child: ElevatedButton(
                  onPressed: () {
                    // Modular.to.pushNamed('/home');
                  },
                  child: Text('ENVIAR'),
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromRGBO(33, 33, 33, 1)),
                ))
          ],
        ),
      ),
    );
  }
}
