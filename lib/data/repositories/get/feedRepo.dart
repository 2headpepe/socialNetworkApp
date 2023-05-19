import 'dart:convert';

import '../../models/feed/feed.dart';

const String jsonString = '''
 {
 "feed":[
     {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "2",
      "userId" : "1",
      "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 2
      },
      {
      "idPost": "3",
      "userId" : "1",
      "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 3
      },
      {
      "idPost": "4",
      "userId" : "1",
      "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
          "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg",
		      "https://steamuserimages-a.akamaihd.net/ugc/939464622682295748/21C7853B479C7A4CFE3FF9F7B68B0153062F98E1/?imw=512&amp;imh=731&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
		      "https://anime-fans.ru/wp-content/uploads/2021/04/Milye-anime-arty-tyan-s-ushkami-dlya-srisovki_03.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      },
      {
      "idPost": "1",
      "userId" : "1",
      "images" : [
		      "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
        ],
      "nickname" : "mentaldora",
      "numberOfLikes" : 10
      }
      ]
  }
''';


class FeedRepo
{
  void encode()
  {}
  static Feed getFeed()
  {
    final json = jsonDecode(jsonString);
    final result = Feed.fromJson(json);
    return result;
  }

} // !!!!!!! WORKING !!!!!!!!!!