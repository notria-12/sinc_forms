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
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Selecione seu nome"),
                    ]),
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
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Setor",
                    decoration: InputDecoration(hintText: "Setor"),
                  )),
              CardForm(
                label: "Linha",
                widget: FormBuilderTextField(
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context,
                        errorText: "Esse campo é obrigatório"),
                  ]),
                  name: "Linha",
                  decoration: InputDecoration(hintText: "Linha de Produção"),
                ),
              ),
              CardForm(
                label: "Máquina",
                widget: FormBuilderTextField(
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context,
                        errorText: "Esse campo é obrigatório"),
                  ]),
                  name: "Máquina",
                  decoration: InputDecoration(hintText: "Informe a máquina"),
                ),
              ),
              CardForm(
                  label: "Data de manutenção",
                  widget: ListTile(
                    title: FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Esse campo é obrigatório"),
                      ]),
                      name: 'Data Manutenção',
                      format: DateFormat('dd/MM/yyyy'),
                      // onChanged: _onChanged,
                      inputType: InputType.date,
                      // decoration: InputDecoration(
                      //   labelText: 'Appointment Time',
                      // ),
                      // initialTime: TimeOfDay(hour: 8, minute: 0),
                      initialValue: DateTime.now(),
                      // enabled: true,
                    ),
                    trailing: Icon(Icons.calendar_today_rounded),
                  )),
              CardForm(
                  label: "Início da manutenção",
                  widget: ListTile(
                    title: FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Esse campo é obrigatório"),
                      ]),
                      name: 'Inicio Manutenção',
                      // format: DateFormat('dd/MM/yyyy'),
                      // onChanged: _onChanged,
                      inputType: InputType.time,
                      decoration:
                          InputDecoration(hintText: "Selecione o horário"),
                      initialTime: TimeOfDay(hour: 8, minute: 0),
                      // initialValue: DateTime.now(),
                      // enabled: true,
                    ),
                    trailing: Icon(Icons.timer),
                  )),
              CardForm(
                  label: "Fim da manutenção",
                  widget: ListTile(
                    title: FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Esse campo é obrigatório"),
                      ]),
                      name: 'Fim Manutenção',
                      // format: DateFormat('dd/MM/yyyy'),
                      // onChanged: _onChanged,
                      inputType: InputType.time,
                      decoration:
                          InputDecoration(hintText: "Selecione o horário"),
                      initialTime: TimeOfDay(hour: 8, minute: 0),
                      // initialValue: DateTime.now(),
                      // enabled: true,
                    ),
                    trailing: Icon(Icons.timer),
                  )),
              CardForm(
                  label: "Tipo de manuteção",
                  widget: FormBuilderRadioGroup(
                    name: "Tipo Manutenção",
                    orientation: OptionsOrientation.vertical,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    options: [
                      "CORRETIVA (quando houve uma falha/quebra que interrompe o processo produtivo)",
                      "CORRETIVA PLANEJADA (quando houve uma falha/quebra que NÃO interrompe o processo produtivo)",
                      "PREVENTIVA (quando houve inspeção acompanhada de check-list)",
                      "MELHORIA (quando houve a melhora de algo pré-existente)",
                      "PROJETO (quando houve a implementação de algo inexistente)",
                      "Outro"
                    ]
                        .map((opt) => FormBuilderFieldOption(
                              value: opt,
                              child: opt == "Outro"
                                  ? FormBuilderTextField(
                                      name: "Outro T. Manutenção",
                                      decoration:
                                          InputDecoration(hintText: "Outro"))
                                  : Text(opt),
                            ))
                        .toList(),
                  )),
              CardForm(
                  label: "Descrição da atividade",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Descrição da atividade",
                    decoration: InputDecoration(hintText: "Descrição"),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_fbKey.currentState!.saveAndValidate()) {
                        print(_fbKey.currentState!.value);
                      }
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
}
