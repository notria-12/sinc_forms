import 'package:flutter_modular/flutter_modular.dart';
import 'package:sinc_forms/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/login', child: (_, __) => LoginPage())
  ];
}
