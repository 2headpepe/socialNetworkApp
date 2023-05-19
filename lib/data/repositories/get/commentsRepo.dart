import 'package:untitled1/data/models/comments/comments.dart';
import 'dart:convert';

import 'package:untitled1/data/models/post/post.dart';


String jsonString= '''
{
"comments": [
{
"id" : "1",
"userId" : "2",
"text" : "hello",

"date" : "21.12.2003",

"nickname" : "mentaldora",
"userImage" : "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
},
{
"id" : "1",
"userId" : "2",
"text" : "hello",

"date" : "21.12.2003",

"nickname" : "mentaldora",
"userImage" : "https://i.pinimg.com/originals/bb/20/1a/bb201a1838a64f7bdef277bffcc69da7.jpg"
}
]
}
''';
class CommentsRepo
{
  static Comments getComments()
  {
    final json = jsonDecode(jsonString);
    final result = Comments.fromJson(json);
    return result;
  }

}