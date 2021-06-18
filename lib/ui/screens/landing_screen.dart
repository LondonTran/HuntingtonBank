import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:huntington/ui/components/login_container.dart';
import 'package:huntington/constants.dart';

class LandingScreen extends StatefulWidget {
  static const String id = 'login_screen';
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(
              Icons.more_horiz,
              size: 40,
            ),
            onPressed: showBottomSheet,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                "https://www.columbusunderground.com/wp-content/uploads/2017/12/downtown-columbus.jpg"
                // "https://images.unsplash.com/photo-1555305269-2d3cac72ce44?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y29sdW1idXMlMjBvaGlvfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"
                ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 150),
                child: Image.asset(
                  'images/logo.png',
                  width: 300,
                ),
              ),
            ]),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: LoginContainer(),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet() => showModalBottomSheet(
        backgroundColor: Colors.green,
        context: context,
        builder: (context) => Wrap(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.book,
                color: Colors.white,
              ),
              title: Text(
                'Learn More',
                style: kModalBottomSheetTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.card_membership,
                color: Colors.white,
              ),
              title: Text(
                'Enroll Now',
                style: kModalBottomSheetTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Locations',
                style: kModalBottomSheetTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.local_phone_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Contact Us',
                style: kModalBottomSheetTextStyle,
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.message_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Give Feedback',
                style: kModalBottomSheetTextStyle,
              ),
            ),
          ],
        ),
      );
}
