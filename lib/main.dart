import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:workshop_demo/bloc/screen_bloc.dart';

import 'ui/screens/screens.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ScreenBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MyIfa - Project Management App',
        home: Wrapper(),
      ),
    );
  }
}
