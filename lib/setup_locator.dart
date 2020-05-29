import 'package:fingerprintauthentication/local_auth_servic.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => LocalAuthenticationService());
}
