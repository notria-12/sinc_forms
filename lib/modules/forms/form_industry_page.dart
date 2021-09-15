import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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

  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 235, 248, 1),
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(240, 235, 248, 1),
      body: SingleChildScrollView(
        child: FormBuilder(
          key: _fbKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderForm(
                label: "Apropriação de horas(manutenção)",
              ),
              CardForm(
                  label: "Técnico",
                  widget: FormBuilderRadioGroup(
                    orientation: OptionsOrientation.vertical,
                    name: "Técnico",
                    options: [
                      "Jotônio",
                      "Raimundo",
                      "Donisete",
                      "Laércio",
                      "Leonardo"
                    ]
                        .map((opt) => FormBuilderFieldOption(
                            value: opt, child: Text(opt)))
                        .toList(),
                  )),
              CardForm(
                  label: "Setor",
                  widget: FormBuilderTextField(
                    name: "Setor",
                    decoration: InputDecoration(hintText: "Setor"),
                  )),
              CardForm(
                label: "Linha",
                widget: FormBuilderTextField(
                  name: "Linha",
                  decoration: InputDecoration(hintText: "Linha de Produção"),
                ),
              ),
              CardForm(
                label: "Máquina",
                widget: FormBuilderTextField(
                  name: "Máquina",
                  decoration: InputDecoration(hintText: "Informe a máquina"),
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
