import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class VertficationCodeSignUpsending {
  CRUD crud;
  VertficationCodeSignUpsending(this.crud);

  Sendingdata(
    String email,
    String OTP,
  ) async {
    var response =
        await crud.postdataAuthhandelingresponse(APPlinks.vertifycodelink, {
      "email": email,
      "code": OTP,
    });

    return response.fold((l) => l, (r) => r);
  }
}
