import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class ForgetPasswordVertdicationCode {
  CRUD crud;
  ForgetPasswordVertdicationCode(this.crud);

  Sendingdata(
    String email,
    String OTP,
  ) async {
    var response = await crud
        .postdataAuthhandelingresponse(APPlinks.resetpasswordvertifycode, {
      "email": email,
      "code": OTP,
    });
    return response.fold((l) => l, (r) => r);
  }
}
