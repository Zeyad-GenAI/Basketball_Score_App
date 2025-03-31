import 'package:basketball_score_tracker/player.dart';
import 'package:flutter/material.dart';


class PlayerDetailScreen extends StatelessWidget {
  final Player player;

  PlayerDetailScreen({required this.player});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(player.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.orange.shade100,
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.orange.shade300,
                  child: Text(
                    '#${player.jerseyNumber}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(Icons.person, 'Name', player.name),
                  _buildInfoRow(Icons.sports_basketball, 'Position', player.position),
                  _buildInfoRow(Icons.badge, 'Jersey Number', player.jerseyNumber.toString()),
                  _buildInfoRow(Icons.phone, 'Number', player.Number),
                  _buildInfoRow(Icons.fingerprint, 'Player ID', player.id),
                  SizedBox(height: 30),
                  Text(
                    'Player Statistics',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  _buildStatCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.orange.shade700),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard() {
    // Mock statistics - in a real app, these would come from a database
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildStatRow('Games Played', '42'),
            _buildStatRow('Points Per Game', '18.7'),
            _buildStatRow('Rebounds Per Game', '5.3'),
            _buildStatRow('Assists Per Game', '4.2'),
            _buildStatRow('Field Goal %', '47.5%'),
            _buildStatRow('3-Point %', '38.2%'),
          ],
        ),
      ),
    );
  }

  Widget _buildStatRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}