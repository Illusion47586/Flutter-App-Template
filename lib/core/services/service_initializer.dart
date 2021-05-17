import 'package:get/get.dart';

import '../base/base.dart';

class InitialBinding with Base<InitialBinding> implements Bindings {
  @override
  void dependencies() {
    log.v('INITIALIZING SERVICES');

    /// `Initialize` services here

    log.v('INITIALIZED ALL SERVICES');
  }
}
