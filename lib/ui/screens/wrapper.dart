part of 'screens.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScreenBloc, ScreenState>(
        builder: (context, state) => (state is OnHomeScreen)
            ? HomeScreen()
            : (state is OnOnBoardingScreen)
                ? OnBoardingScreen()
                : SplashScreen());
  }
}
