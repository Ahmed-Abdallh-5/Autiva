import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class ResetPassword {
  CRUD crud;
  ResetPassword(this.crud);

  Sendingdata(
    String email,
    String password,
    String passwordCon,
    // String Otp,
  ) async {
    var response =
        await crud.postdataAuthhandelingresponse(APPlinks.resetpassword, {
      "email": email,
      "newPassword": password,
      // 'otp': Otp,
      'ConfirmPassword': passwordCon,
    });
    return response.fold((l) => l, (r) => r);
  }
}
