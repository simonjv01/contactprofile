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
                  //Image is fetched from assets folder use Image.network
                  //to fetch with url, "https:..."
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
                ),
                //NEW CODE: Container for action items
                Container(
                  margin: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      //"Call" action item
                      buildCallButton(),

                      //"Text" action item
                      buildTextButton(),

                      //"Video" action item
                      buildVideoCallButton(),

                      //"Email" action item
                      buildEmailButton(),

                      //"Directions" action item
                      buildDirectionsButton(),

                      //"Pay" action item
                      buildPayButton(),
                    ],
                  ),
                ),
                //NEW CODE: Adding Divider
                const Divider(
                  color: Colors.grey,
                ),
                //NEW CODE: Adding contact's phone numbers
                mobilePhoneListTile(),
                otherPhoneListTile(),

                //NEW CODE: Adding 'Divider' widget
                const Divider(
                  color: Colors.grey,
                ),

                //Adding email list
                emailListTile(),

                //Adding Divider
                const Divider(
                  color: Colors.grey,
                ),

                //Adding address tile
                addressListTile(),
              ],
            )
          ]
        )
      ),
    );
  }
  //Adding "Call" action item
  Widget buildCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Call"),
      ],
    );
  }

  //Adding "Text" action item
  Widget buildTextButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.message,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Text"),
      ],
    );
  }
  //Adding "Video" action item
  Widget buildVideoCallButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.video_call,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Video"),
      ],
    );
  }
  //Adding "Email" action item
  Widget buildEmailButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.email,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Email")
      ],
    );
  }
  //Adding "Directions" action item
  Widget buildDirectionsButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.directions,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Directions")
      ],
    );
  }
  //Adding "Pay" action item
  Widget buildPayButton() {
    return Column(
      children: <Widget>[
        IconButton(
          icon: Icon(
            Icons.attach_money,
            color: Colors.indigo.shade800,
          ),
          onPressed: () {},
        ),
        const Text("Pay")
      ],
    );
  }

  //NEW CODE: Adding "Mobile phone number" item
  Widget mobilePhoneListTile() {
    return ListTile(
      leading: const Icon(Icons.call),
      title: const Text("330-803-3390"),
      subtitle: const Text("mobile"),
      trailing: IconButton(
        icon: const Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }

  //Adding "Other Phone Number" item
  Widget otherPhoneListTile() {
    return ListTile(
      leading: const Text(""),
      title: const Text("440-44-3390"),
      subtitle: const Text("other"),
      trailing: IconButton(
        icon: const Icon(Icons.message),
        color: Colors.indigo.shade500,
        onPressed: () {},
    ),
    );

  }
  //Adding "email list" item
  Widget emailListTile() {
    return  const ListTile(
      leading: Icon(Icons.email),
      title: Text("vargas@vargas.com"),
      subtitle: Text("work"),
    );
  }

  //Adding "address" item
  Widget addressListTile() {
    return  ListTile(
      leading: const Icon(Icons.location_on),
      title: const Text("234 Sunset St, Burlingame"),
      subtitle: const Text("home"),
      trailing: IconButton(
        icon: const Icon(Icons.directions),
        color: Colors.indigo.shade500,
        onPressed: () {},
      ),
    );
  }



}