import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sinc_forms/shared/widgets/card_form_widget.dart';
import 'package:sinc_forms/shared/widgets/header_form_widget.dart';

class FormTransportPage extends StatefulWidget {
  const FormTransportPage({Key? key}) : super(key: key);

  @override
  _FormTransportPageState createState() => _FormTransportPageState();
}

class _FormTransportPageState extends State<FormTransportPage> {
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
              HeaderForm(label: "CHECK-LIST OFICINA"),
              CardForm(
                label: "Qual o nome do vistoriador?",
                widget: FormBuilderDropdown(
                  name: 'Vistoriador',
                  allowClear: true,
                  hint: Text('Selecione seu nome'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(context,
                        errorText: "Esse Campo não pode ser vazio")
                  ]),
                  items: [
                    'Antônio Francisco Santos de Sousa(Vaqueiro)',
                    'Edi Carlos Da silva Oliveira',
                    'José Francisco Gonçalves(Peteca)',
                    'Orlando Ferreira Santos(Tomate)',
                    'Natan Da Silva Pereira'
                  ]
                      .map((gender) => DropdownMenuItem(
                            value: gender,
                            child: Text('$gender'),
                          ))
                      .toList(),
                ),
              ),
              CardForm(
                  label: "Qual a placa do veículo?",
                  widget: FormBuilderDropdown(
                    name: 'Placa',
                    allowClear: true,
                    hint: Text('Selecione a placa'),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(context,
                          errorText: "Esse Campo não pode ser vazio")
                    ]),
                    items: [
                      'HPE-0799',
                      'HPK-3389',
                      'HPY-7668',
                      'HPY-9776',
                      'HPT-6023',
                      'LVJ-3756',
                      'LVK-8571',
                      'LVM-2B61',
                      'NHE-9868',
                      'NHL-3832',
                      'NHL-5794',
                      'NHS-6256',
                      'NHS-6381',
                      'NHT-9179',
                      'NHV-9069',
                      'NMP-1819',
                      'NMW-7455',
                      'NNA-9501',
                      'NNE-8167',
                      'NXF-8891',
                      'NXJ-1I45',
                      'OIY-7168',
                      'OIY-8990',
                      'OIY-9367',
                      'OJA-0049',
                      'OJM-8561',
                      'OJM-8581',
                      'OJM-9124',
                      'OJM-9895',
                      'PSB-1167',
                      'PSB-1860',
                      'PSO-2014',
                      'HPK-7983',
                      'HPN-7603',
                      'NTJ-8773',
                      'PSB-2089'
                    ]
                        .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Text('$gender'),
                            ))
                        .toList(),
                  )),
              CardForm(
                  label: "Regular Freio",
                  widget: CustomRadioGroupThreeOptions(
                    name: "Regular Freio",
                  )),
              CardForm(
                  label: "Verificar folga de roda",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar folga de roda")),
              CardForm(
                  label: "Verificar lona de freio",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar lona de freio")),
              CardForm(
                  label: "Verificar bucha do tirante",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar bucha do tirante")),
              CardForm(
                  label: "Verificar tensor e polias da correia",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar tensor e polias da correia")),
              CardForm(
                  label: "Verificar as correias",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar as correias")),
              CardForm(
                  label: "Verificar vazamento de óleo diesel e/ou lubrificante",
                  widget: CustomRadioGroupThreeOptions(
                      name:
                          "Verificar vazamento de óleo diesel e/ou lubrificante")),
              CardForm(
                  label: "Verificar terminal da barra e semi-barra de direção",
                  widget: CustomRadioGroupThreeOptions(
                      name:
                          "Verificar terminal da barra e semi-barra de direção")),
              CardForm(
                  label: "Verificar as cruzetas",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar as cruzetas")),
              CardForm(
                  label: "Verificar rolamento de centro",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar rolamento de centro")),
              CardForm(
                  label: "Verificar feixes de mola dianteiro e traseiro",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar feixes de mola dianteiro e traseiro")),
              CardForm(
                  label:
                      "Verificar suspensão dianteira(amortecedor e estabilizador)",
                  widget: CustomRadioGroupThreeOptions(
                      name:
                          "Verificar suspensão dianteira(amortecedor e estabilizador)")),
              CardForm(
                  label: "Verificar lastro do baú(vazamento)",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar lastro do baú(vazamento)")),
              CardForm(
                  label: "Verificar climatizador",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar climatizador")),
              CardForm(
                  label: "Verificar bóia de combustível",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar bóia de combustível")),
              CardForm(
                  label: "Verificar lâmpadas dos faróis e lanternas",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar lâmpadas dos faróis e lanternas")),
              CardForm(
                  label: "Verificar nível de água e óleo",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar nível de água e óleo")),
              CardForm(
                  label: "Verificar as maçanetas e fechaduras das portas",
                  widget: CustomRadioGroupThreeOptions(
                      name: "Verificar as maçanetas e fechaduras das portas")),
              CardForm(
                  label: "Lubrificação geral",
                  widget:
                      CustomRadioGroupThreeOptions(name: "Lubrificação geral")),
              CardForm(
                  label: "Verificar os pneus",
                  widget:
                      CustomRadioGroupThreeOptions(name: "Verificar os pneus")),
              CardForm(
                  label: "Serviço de solda",
                  widget:
                      CustomRadioGroupThreeOptions(name: "Serviço de solda")),
              CardForm(
                  label: "Verificar o baú",
                  widget:
                      CustomRadioGroupThreeOptions(name: "Verificar o baú")),
              CardForm(
                  label: "Verificar - Macaco",
                  widget: CustomRadioGroupTwoOptions(
                    name: "Verificar - Macaco",
                  )),
              CardForm(
                  label: "Verificar - Chave de roda",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Verificar - Chave de roda")),
              CardForm(
                  label: "Verificar - Triângulo",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Verificar - Triângulo")),
              CardForm(
                  label: "Verificar - EXTINTOR DE INCÊNDIO",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Verificar - EXTINTOR DE INCÊNDIO")),
              CardForm(
                  label: "Verificar - KIT DE SEGURANÇA",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Verificar - KIT DE SEGURANÇA")),
              CardForm(
                  label: "Verificar - PARA-BRISA E JANELAS",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Verificar - PARA-BRISA E JANELAS")),
              CardForm(
                  label: "Verificar - Anti-Furto",
                  widget: FormBuilderRadioGroup(
                      name: "Verificar - Anti-Furto",
                      orientation: OptionsOrientation.vertical,
                      validator: (value) {
                        if (value == null) {
                          return "Selecione uma das opções";
                        }
                      },
                      options: ["Selada", "Não Selada"]
                          .map((opt) => FormBuilderFieldOption(
                                value: opt,
                                child: Text(opt),
                              ))
                          .toList())),
              CardForm(
                  label: "Verificar selo tacógrafo",
                  widget: FormBuilderRadioGroup(
                      orientation: OptionsOrientation.vertical,
                      name: "Verificar selo tacógrafo",
                      validator: (value) {
                        if (value == null) {
                          return "Selecione uma das opções";
                        }
                      },
                      options: ["Ok", "Descolado", "Sem selo", "Outro"]
                          .map((opt) => FormBuilderFieldOption(
                                value: opt,
                                child: opt == "Outro"
                                    ? TextFormField(
                                        decoration:
                                            InputDecoration(hintText: "Outro"))
                                    : Text(opt),
                              ))
                          .toList())),
              CardForm(
                label: "Tirar foto da condição do selo",
                widget: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(37, 59, 179, 1)),
                    onPressed: () {},
                    icon: Icon(Icons.file_present),
                    label: Text('Anexar Arquivo')),
              ),
              CardForm(
                  label: "Houve realização de serviço?",
                  widget: CustomRadioGroupTwoOptions(
                      name: "Houve realização de serviço?")),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  height: 30,
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_fbKey.currentState!.saveAndValidate()) {
                        print(_fbKey.currentState!.value);
                      } else {
                        print(_fbKey.currentState!.value);
                        print("validation failed");
                      }
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
}

class CustomRadioGroupTwoOptions extends StatelessWidget {
  final String name;
  const CustomRadioGroupTwoOptions({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup(
        orientation: OptionsOrientation.vertical,
        name: name,
        validator: (value) {
          if (value == null) {
            return "Selecione uma das opções";
          }
        },
        options: ["SIM", "NÃO"]
            .map((opt) => FormBuilderFieldOption(
                  value: opt,
                  child: Text(opt),
                ))
            .toList());
  }
}

class CustomRadioGroupThreeOptions extends StatelessWidget {
  final String name;
  const CustomRadioGroupThreeOptions({Key? key, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FormBuilderRadioGroup(
      wrapVerticalDirection: VerticalDirection.up,
      orientation: OptionsOrientation.vertical,
      name: name,
      validator: (value) {
        if (value == null) {
          return "Selecione uma das opções";
        }
      },
      options: ["Ok", "Não Ok", "Outro"]
          .map((opt) => FormBuilderFieldOption(
                value: opt,
                child: opt == "Outro"
                    ? TextFormField(
                        decoration: InputDecoration(hintText: "Outro"))
                    : Text(opt),
              ))
          .toList(),
    );
  }
}
