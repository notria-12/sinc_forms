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
  String dropdownValue = 'Selecione seu nome';
  String dropValue = 'Selecione a placa';

  int radioValueBrake = -1;
  int radioValueWheelSlack = -1;
  int radioValueBrakeLining = -1;
  int radioValueBushing = -1;
  int radioValueTensor = -1;
  int radioValueStraps = -1;
  int radioValueOilLeak = -1;
  int radioValueBarTerminal = -1;
  int radioValueCrossheads = -1;
  int radioValueBearing = -1;
  int radioValueSpringBeams = -1;
  int radioValueFrontSuspension = -1;
  int radioValueTrunkBallast = -1;
  int radioValueAirConditioner = -1;
  int radioValueFuelFloat = -1;
  int radioValueLamps = -1;
  int radioValueWaterOil = -1;
  int radioValueKnobsLocks = -1;
  int radioValueLubrication = -1;
  int radioValueTires = -1;
  int radioValueSolder = -1;
  int radioValueChest = -1;
  int radioValueJack = -1;
  int radioValueTireIron = -1;
  int radioValueTriangle = -1;
  int radioValueExtinguisher = -1;
  int radioValueSecurityKit = -1;
  int radioValueWindshield = -1;
  int radioValueAntiTheft = -1;
  int radioValueStamp = -1;
  int radioValueServiceDone = -1;

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
          // autovalidateMode: AutovalidateMode.always,
          child: Column(
            children: [
              HeaderForm(label: "CHECK-LIST OFICINA"),
              CardForm(
                  label: "Qual o nome do vistoriador?",
                  widget: Container(
                    width: double.maxFinite,
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
                        'José Francisco Gonçalves(Peteca)',
                        'Orlnado Ferreira Santos(Tomate)',
                        'Natan Da Silva Pereira',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              width: MediaQuery.of(context).size.width * 0.75,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    flex: 9,
                                    child: Container(
                                      // width: double.maxFinite,
                                      child: Text(
                                        value,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            fontFamily: 'Roboto', fontSize: 16),
                                      ),
                                    ),
                                  ),
                                  // Flexible(
                                  //     flex: 1, child: Icon(Icons.arrow_drop_down))
                                ],
                              )),
                        );
                      }).toList(),
                    ),
                  )),
              CardForm(
                  label: "Qual a placa do veículo?",
                  widget: Container(
                    // width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: DropdownButton<String>(
                      value: dropValue,
                      icon: Container(),
                      underline: Container(),
                      elevation: 16,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Selecione a placa',
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
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Container(
                              // width: MediaQuery.of(context).size.width * 0.75,
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                // width: double.maxFinite,
                                child: Text(
                                  value,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontFamily: 'Roboto', fontSize: 16),
                                ),
                              ),
                              Icon(Icons.arrow_drop_down)
                              // Flexible(
                              //     flex: 1, child: Icon(Icons.arrow_drop_down))
                            ],
                          )),
                        );
                      }).toList(),
                    ),
                  )),
              CardForm(
                  label: "Regular Freio",
                  widget: FormBuilderRadioGroup(
                    wrapVerticalDirection: VerticalDirection.up,
                    orientation: OptionsOrientation.vertical,
                    name: "Regular Freio",
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
                                      decoration:
                                          InputDecoration(hintText: "Outro"))
                                  : Text(opt),
                            ))
                        .toList(),
                  )),
              CardForm(
                  label: "Verificar folga de roda",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueWheelSlack,
                            onChanged: (value) {
                              setState(() {
                                radioValueWheelSlack = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueWheelSlack,
                            onChanged: (value) {
                              setState(() {
                                radioValueWheelSlack = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueWheelSlack,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueWheelSlack = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueWheelSlack == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar lona de freio",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueBrakeLining,
                            onChanged: (value) {
                              setState(() {
                                radioValueBrakeLining = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueBrakeLining,
                            onChanged: (value) {
                              setState(() {
                                radioValueBrakeLining = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueBrakeLining,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueBrakeLining = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueBrakeLining == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar bucha do tirante",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueBushing,
                            onChanged: (value) {
                              setState(() {
                                radioValueBushing = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueBushing,
                            onChanged: (value) {
                              setState(() {
                                radioValueBushing = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueBushing,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueBushing = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueBushing == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar tensor e polias da correia",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueTensor,
                            onChanged: (value) {
                              setState(() {
                                radioValueTensor = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueTensor,
                            onChanged: (value) {
                              setState(() {
                                radioValueTensor = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueTensor,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueTensor = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueTensor == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar as correias",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueStraps,
                            onChanged: (value) {
                              setState(() {
                                radioValueStraps = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueStraps,
                            onChanged: (value) {
                              setState(() {
                                radioValueStraps = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueStraps,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueStraps = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueStraps == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar vazamento de óleo diesel e/ou lubrificante",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueOilLeak,
                            onChanged: (value) {
                              setState(() {
                                radioValueOilLeak = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueOilLeak,
                            onChanged: (value) {
                              setState(() {
                                radioValueOilLeak = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueOilLeak,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueOilLeak = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueOilLeak == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar terminal da barra e semi-barra de direção",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueBarTerminal,
                            onChanged: (value) {
                              setState(() {
                                radioValueBarTerminal = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueBarTerminal,
                            onChanged: (value) {
                              setState(() {
                                radioValueBarTerminal = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueBarTerminal,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueBarTerminal = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueBarTerminal == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar as cruzetas",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueCrossheads,
                            onChanged: (value) {
                              setState(() {
                                radioValueCrossheads = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueCrossheads,
                            onChanged: (value) {
                              setState(() {
                                radioValueCrossheads = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueCrossheads,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueCrossheads = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueCrossheads == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar rolamento de centro",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueBearing,
                            onChanged: (value) {
                              setState(() {
                                radioValueBearing = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueBearing,
                            onChanged: (value) {
                              setState(() {
                                radioValueBearing = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueBearing,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueBearing = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueBearing == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar feixes de mola dianteiro e traseiro",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueSpringBeams,
                            onChanged: (value) {
                              setState(() {
                                radioValueSpringBeams = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueSpringBeams,
                            onChanged: (value) {
                              setState(() {
                                radioValueSpringBeams = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueSpringBeams,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueSpringBeams = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueSpringBeams == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label:
                      "Verificar suspensão dianteira(amortecedor e estabilizador)",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueFrontSuspension,
                            onChanged: (value) {
                              setState(() {
                                radioValueFrontSuspension = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueFrontSuspension,
                            onChanged: (value) {
                              setState(() {
                                radioValueFrontSuspension = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueFrontSuspension,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueFrontSuspension = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueFrontSuspension == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar lastro do baú(vazamento)",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueTrunkBallast,
                            onChanged: (value) {
                              setState(() {
                                radioValueTrunkBallast = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueTrunkBallast,
                            onChanged: (value) {
                              setState(() {
                                radioValueTrunkBallast = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueTrunkBallast,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueTrunkBallast = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueTrunkBallast == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar climatizador",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueAirConditioner,
                            onChanged: (value) {
                              setState(() {
                                radioValueAirConditioner = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueAirConditioner,
                            onChanged: (value) {
                              setState(() {
                                radioValueAirConditioner = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueAirConditioner,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueAirConditioner = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueAirConditioner == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar bóia de combustível",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueFuelFloat,
                            onChanged: (value) {
                              setState(() {
                                radioValueFuelFloat = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueFuelFloat,
                            onChanged: (value) {
                              setState(() {
                                radioValueFuelFloat = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueFuelFloat,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueFuelFloat = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueFuelFloat == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar lâmpadas dos faróis e lanternas",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueLamps,
                            onChanged: (value) {
                              setState(() {
                                radioValueLamps = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueLamps,
                            onChanged: (value) {
                              setState(() {
                                radioValueLamps = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueLamps,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueLamps = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueLamps == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar nível de água e óleo",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueWaterOil,
                            onChanged: (value) {
                              setState(() {
                                radioValueWaterOil = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueWaterOil,
                            onChanged: (value) {
                              setState(() {
                                radioValueWaterOil = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueWaterOil,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueWaterOil = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueWaterOil == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar as maçanetas e fechaduras das portas",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueKnobsLocks,
                            onChanged: (value) {
                              setState(() {
                                radioValueKnobsLocks = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueKnobsLocks,
                            onChanged: (value) {
                              setState(() {
                                radioValueKnobsLocks = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueKnobsLocks,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueKnobsLocks = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueKnobsLocks == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Lubrificação geral",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueLubrication,
                            onChanged: (value) {
                              setState(() {
                                radioValueLubrication = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueLubrication,
                            onChanged: (value) {
                              setState(() {
                                radioValueLubrication = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueLubrication,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueLubrication = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueLubrication == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar os pneus",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueTires,
                            onChanged: (value) {
                              setState(() {
                                radioValueTires = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueTires,
                            onChanged: (value) {
                              setState(() {
                                radioValueTires = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueTires,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueTires = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueTires == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Serviço de solda",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueSolder,
                            onChanged: (value) {
                              setState(() {
                                radioValueSolder = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueSolder,
                            onChanged: (value) {
                              setState(() {
                                radioValueSolder = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueSolder,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueSolder = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueSolder == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar o baú",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Ok'),
                            value: 1,
                            groupValue: radioValueChest,
                            onChanged: (value) {
                              setState(() {
                                radioValueChest = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Ok'),
                            value: 2,
                            groupValue: radioValueChest,
                            onChanged: (value) {
                              setState(() {
                                radioValueChest = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 3,
                                  groupValue: radioValueChest,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueChest = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueChest == 3,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
              CardForm(
                  label: "Verificar - Macaco",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueJack,
                            onChanged: (value) {
                              setState(() {
                                radioValueJack = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueJack,
                            onChanged: (value) {
                              setState(() {
                                radioValueJack = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - Chave de roda",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueTireIron,
                            onChanged: (value) {
                              setState(() {
                                radioValueTireIron = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueTireIron,
                            onChanged: (value) {
                              setState(() {
                                radioValueTireIron = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - Triângulo",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueTriangle,
                            onChanged: (value) {
                              setState(() {
                                radioValueTriangle = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueTriangle,
                            onChanged: (value) {
                              setState(() {
                                radioValueTriangle = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - EXTINTOR DE INCÊNDIO",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueExtinguisher,
                            onChanged: (value) {
                              setState(() {
                                radioValueExtinguisher = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueExtinguisher,
                            onChanged: (value) {
                              setState(() {
                                radioValueExtinguisher = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - KIT DE SEGURANÇA",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueSecurityKit,
                            onChanged: (value) {
                              setState(() {
                                radioValueSecurityKit = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueSecurityKit,
                            onChanged: (value) {
                              setState(() {
                                radioValueSecurityKit = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - PARA-BRISA E JANELAS",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('SIM'),
                            value: 1,
                            groupValue: radioValueWindshield,
                            onChanged: (value) {
                              setState(() {
                                radioValueWindshield = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('NÃO'),
                            value: 2,
                            groupValue: radioValueWindshield,
                            onChanged: (value) {
                              setState(() {
                                radioValueWindshield = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar - Anti-Furto",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Selada'),
                            value: 1,
                            groupValue: radioValueAntiTheft,
                            onChanged: (value) {
                              setState(() {
                                radioValueAntiTheft = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não Selada'),
                            value: 2,
                            groupValue: radioValueAntiTheft,
                            onChanged: (value) {
                              setState(() {
                                radioValueAntiTheft = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                  label: "Verificar selo tacógrafo",
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('OK'),
                            value: 1,
                            groupValue: radioValueStamp,
                            onChanged: (value) {
                              setState(() {
                                radioValueStamp = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Descolando'),
                            value: 2,
                            groupValue: radioValueStamp,
                            onChanged: (value) {
                              setState(() {
                                radioValueStamp = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Sem Selo'),
                            value: 3,
                            groupValue: radioValueStamp,
                            onChanged: (value) {
                              setState(() {
                                radioValueStamp = value as int;
                              });
                            }),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Container(
                              height: 40,
                              child: RadioListTile(
                                  title: Text('Outro'),
                                  value: 4,
                                  groupValue: radioValueStamp,
                                  onChanged: (value) {
                                    setState(() {
                                      radioValueStamp = value as int;
                                    });
                                  }),
                            ),
                          ),
                          Visibility(
                              child: Flexible(
                            child: TextFormField(
                              enabled: radioValueStamp == 4,
                            ),
                            flex: 5,
                          ))
                        ],
                      )
                    ],
                  )),
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
                  widget: Column(
                    // mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Sim'),
                            value: 1,
                            groupValue: radioValueServiceDone,
                            onChanged: (value) {
                              setState(() {
                                radioValueServiceDone = value as int;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 40,
                        child: RadioListTile(
                            title: Text('Não'),
                            value: 2,
                            groupValue: radioValueServiceDone,
                            onChanged: (value) {
                              setState(() {
                                radioValueServiceDone = value as int;
                              });
                            }),
                      ),
                    ],
                  )),
              CardForm(
                label: "TEste",
                widget: FormBuilderRadioGroup(
                  orientation: OptionsOrientation.vertical,
                  onChanged: (val) => print(val),
                  validator: (value) {
                    if (value == null) {
                      return "Selecione uma opção";
                    }
                  },
                  name: "Airton",
                  options: ["Dart", "Kotlin", "Java", "Swift", "Objective-C"]
                      .map((lang) => FormBuilderFieldOption(
                            value: lang,
                            child: Text('$lang'),
                          ))
                      .toList(growable: true),
                ),
              ),
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
