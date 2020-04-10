import 'package:ff7_remake_fan/models/character_model.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CharacterDetailsPage extends StatefulWidget {
  final Character character;

  const CharacterDetailsPage({Key key, this.character}) : super(key: key);

  @override
  _CharacterDetailsPageState createState() => _CharacterDetailsPageState();
}

class _CharacterDetailsPageState extends State<CharacterDetailsPage> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    _controller = YoutubePlayerController(
        initialVideoId: widget.character.videoLink,
        flags: YoutubePlayerFlags(
          autoPlay: false,
        ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300,
            pinned: true,
            floating: false,
            snap: false,
            title: Text(
                "${widget.character.firstName} ${widget.character.secondName}"),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${widget.character.avatarUrl}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0x00000000),
                        const Color(0xFF000000)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                )
              ]),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  "${widget.character.firstName} ${widget.character.secondName}",
                  style: TextStyle(fontSize: 32.0),
                ),
                SizedBox(height: 30.0),
                Text(
                  widget.character.shortDescription,
                  style: TextStyle(fontSize: 16),
                ),
                Divider(),
                YoutubePlayer(
                  controller: _controller,
                ),
                Divider(),
                Text(
                  widget.character.longDescription,
                  style: TextStyle(fontSize: 16),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
