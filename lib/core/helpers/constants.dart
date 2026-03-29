import 'package:patient/core/helpers/shared_pref_helper.dart';

bool isLoggedInUser = false;

Future<void> checkIfLoggedInUser () async{
  String? userToken = await SharedPrefHelper.getSecuredString(PrefKeys.accessToken);
  if (userToken != null && userToken.isNotEmpty){
    isLoggedInUser = true;
  }else{
    isLoggedInUser = false;
  }
}

class PrefKeys {
  static const String accessToken = "accessToken";
  static const String refreshToken = "refreshToken";
}