import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Defining main function
void main() {
  runApp(MyApp());
}

// Extentending an abstract class of StatelessWidget so that we may implement it
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

// Extending an abstract class of StatefulWidget since we will use states in the its implementation
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// Extending the class state of MyHomePage which is defined above
class _MyHomePageState extends State<MyHomePage> {
  // Declaring variables which will be used to change the states of different widgets
  bool _isChecked = false;
  String _selectedChoice = '';
  String _currentImage =
      "https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80";

  // Defining a function used to taggle/change the images as we click on a button with a default image set above
  void _changeImage() {
    setState(() {
      _currentImage = _currentImage ==
              "https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
          ? "https://images.unsplash.com/photo-1585247226801-bc613c441316?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"
          : "https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80";
    });
  }

  // Overriding the state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // returning a scaffold widget
      appBar: AppBar(
        title: Text("Mobile Dev Assignment"),
        actions: <Widget>[
          IconButton(
            // Use of button, that contains an icon that will show the popup menu once pressed
            icon: Icon(Icons.more_vert),
            onPressed: () {
              _showPopupMenu(
                  context); // a function called once the button is presses
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Use of drawer widget which will be a side bar that has different list tiles
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text("Side Menu"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact Us"),
              leading: Icon(Icons.phone),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Login"),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        // The body which is a container widget that has has a padding and margin setted, and contains other widgets
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(20),
        child: ConstrainedBox(
          // Use of constrained box to define the min width and height of the widgets defined in it
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: double.infinity,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                // Use of sized box of height 10px to separate the app bar and the image below
                height: 10,
              ),
              Image.network(
                // Use of image with the value set to _currentImage which will be change once a floating button is pressed
                _currentImage,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              SizedBox(
                // Use of sized box of height 10px to separate the image and the fitted box below
                height: 10,
              ),
              FittedBox(
                // Used fitted box to scale and position its child within itself according to fit and alignment
                fit: BoxFit.scaleDown,
                child: Text(
                  "Welcome to our assignment :)",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                // Use of sized box of height 10px to separate the fitted box and the text widget below
                height: 10,
              ),
              Text("--- RotatedBox by using active image ---",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              SizedBox(
                // Use of sized box of height 5px to separate the text and the rotated box widget below
                height: 5,
              ),
              RotatedBox(
                quarterTurns:
                    1, // Rotates the widget by 90 degrees. You may change this number to 2, 3, or 4 to see changes
                child: Image.network(
                  // Use of image with the value set to _currentImage which will be change once a floating button is pressed
                  _currentImage,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                // Use of sized box of height 10px to separate the rotated box widget and the text below
                height: 10,
              ),
              Text("--- Choose how you saw this work ---",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              SizedBox(
                // Use of sized box of height 5px to separate the text widget above and the choice chip below
                height: 5,
              ),
              // These are choice chips which one may select how he see the work which is done on this page
              Column(children: <Widget>[
                Wrap(
                  children: <Widget>[
                    ChoiceChip(
                      label: Text('Good'),
                      selected: _selectedChoice == 'Good',
                      onSelected: (selected) {
                        setState(() {
                          _selectedChoice = 'Good';
                        });
                      },
                    ),
                    SizedBox(
                        width:
                            8.0), // Separates the choice chips with a sizedbox of a width of 8px
                    ChoiceChip(
                      label: Text('Fair'),
                      selected: _selectedChoice == 'Fair',
                      onSelected: (selected) {
                        setState(() {
                          _selectedChoice = 'Fair';
                        });
                      },
                    ),
                    SizedBox(
                        width:
                            8.0), // Separates the choice chips with a sizedbox of a width of 8px
                    ChoiceChip(
                      label: Text('Excellent'),
                      selected: _selectedChoice == 'Excellent',
                      onSelected: (selected) {
                        setState(() {
                          _selectedChoice = 'Excellent';
                        });
                      },
                    ),
                  ],
                ),
              ]),
              SizedBox(
                // Use of sized box of height 10px to separate the choice chip and the filter chip widget below
                height: 10,
              ),
              FilterChip(
                // Implemetation of filter chip to mark that you have seen all work done
                label: Text("Mark as seen"),
                onSelected: (bool value) {
                  setState(() {
                    _isChecked = value;
                  });
                },
                selected: _isChecked,
              ),
              SizedBox(
                // Use of sized box of height 10px to separate the fitted box and the text widget below
                height: 10,
              ),
              Text("--- You may Love, Like or Comment ---",
                  style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.normal)),
              SizedBox(
                // Use of sized box of height 5px to separate the text widget above and the icons below
                height: 5,
              ),
              Row(
                // List of icons placed horizantally
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.heart,
                    color: Colors.red,
                    size: 30,
                  ),
                  Icon(
                    FontAwesomeIcons.thumbsUp,
                    color: Colors.blue,
                    size: 30,
                  ),
                  Icon(
                    FontAwesomeIcons.comment,
                    color: Colors.green,
                    size: 30,
                  ),
                ],
              ),
              SizedBox(
                // Use of sized box of height 10px to separate the icons and the floating button widget below
                height: 10,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // a button to be used to change the image on the top once pressed
        onPressed: _changeImage,
        child: Icon(Icons.refresh),
      ),
    );
  }

  // Defining a function which will show the pop up menu
  void _showPopupMenu(BuildContext context) {
    showMenu(
      context: context,
      position: RelativeRect.fromLTRB(500, 76, 10, 0),
      items: [
        PopupMenuItem(
          child: Text("Logout"),
          value: "Logout",
        ),
        PopupMenuItem(
          child: Text("Settings"),
          value: "Settings",
        ),
        PopupMenuItem(
          child: Text("More"),
          value: "More",
        ),
      ],
    );
  }
}
