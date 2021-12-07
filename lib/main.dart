import 'package:flutter/material.dart';

//App's entry point
void main() => runApp(const ContactProfile());

class ContactProfile extends
    StatelessWidget {
  const ContactProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          //Adding background color to AppBar
          backgroundColor: Colors.white,
          //Adding back arrow for leading property.
          //Back arrow appears at the top-left of AppBar
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          actions: <Widget>[
            //Adding Star icon for favoring the contact.
            //This IconButton responds to user's tap,
            //and prints the message.
            IconButton(
              icon: const Icon(Icons.star_border),
              color: Colors.black,
              onPressed: () {
                print("Contact is starred");
              },
            ),
          ]
        ),
        //NEW CODE: Added container
        body: ListView (
          children: <Widget>[
            Column(
              children: <Widget>[
                //Container for adding Profile picture
                SizedBox(
                  //Container is stretched horizontally
                  width: double.infinity,
                  //Image is fetched from url
                  child: Image.asset(
                      'assets/images/altumcode-unsplash.jpg'),
                  height: 320,
                ),
                //NEW CODE: Adding Display Name
                SizedBox(
                  height: 60,
                  child: Row(
                    //Aligning text to the start of the widget
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const <Widget>[
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "Simon Vargas",
                          style: TextStyle(fontSize: 30),
                        )
                      )
                    ],
                  ),
                ),
                //NEW CODE: Adding Divider below the display name
                const Divider(
                  color: Colors.grey,
                )
              ],
            )
          ]
        )
      ),
    );
  }
}