import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/get_starting/get_starting_page.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ChildRoute('/', child: (_, __) => GetStartingPage())
  ];
}
