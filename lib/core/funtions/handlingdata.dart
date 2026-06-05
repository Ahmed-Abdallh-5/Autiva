import 'package:autiva/core/classes/statuerequest.dart';

handlingdata(response) {
  if (response is StatueRequest) {
    return response;
  } else {
    return StatueRequest.Success;
  }
}

handlingdatatest(response) {
  if (response == StatueRequest.deletedsuccess) {
    return StatueRequest.deletedsuccess;
  } else {
    return StatueRequest.Success;
  }
}
