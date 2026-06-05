import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class CheckEmail {
  CRUD crud;
  CheckEmail(this.crud);

  Sendingdata(
    String email,
  ) async {
    var response = await crud
        .postdataAuthhandelingresponse(APPlinks.checkemail, {"email": email});
    return response.fold((l) => l, (r) => r);
  }
}
