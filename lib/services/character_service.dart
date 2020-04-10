import 'package:ff7_remake_fan/models/character_model.dart';

class CharacterService {
  List<Character> characters = [
    Character(
        firstName: "Cloud",
        secondName: "Strife",
        avatarUrl: "assets/avatar/cloud.jpg",
        fabIconUrl: "assets/fab_icon/cloud.webp",
        longDescription:
            '''Cloud Strife is the main protagonist in Final Fantasy VII and Final Fantasy VII: Advent Children, and also appears in the spin-off games of the Compilation of Final Fantasy VII, including Dirge of Cerberus -Final Fantasy VII- and Crisis Core -Final Fantasy VII-, as a supporting character.

            An arrogant and proud swordsman at first, Cloud introduces himself to AVALANCHE as a former member of an elite warrior unit called SOLDIER who has turned mercenary, and uninterested in anything beyond his hired task at hand. He later discovers more about his past and, with the help of his friends, learns there is more to being a hero than possessing physical strength and fame, developing compassion for the Planet and people he fights to protect. He fights to protect the Planet against his nemesis, Sephiroth.
            
            Cloud Strife wields large broadswords in battle, including the iconic Buster Sword, and has access to the most powerful weapons in the game. His Limit abilities involve his sword, and are the strongest, but take the longest to learn. Cloud also has the best all-around stats.''',
        shortDescription:
            "''Originally a member of SOLDIER, he is now a mercenary who will take any job...''",
        videoLink: "Xc77-YSHEpA"),
    Character(
      firstName: "Tifa",
      secondName: "Lockhart",
      avatarUrl: "assets/avatar/tifa.jpg",
      fabIconUrl: "assets/fab_icon/tifa.webp",
      longDescription:
          '''Tifa Lockhart, alternatively known with the last name Lockheart, is a playable character in Final Fantasy VII, and the deuteragonist of Final Fantasy VII: Advent Children. She also plays a supportive role in Dirge of Cerberus -Final Fantasy VII- and Crisis Core -Final Fantasy VII-. She is Cloud Strife's childhood friend, and a member of AVALANCHE.

Tifa is Cloud's childhood friend from Nibelheim, but lost contact with him years ago. When she meets him again, she convinces him to join AVALANCHE, the resistance group she is a member of, to fight Shinra Electric Power Company, whom she bears hatred for due to the destruction of their hometown. She supports Cloud as his comrade and helps him and his allies fight Sephiroth. Tifa is emotionally shy and empathic, acting as a motherly figure towards her allies when providing encouragement and emotional support.

Tifa uses her martial arts moves in battle, equipping knuckles as her weapon. Her Limit abilities make use of her martial arts techniques further, and unlike other characters, her Limit Break abilities are not selected from a list, rather, each ability can be used consecutively if the slots land on the "Yeah!" reel for the ability. ''',
      shortDescription:
          "Bright and optimistic, Tifa always cheers up the others when they're down...",
      videoLink: "HPq6L98kqVM",
    ),
    Character(
        avatarUrl: "assets/avatar/aerith.jpg",
        firstName: "Aerith",
        secondName: "Gainsborough",
        longDescription: '''
      Aerith Gainsborough, alternately known with the first name Aeris, is a playable character in Final Fantasy VII and a major character in the Compilation of Final Fantasy VII; appearing in Final Fantasy VII: Advent Children, Crisis Core -Final Fantasy VII- and Before Crisis -Final Fantasy VII-

Aerith is the last of the Cetra, an ancient race with powerful magical abilities, and so the Shinra Electric Power Company hunts her throughout her life, seeking to exploit her powers. She meets Cloud Strife in Midgar, and the two become close, leading her to join his quest to fight Shinra and hunt down Sephiroth. Aerith is upbeat, carefree and joyful, being flirtatious towards Cloud and also compassionate towards others.

Aerith wields staves in battle, and is in the back row by default, as she primarily uses magic from equipped Materia in battle. Her Limit abilities are entirely defensive, either providing restorative abilities, healing other party members, or granting them positive status enhancements. 
      ''',
        shortDescription:
            "Young, beautiful, and somewhat mysterious, Aeris met Cloud while selling flowers on the streets of Midgar...",
        videoLink: "dHTMn-0XYfI")
  ];
}
