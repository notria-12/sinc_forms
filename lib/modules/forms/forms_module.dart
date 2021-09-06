import 'package:flutter_modular/flutter_modular.dart';

import 'form_ti_page.dart';

class FormsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/ti', child: (_, __) => FormTIPage())
  ];
}
