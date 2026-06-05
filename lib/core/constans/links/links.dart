class APPlinks {
  static final String domain = "http://autiva2.runasp.net/api";

  ////////////////////////////////#authlinks//////////////////////////

  static final String SignUPlink = "${domain}/users/register/";
  static final String login = "http://autiva2.runasp.net/api/auth/login";
  static final String vertifycodelink = "${domain}/users/verify-email";
  static final String resendcode = "${domain}/resend-verification";
  static final String logout = "${domain}/logout";
  static final String deleteaccount = "${domain}/users/me";
///////////////////////////////////////////////////////////////////
  static final String addchild = "${domain}/children";
  static final String childdata = "${domain}/users/profile";
  static final String childhistory =
      "${domain}/Analysis/parent/all-assessments";

/////////////////////////#forgetpasswordlinls///////////////////////
  static final String checkemail = "${domain}/auth/forgot-password";
  static final String resetpasswordvertifycode =
      "${domain}/auth/verify-reset-code";
  static final String resetpassword = "${domain}/auth/reset-password";
///////////////////////////////////////////////////////////////////

/////////////////////////////##Home###//////////////////////

  static final String ChooseCountry = "${domain}/cities";
  static final String Home2 = "${domain}/places";

///////////////////////////////FAVOURITE///////////////////////////////

  static final String addFavourite = "${domain}/favorites";

  static final String removwFavourite = "${domain}/favorites";

  static final String myfavourite = "${domain}/favorites";
/////////////////////////////BOOKING//////////////////////////////////////
  static final String bookitem = "${domain}/reservations";
  static final String getavilablehours = "${domain}/reservations";
  static final String mymatches = "${domain}/reservations";

///////////////////////////////Tournment/////////////////////////////////////
  static final String tournament = "${domain}/tournaments";

////////////////////////setting////////////////////////////////////////
  static final String EditProfileusername = "${domain}/users";
  static final String EditProfilephoto = "${domain}/users";
}
