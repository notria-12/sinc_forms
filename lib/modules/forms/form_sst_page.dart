import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormSSTPage extends StatefulWidget {
  const FormSSTPage({Key? key}) : super(key: key);

  @override
  _FormSSTPageState createState() => _FormSSTPageState();
}

class _FormSSTPageState extends State<FormSSTPage> {
  int val = -1;
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
            HeaderForm(label: "Solicitação de Serviços em SST"),
            CardForm(
                label: "Email",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "email"),
                )),
            CardForm(
                label: "Solicitante",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "Informe seu nome"),
                )),
            CardForm(
                label: "Setor",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "Informe seu setor"),
                )),
            CardForm(
                label: "Telefone p/Contato",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "Contato"),
                )),
            CardForm(
                label: "Tipo de Serviço",
                widget: Column(
                  children: [
                    RadioListTile(
                        title: Text(
                            "Treinamentos (CURSOS ESPECIFÍCOS DE FORMAÇÃO INICIAL OU CONTINUADA)"),
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title:
                            Text("E.P.I (EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL"),
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Dedetização"),
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Outro"),
                        value: 4,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                  ],
                )),
            CardForm(
                label: "Descrição do serviço solicitado",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "Descreva o serviço"),
                ))
          ],
        ),
      ),
    );
  }
}
