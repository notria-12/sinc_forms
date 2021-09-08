import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/forms/choose_sector_page.dart';

import 'form_ti_page.dart';

class FormsModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => ChooseSectorPage()),
    ChildRoute('/ti', child: (_, __) => FormTIPage()),
  ];
}
