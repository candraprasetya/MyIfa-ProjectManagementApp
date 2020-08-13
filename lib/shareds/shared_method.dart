part of 'shareds.dart';

void onBoardingStatusViewed() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  bool status = sharedPreferences.getBool("onBoard");
  await sharedPreferences.setBool("onBoard", !status);
}
