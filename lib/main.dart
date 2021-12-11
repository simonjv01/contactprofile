import 'package:flutter/material.dart';

void main() => runApp(ContactProfile());

//NEW CODE: Separate class to store themes
class MyAppThemes {
  //Method to provide light theme
  static ThemeData appThemeDark() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.dark,

      //Theme for app bar
      appBarTheme: const AppBarTheme(
        //AppBar's color
        color: Colors.black,
        //Theme for AppBar's icons
        iconTheme: IconThemeData(

          //Dark color icons on light colored background
          color: Colors.white,
        ),
      ),

      //Theme for app's icons
      iconTheme: const IconThemeData(
        color: Colors.orange,
      ),
    );
  }

  static ThemeData appThemeLight() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.light,

      //Theme for app bar
      appBarTheme: const AppBarTheme(
        //AppBar's color
        color: Colors.white,
        //Theme for AppBar's icons
        iconTheme: IconThemeData(

          //Dark color icons on light colored background
          color: Colors.black,
        ),
      ),

      //Theme for app's icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),
    );
  }
}

class ContactProfile extends StatelessWidget {
  const ContactProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //Applying theme to app calling MyAppThemes's method
      theme: MyAppThemes.appThemeDark(),

      home: Scaffold(
        //Creating app bar
        appBar: buildAppBarWidget(),

        //Creating body part of the app
        body: buildBodyWidget(),
      ),
    );
  }

  //Provides app bar implementation
   buildAppBarWidget() {
    return AppBar(
      leading: const Icon(
        Icons.arrow_back,
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.star_border),
          onPressed: () {
            print("Contact is starred");
          },
        ),
      ],
    );
  }

  //Provides body for the app
  Widget buildBodyWidget() {
    return ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 250,
              child: Image.network(
                "https://github.com/ptyagicodecamp/educative_flutter/raw/profile_1/assets/profile.jpg?raw=true",
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "Priyanka Tyagi",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Container(
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              child: profileActionItems(),
            ),
            const Divider(
              color: Colors.grey,
            ),
            mobilePhoneListTile(),
            otherPhoneListTile(),
            const Divider(
              color: Colors.grey,
            ),
            emailListTile(),
            const Divider(
              color: Colors.grey,
            ),
            addressListTile(),
          ],
        ),
      ],
    );
  }

  //Builds custom action items widget
  Widget profileActionItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        buildCallButton(),
        buildTextButton(),
        buildVideoCallButton(),
        buildEmailButton(),
        buildDirectionsButton(),
        buildPayButton(),
      ],
    );
  }

  //Call button of action item widget
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.call,
          ),
          onPressed: () {},
        ),
        Text("Call"),
      ],
    );
  }

  //Text button of action item widget
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.message,
          ),
          onPressed: () {},
        ),
        Text("Text"),
      ],
    );
  }

  //Video button of action item widget
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.video_call,
          ),
          onPressed: () {},
        ),
        Text("Video"),
      ],
    );
  }

  //Email button of action item widget
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.email,
          ),
          onPressed: () {},
        ),
        Text("Email"),
      ],
    );
  }

  //Directions button of action item widget
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.directions,
          ),
          onPressed: () {},
        ),
        const Text("Directions"),
      ],
    );
  }

  //Pay button of action item widget
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: const Icon(
            Icons.attach_money,
          ),
          onPressed: () {},
        ),
        const Text("Pay"),
      ],
    );
  }

  //Builds widget for mobile phone number
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: const Icon(
        Icons.call,
        color: Colors.grey,
      ),
      title: const Text("330-803-3390"),
      subtitle: const Text("mobile"),
      trailing: IconButton(
        icon: const Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  //Builds widget for other phone number
  Widget otherPhoneListTile() {
    return ListTile(
      leading: const Text(""),
      title: const Text("440-440-3390"),
      subtitle: const Text("other"),
      trailing: IconButton(
        icon: const Icon(
          Icons.message,
        ),
        onPressed: () {},
      ),
    );
  }

  //Builds email address widget
  Widget emailListTile() {
    return const ListTile(
      leading: Icon(
        Icons.email,
        color: Colors.grey,
      ),
      title: Text("priyanka@priyanka.com"),
      subtitle: Text("work"),
    );
  }

  //Builds home address widget
  Widget addressListTile() {
    return ListTile(
      leading: const Icon(
        Icons.location_on,
        color: Colors.grey,
      ),
      title: const Text("234 Sunset St, Burlingame"),
      subtitle: const Text("home"),
      trailing: IconButton(
        icon: const Icon(
          Icons.directions,
        ),
        onPressed: () {},
      ),
    );
  }
}
