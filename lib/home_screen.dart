import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _teamAScore = 0;
  int _teamBScore = 0;

  void _incrementScore(String team, int points) {
    setState(() {
      if (team == 'A') {
        _teamAScore += points;
      } else {
        _teamBScore += points;
      }
    });
  }

  void _decrementScore(String team) {
    setState(() {
      if (team == 'A' && _teamAScore > 0) {
        _teamAScore--;
      } else if (team == 'B' && _teamBScore > 0) {
        _teamBScore--;
      }
    });
  }

  void _resetScores() {
    setState(() {
      _teamAScore = 0;
      _teamBScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basketball Score Tracker'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetScores,
            tooltip: 'Reset Scores',
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                _buildTeamScore('Team A', _teamAScore, 'A'),
                _buildDivider(),
                _buildTeamScore('Team B', _teamBScore, 'B'),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/players');
        },
        child: Icon(Icons.people),
        tooltip: 'View Players',
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 2,
      color: Colors.grey.shade300,
      margin: EdgeInsets.symmetric(vertical: 20),
    );
  }

  Widget _buildTeamScore(String teamName, int score, String team) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              teamName,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: team == 'A' ? Colors.blue : Colors.red,
              ),
            ),
            SizedBox(height: 30),
            Text(
              score.toString(),
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: [
                _buildPointButton(1, team),
                _buildPointButton(2, team),
                _buildPointButton(3, team),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _decrementScore(team),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.remove),
                  SizedBox(width: 8),
                  Text('Subtract'),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPointButton(int points, String team) {
    return SizedBox(
      width: 60,
      child: ElevatedButton(
        onPressed: () => _incrementScore(team, points),
        style: ElevatedButton.styleFrom(
          backgroundColor: team == 'A' ? Colors.blue : Colors.red,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          '+$points',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}