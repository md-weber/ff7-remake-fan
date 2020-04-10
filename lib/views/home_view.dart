import 'package:ff7_remake_fan/models/character_model.dart';
import 'package:ff7_remake_fan/services/character_service.dart';
import 'package:ff7_remake_fan/views/character_detail_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final List<Character> characters = CharacterService().characters;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Final Fantasy 7 - Characters"),
      ),
      body: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.separated(
          separatorBuilder: (context, index) => Divider(),
          itemCount: characters.length,
          itemBuilder: (context, index) {
            var character = characters[index];
            return InkWell(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF000000),
                      blurRadius: 2.0,
                      offset: Offset(0, 2),
                    )
                  ],
                ),
                child: InkWell(
                  child: ListTile(
                    isThreeLine: true,
                    onTap: () {
                      print("pressed");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CharacterDetailsPage(
                            character: character,
                          ),
                        ),
                      );
                    },
                    title:
                        Text("${character.firstName} ${character.secondName}"),
                    subtitle: Text("${character.shortDescription}"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(character.avatarUrl),
                      radius: 30.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
