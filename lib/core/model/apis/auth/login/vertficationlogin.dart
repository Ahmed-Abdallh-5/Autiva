import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class VertficationCodeLogin {
  CRUD crud;
  VertficationCodeLogin(this.crud);

  Sendingdata(
    String email,
    String OTP,
  ) async {
    var response =
        await crud.postdataAuthhandelingresponse(APPlinks.vertifycodelink, {
      "email": email,
      "otp": OTP,
    });

    return response.fold((l) => l, (r) => r);
  }
}
