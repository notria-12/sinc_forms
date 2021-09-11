import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormSSTPage extends StatefulWidget {
  const FormSSTPage({Key? key}) : super(key: key);

  @override
  _FormSSTPageState createState() => _FormSSTPageState();
}

class _FormSSTPageState extends State<FormSSTPage> {
  int val = -1;
  int radioValue = -1;
  DateTime selectedDate = DateTime.now();
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
                )),
            CardForm(
                label: "Prioridade",
                widget: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text("Muito alta"),
                      flex: 3,
                    ),
                    Flexible(
                      flex: 6,
                      child: Container(
                        // color: Colors.amber[50],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("1"),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  // color: Colors.blue,
                                  child: SizedBox(
                                    height: 20,
                                    width: 20,
                                    child: Radio(
                                      value: 1,
                                      groupValue: radioValue,
                                      onChanged: (value) {
                                        setState(() {
                                          radioValue = value as int;
                                        });
                                      },
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("2"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Radio(
                                    value: 2,
                                    groupValue: radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        radioValue = value as int;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("3"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Radio(
                                    value: 3,
                                    groupValue: radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        radioValue = value as int;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("4"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Radio(
                                    value: 4,
                                    groupValue: radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        radioValue = value as int;
                                      });
                                    },
                                  ),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text("5"),
                                SizedBox(
                                  height: 20,
                                ),
                                SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: Radio(
                                    value: 5,
                                    groupValue: radioValue,
                                    onChanged: (value) {
                                      setState(() {
                                        radioValue = value as int;
                                      });
                                    },
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      child: Text("Muito baixa"),
                      flex: 3,
                    ),
                  ],
                )),
            CardForm(
                label: "Prazo",
                widget: ListTile(
                  title: TextFormField(
                    // initialValue: ,

                    readOnly: true,
                    decoration: InputDecoration(
                        // labelText: "Data",
                        hintText:
                            DateFormat("dd/MM/yyyy").format(selectedDate)),
                  ),
                  trailing: IconButton(
                      icon: Icon(Icons.calendar_today_rounded),
                      onPressed: () => buildMaterialDatePicker(context)),
                )),
            CardForm(
                label: "Mais detalhes importantes",
                widget: TextFormField(
                  decoration: InputDecoration(hintText: "Detalhes"),
                )),
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

  buildMaterialDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
      initialEntryMode: DatePickerEntryMode.calendar,
      initialDatePickerMode: DatePickerMode.day,
      // selectableDayPredicate: _decideWhichDayToEnable,
      helpText: 'Selecione a Data',
      cancelText: 'Cancelar',
      confirmText: 'Ok',
      errorFormatText: 'Enter valid date',
      errorInvalidText: 'Enter date in valid range',
      fieldLabelText: 'Booking date',
      fieldHintText: 'Month/Date/Year',
      builder: (context, child) {
        return Theme(
          data: ThemeData.light(),
          child: child!,
        );
      },
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }
}
