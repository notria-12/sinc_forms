import 'dart:io';

import 'package:path/path.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sinc_forms/modules/forms/controllers/form_ti_controller.dart';
import 'package:sinc_forms/shared/utils/dialog.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormTIPage extends StatefulWidget {
  const FormTIPage({Key? key}) : super(key: key);

  @override
  _FormTIPageState createState() => _FormTIPageState();
}

class _FormTIPageState extends State<FormTIPage> {
  String dropdownValue = 'Selecione o Setor';
  final GlobalKey<FormBuilderState> _fbKey = GlobalKey<FormBuilderState>();
  File? file;
  final GlobalKey<State> _keyLoader = new GlobalKey<State>();

  @override
  Widget build(BuildContext context) {
    String fileName =
        file != null ? basename(file!.path) : "Nenhuma aquivo selecionado";
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
              HeaderForm(label: "Abertura de chamado - T.I"),
              CardForm(
                label: "Informe seu nome: ",
                widget: FormBuilderTextField(
                  name: 'nome',
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context,
                        errorText: "Esse Campo não pode ser vazio"),
                  ]),
                  keyboardType: TextInputType.text,
                ),
              ),
              CardForm(
                label: "Departamento",
                widget: FormBuilderDropdown(
                  name: 'departamento',
                  allowClear: true,
                  hint: Text('Selecione o Setor'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context,
                        errorText: "Esse Campo não pode ser vazio")
                  ]),
                  items: [
                    'Financeiro',
                    'Faturamento',
                    'Contabilidade',
                    'Segurança do Trabalho',
                    'Transporte',
                    'Indústria',
                    'Recursos Humanos'
                  ]
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text('$gender'),
                          ))
                      .toList(),
                ),
              ),
              CardForm(
                  label: "Descrição da solicitação",
                  widget: FormBuilderTextField(
                    maxLines: 8,
                    maxLength: 600,
                    name: 'desc_solicitacao',
                    decoration: InputDecoration(border: OutlineInputBorder()),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse Campo não pode ser vazio"),
                    ]),
                    keyboardType: TextInputType.text,
                  )),
              CardForm(
                label: "Anexar Arquivo(opcional)",
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(37, 59, 179, 1)),
                        onPressed: selectFile,
                        icon: Icon(Icons.file_present),
                        label: Text('Anexar Arquivo')),
                    Text(fileName)
                  ],
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_fbKey.currentState!.saveAndValidate()) {
                        Map data = _fbKey.currentState!.value;
                        Dialogs.showLoadingDialog(context, _keyLoader);
                        if (file != null) {
                          await FormTIController().createForm(data,
                              file: file,
                              destination: "files/TI/${basename(file!.path)}");
                        } else {
                          await FormTIController().createForm(
                            data,
                          );
                        }
                        _fbKey.currentState!.reset();

                        Navigator.of(_keyLoader.currentContext!,
                                rootNavigator: true)
                            .pop();
                        setState(() {
                          file = null;
                        });
                      } else {
                        print("Preencha Os dados orbigatórios");
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

  Future selectFile() async {
    final result = await FilePicker.platform.pickFiles(allowMultiple: false);

    if (result == null) return;

    final path = result.files.single.path;
    setState(() {
      file = File(path!);
    });
  }
}
