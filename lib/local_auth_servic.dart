import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';

class LocalAuthenticationService {
  final _auth = LocalAuthentication();
  bool _isProtectionEnabled = false;

  // ignore: unnecessary_getters_setters
  bool get isProtectionEnabled => _isProtectionEnabled;
  // ignore: unnecessary_getters_setters
  set isProtectionEnabled(bool enabled) => _isProtectionEnabled = enabled;

  bool isAuthenticated = false;

  Future<void> authenticate() async {
    print("auth");

    if (_isProtectionEnabled) {
      print("auth");
      try {
        isAuthenticated = await _auth.authenticateWithBiometrics(
          localizedReason: "authenticate to access",
          useErrorDialogs: true,
          stickyAuth: true,
        );
      } on PlatformException catch (e) {
        print(e);
      }
    }
  }
}
