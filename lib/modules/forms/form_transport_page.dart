import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormTransportPage extends StatefulWidget {
  const FormTransportPage({Key? key}) : super(key: key);

  @override
  _FormTransportPageState createState() => _FormTransportPageState();
}

class _FormTransportPageState extends State<FormTransportPage> {
  String dropdownValue = 'Selecione seu nome';
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
          children: [
            HeaderForm(label: "CHECK-LIST OFICINA"),
            CardForm(
                label: "Qual o nome do vistoriador?",
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
                      'Selecione seu nome',
                      'Antônio Francisco Santos de Sousa(Vaqueiro)',
                      'Edi Carlos Da silva Oliveira',
                      'José Francisco Gonçalves Pereira(Peteca)',
                      'Orlnado Ferreira Santos(Tomate)',
                      'Natan Da Silva Pereira',
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
                ))
          ],
        ),
      ),
    );
  }
}
