part of 'screen_bloc.dart';

@immutable
abstract class ScreenEvent {}

class GoToHomeScreen extends ScreenEvent {}

class GoToOnBoardingScreen extends ScreenEvent {}
