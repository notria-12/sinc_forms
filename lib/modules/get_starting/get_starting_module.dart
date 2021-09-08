import 'package:flutter_modular/flutter_modular.dart';

import 'package:sinc_forms/modules/get_starting/get_starting_page.dart';

class GetStartingModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => GetStartingPage()),
  ];
}
