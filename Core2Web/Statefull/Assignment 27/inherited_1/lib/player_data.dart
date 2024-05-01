
import 'package:flutter/cupertino.dart';

class PlayerData extends InheritedWidget {
  final String playerName;
  final String country;
  final String iplTeam;

  const PlayerData({
    super.key, 
    required this.playerName, 
    required this.country, 
    required this.iplTeam, 
    required super.child
  });

   static PlayerData of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlayerData>()!;
   }
  @override
  bool updateShouldNotify(PlayerData oldWidget) {
    return playerName!=oldWidget.playerName || country!=oldWidget.country || iplTeam!=oldWidget.iplTeam;
  }
}
  