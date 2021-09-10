import 'package:flutter/material.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';
import 'package:intl/intl.dart';

enum SingingCharacter { jotonio, raimundo }

class FormIndustryPage extends StatefulWidget {
  const FormIndustryPage({Key? key}) : super(key: key);

  @override
  _FormIndustryPageState createState() => _FormIndustryPageState();
}

class _FormIndustryPageState extends State<FormIndustryPage> {
  DateTime selectedDate = DateTime.now();

  int val = -1;
  int valManutention = -1;
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
            HeaderForm(
              label: "Apropriação de horas(manutenção)",
            ),
            CardForm(
                label: "Técnico",
                widget: Column(
                  children: [
                    RadioListTile(
                        title: Text("Jotônio"),
                        value: 1,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Raimundo"),
                        value: 2,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Donisete"),
                        value: 3,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Laércio"),
                        value: 4,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("Leonardo"),
                        value: 5,
                        groupValue: val,
                        onChanged: (value) {
                          setState(() {
                            val = value as int;
                          });
                        })
                  ],
                )),
            CardForm(
                label: "Setor",
                widget: TextFormField(
                  // maxLength: 600,
                  // maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Setor",
                  ),
                )),
            CardForm(
              label: "Linha",
              widget: TextFormField(
                decoration: InputDecoration(hintText: "Linha de produção"),
              ),
            ),
            CardForm(
              label: "Máquina",
              widget: TextFormField(
                decoration: InputDecoration(hintText: "Linha de produção"),
              ),
            ),
            CardForm(
                label: "Data de manutenção",
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
              //TODO: COLOCAR MÁSCARA
              label: "Início da manutenção",
              widget: TextFormField(
                decoration: InputDecoration(),
              ),
            ),
            //TODO: COLOCAR MÁSCARA
            CardForm(
              label: "Fim da manutenção",
              widget: TextFormField(
                decoration: InputDecoration(),
              ),
            ),
            CardForm(
                label: "Tipo de manutenção",
                widget: Column(
                  children: [
                    RadioListTile(
                        title: Text(
                            "CORRETIVA (quando houve uma falha/quebra que interrompe o processo produtivo)"),
                        value: 1,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                            "CORRETIVA PLANEJADA (quando houve uma falha/quebra que NÃO interrompe o processo produtivo)"),
                        value: 2,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                            "PREVENTIVA (quando houve inspeção acompanhada de check-list)"),
                        value: 3,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                            "MELHORIA (quando houve a melhora de algo pré-existente)"),
                        value: 4,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text(
                            "PROJETO (quando houve a implementação de algo inexistente)"),
                        value: 5,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        }),
                    RadioListTile(
                        title: Text("OUTRO"),
                        value: 6,
                        groupValue: valManutention,
                        onChanged: (value) {
                          setState(() {
                            valManutention = value as int;
                          });
                        })
                  ],
                )),
            CardForm(
              label: "Descrição da atividade",
              widget: TextFormField(
                decoration: InputDecoration(),
              ),
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
