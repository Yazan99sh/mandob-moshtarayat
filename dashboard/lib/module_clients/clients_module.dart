import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mandob_moshtarayat_dashboad/abstracts/module/yes_module.dart';
import 'package:mandob_moshtarayat_dashboad/module_clients/clients_routes.dart';
import 'package:mandob_moshtarayat_dashboad/module_clients/ui/screen/clients_profile_screen.dart';
import 'package:mandob_moshtarayat_dashboad/module_clients/ui/screen/clients_list_screen.dart';

@injectable
class ClientsModule extends YesModule {
  final ClientProfileScreen _clientProfileScreen;
  final ClientsScreen clientsScreen;
  ClientsModule(this._clientProfileScreen, this.clientsScreen) {
    YesModule.RoutesMap.addAll(getRoutes());
  }
  Map<String, WidgetBuilder> getRoutes() {
    return {
      ClientsRoutes.CLIENTS_LIST: (context) => clientsScreen,
      ClientsRoutes.CLIENT_PROFILE: (context) => _clientProfileScreen,
    };
  }
}
