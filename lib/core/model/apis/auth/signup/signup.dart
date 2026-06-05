import '../../../../classes/crud.dart';
import '../../../../constans/links/links.dart';

class SignUP {
  CRUD crud;
  SignUP(this.crud);

  Sendingdata(
    String name,
    String email,
    String Password,
    String Confpassword,
  ) async {
    var response =
        await crud.postdataAuthhandelingresponse(APPlinks.SignUPlink, {
      "name": name,
      "email": email,
      "password": Password,
      "confirmPassword": Confpassword,
    });
    return response.fold((l) => l, (r) => r);
  }
}
