import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class ResendVertficationCodeForgetpassword {
  CRUD crud;
  ResendVertficationCodeForgetpassword(this.crud);

  Resenddata(
    String email,
  ) async {
    var response =
        await crud.postdataAuthhandelingresponse(APPlinks.resendcode, {
      "email": email,
    });

    return response.fold((l) => l, (r) => r);
  }
}
