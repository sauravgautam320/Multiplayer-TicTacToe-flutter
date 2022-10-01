import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/provider/room_data_provider.dart';

import './screens/main_menu_screen.dart';
import './screens/join_room_screen.dart';
import './screens/create_room_screen.dart';
import './screens/game_screen.dart';
import './utils/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RoomDataProvider(),
      child: MaterialApp(
        title: 'Tic Tac Toe',
        theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: bgColor,),
        routes: {
          MainMenuScreen.routeName :(context) => const MainMenuScreen(),
          JoinRoomScreen.routeName : (context) => const JoinRoomScreen(), 
          CreateRoomScreen.routeName : (context) => const CreateRoomScreen(), 
          GameScreen.routeName : (context) => const GameScreen(), 
        },
      initialRoute: MainMenuScreen.routeName,
      ),
    );
  }
}
