import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sinc_forms/modules/forms/controllers/form_ti_controller.dart';
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
                      if (_fbKey.currentState!.saveAndValidate()) {
                        Map data = _fbKey.currentState!.value;

                        FormTIController().createForm(data);
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
}
