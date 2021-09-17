import 'package:flutter_modular/flutter_modular.dart';

import 'package:sinc_forms/modules/get_starting/get_starting_module.dart';
import 'package:sinc_forms/modules/login/login_module.dart';

import 'modules/forms/forms_module.dart';
import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/', module: GetStartingModule()),
    ModuleRoute('/login', module: LoginModule()),
    ModuleRoute('/forms', module: FormsModule()),
  ];
}
