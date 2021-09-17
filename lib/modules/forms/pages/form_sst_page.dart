import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
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
              HeaderForm(label: "Solicitação de Serviços em SST"),
              CardForm(
                  label: "Email",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Email",
                    decoration: InputDecoration(hintText: "email"),
                  )),
              CardForm(
                  label: "Solicitante",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Solicitante",
                    decoration: InputDecoration(hintText: "Informe seu nome"),
                  )),
              CardForm(
                  label: "Setor",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Setor",
                    decoration: InputDecoration(hintText: "Informe seu setor"),
                  )),
              CardForm(
                  label: "Telefone p/Contato",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Telefone",
                    decoration: InputDecoration(hintText: "Contato"),
                  )),
              CardForm(
                  label: "Tipo de Serviço",
                  widget: FormBuilderRadioGroup(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Esse campo é obrigatório"),
                      ]),
                      orientation: OptionsOrientation.vertical,
                      name: "Tipo de Serviço ",
                      options: [
                        "Treinamentos (CURSOS ESPECIFÍCOS DE FORMAÇÃO INICIAL OU CONTINUADA)",
                        "E.P.I (EQUIPAMENTOS DE PROTEÇÃO INDIVIDUAL",
                        "Dedetização",
                        "Outro"
                      ]
                          .map((opt) => FormBuilderFieldOption(
                                value: opt,
                                child: opt == "Outro"
                                    ? FormBuilderTextField(
                                        name: "Outro T. Serviço",
                                        decoration:
                                            InputDecoration(hintText: "Outro"),
                                      )
                                    : Text(opt),
                              ))
                          .toList())),
              CardForm(
                  label: "Descrição do serviço solicitado",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Descrição do serviço solicitado",
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
                          child: FormBuilderRadioGroup(
                            validator: FormBuilderValidators.compose([
                              FormBuilderValidators.required(context,
                                  errorText: "Esse campo é obrigatório"),
                            ]),
                            orientation: OptionsOrientation.wrap,
                            wrapVerticalDirection: VerticalDirection.down,
                            name: "Prioridade",
                            options: [1, 2, 3, 4, 5]
                                .map((opt) => FormBuilderFieldOption(
                                      value: opt,
                                    ))
                                .toList(),
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
                    title: FormBuilderDateTimePicker(
                      validator: FormBuilderValidators.compose([
                        FormBuilderValidators.required(context,
                            errorText: "Esse campo é obrigatório"),
                      ]),
                      name: 'Data Manutenção',
                      format: DateFormat('dd/MM/yyyy'),
                      inputType: InputType.date,
                      initialValue: DateTime.now(),
                    ),
                    trailing: Icon(Icons.calendar_today_rounded),
                  )),
              CardForm(
                  label: "Mais detalhes importantes",
                  widget: FormBuilderTextField(
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse campo é obrigatório"),
                    ]),
                    name: "Detalhes",
                    decoration: InputDecoration(hintText: "Detalhes"),
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
