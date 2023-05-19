import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/data/repositories/get/settingsRepo.dart';
import 'package:untitled1/data/repositories/get/userRepo.dart';
import 'package:untitled1/globals.dart' as globals;
import 'package:flutter/cupertino.dart';
import 'package:untitled1/ui/pages/profilePage.dart';
import 'package:untitled1/ui/pages/searchPage.dart';
import 'package:untitled1/ui/pages/settingsPage.dart';
import '../../data/repositories/get/feedRepo.dart';
import '../pages/feedPage.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: width,
        height: height * 70 / 926,
        color: globals.forthColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
              onPressed: () {
                Route feedRoute =
                    MaterialPageRoute(builder: (context) => FeedPage(feed: FeedRepo.getFeed(),));
                Navigator.push(context, feedRoute);
              },
              child: CachedNetworkImage(
                imageUrl:
                globals.feed,
                fit: BoxFit.fitHeight,
                height: width * 40 / 428,
                width: width * 40 / 428,
              ),
            ),
            TextButton(
              onPressed: () {
                Route profileRoute =
                MaterialPageRoute(builder: (context) => Profile(user: UserRepo.getUser(),));
                Navigator.push(context, profileRoute);
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 54 / 428),
                  child: CachedNetworkImage(
                    imageUrl:
                    "https://phonoteka.org/uploads/posts/2022-06/1656605825_12-phonoteka-org-p-dora-pevitsa-oboi-13.png",
                    fit: BoxFit.fitWidth,
                    height: width * 54 / 428,
                    width: width * 54 / 428,
                  )),
            ),
            TextButton(
              onPressed: () {
                Route searchRoute =
                MaterialPageRoute(builder: (context) => const SearchPage());
                Navigator.push(context, searchRoute);
              },
              child: CachedNetworkImage(
                imageUrl:
                    globals.search,
                fit: BoxFit.fitHeight,
                height: width * 40 / 428,
                width: width * 40 / 428,
              ),
            ),
            TextButton(
              onPressed: () {
                Route settingsRoute = MaterialPageRoute(builder: (context) => SettingsPage(settings: SettingsRepo.decode(),));
                Navigator.push(context, settingsRoute);
              },
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(width * 54 / 428),
                  child: CachedNetworkImage(
                    imageUrl: globals.setting2,
                    fit: BoxFit.fitHeight,
                    height: width * 54 / 428,
                    width: width * 54 / 428,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
