import 'package:flutter/material.dart';
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                widget: Column(
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 40,
                      child: RadioListTile(
                          title: Text('Ok'),
                          value: 1,
                          groupValue: radioValueBrake,
                          onChanged: (value) {
                            setState(() {
                              radioValueBrake = value as int;
                            });
                          }),
                    ),
                    SizedBox(
                      height: 40,
                      child: RadioListTile(
                          title: Text('Não Ok'),
                          value: 2,
                          groupValue: radioValueBrake,
                          onChanged: (value) {
                            setState(() {
                              radioValueBrake = value as int;
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
                                groupValue: radioValueBrake,
                                onChanged: (value) {
                                  setState(() {
                                    radioValueBrake = value as int;
                                  });
                                }),
                          ),
                        ),
                        Visibility(
                            child: Flexible(
                          child: TextFormField(
                            enabled: radioValueBrake == 3,
                          ),
                          flex: 5,
                        ))
                      ],
                    )
                  ],
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
                ))
          ],
        ),
      ),
    );
  }
}
