import 'package:basketball_score_tracker/player.dart';
import 'package:basketball_score_tracker/player_service.dart';
import 'package:flutter/material.dart';


class PlayerListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Player> players = PlayerService.getPlayers();

    return Scaffold(
      appBar: AppBar(
        title: Text('Team Players'),
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          final player = players[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.orange.shade200,
                child: Text(
                  player.jerseyNumber.toString(),
                  style: TextStyle(
                    color: Colors.orange.shade800,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              title: Text(
                player.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(player.position),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/player_detail',
                  arguments: player,
                );
              },
            ),
          );
        },
      ),
    );
  }
}