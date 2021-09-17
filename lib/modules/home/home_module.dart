import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/home/pages/all_calleds_ti_page.dart';
import 'package:sinc_forms/modules/home/pages/ti_home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomePage()),
    ChildRoute('/ti', child: (_, __) => AllCalledsTIPage())
  ];
}
