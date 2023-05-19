import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/data/repositories/get/feedRepo.dart';
import 'package:untitled1/ui/pages/feedPage.dart';

//import 'package:untitled1/ui/widgets/newNavBar.dart';
import 'globals.dart' as globals;

void main() {
   //FeedRepo.getFeed();
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social network',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.blue,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          headline2: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          headline3: TextStyle(fontSize: 24.0, color: Colors.white),
          bodyText2: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white),
          bodyText1: TextStyle(
              fontSize: 12.0, fontWeight: FontWeight.w200, color: Colors.white),
          caption: TextStyle(
              fontSize: 11.0, fontWeight: FontWeight.w100, color: Colors.grey),
        ),
      ),
        home:const HomePage (),
    );
  }
}



class HomePage extends StatelessWidget
{
  const HomePage({Key? key}) : super(key:key);

  //final String title;
  //final repo = JsonExampleCoder();

  @override
  Widget build(BuildContext context)
  {
    //return OpenedPost(posts:PostsRepo.getPosts());  //  !!!!! WORKING !!!!!!!
    //return FeedPage(feed: FeedRepo.getFeed());        //!!!!! WORKING !!!!!!!
    //return Profile(user: UserRepo.getUser(),);       // !!!!! Working !!!!!!!
    return FeedPage(feed: FeedRepo.getFeed());

  }
}