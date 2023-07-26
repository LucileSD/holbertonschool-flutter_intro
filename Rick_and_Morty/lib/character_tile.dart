import 'package:flutter/material.dart';
import 'package:rick_and_morty/episodes_screen.dart';
import 'package:rick_and_morty/models.dart';

class CharacterTile extends StatelessWidget {
  final Character character;

  const CharacterTile({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black45,
        title: Text(character.name),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EpisodesScreen(id: character.id),
            ),
          );
        },
        child: Image.network(character.img),
      ),
    );
  }
}
