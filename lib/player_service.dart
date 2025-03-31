import 'package:basketball_score_tracker/player.dart';

class PlayerService {
  static List<Player> getPlayers() {
    return [
      Player(
        id: '1',
        name: 'Zeyad Mohamed',
        position: 'Small Forward',
        Number: '311791898',
        jerseyNumber: 23,
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Player(
        id: '2',
        name: 'Abdulhamid Ahmed',
        position: 'Point Guard',
        Number: '311792900',
        jerseyNumber: 30,
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Player(
        id: '3',
        name: 'Mahmoud abdalaziz',
        position: 'Power Forward',
        Number: '3117107207',
        jerseyNumber: 7,
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Player(
        id: '4',
        name: 'Abdallah Emad',
        position: 'Power Forward',
        Number: '311788607',
        jerseyNumber: 34,
        imageUrl: 'https://via.placeholder.com/150',
      ),
      Player(
        id: '5',
        name: 'Ahmed Muhammad ',
        position: 'Center',
        Number: '3117106786',
        jerseyNumber: 15,
        imageUrl: 'https://via.placeholder.com/150',
      ),
    ];
  }
}