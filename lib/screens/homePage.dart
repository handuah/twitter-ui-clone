import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedIndex = 0;

  List<Widget> _pageOptions = <Widget>[
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.yellow,
    ),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.green,
    ),

  ];

    void _onItemTapped (int index) {
      setState(() {
      selectedIndex = index;
    });
    }
      

 


  @override
  Widget build(BuildContext context) {
     return Scaffold(

       //declaring the drawer
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(5),
          children: <Widget>[
            DrawerHeader(
              
              child: ListView(
                padding: EdgeInsets.all(10.0),
                   children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          child: ClipOval(
                          child: Image.asset('assets/images/blue-twitter.png'),
                          ),
                          ),
                          SizedBox(height: 10),
                          Text('Hannah Duah', style: TextStyle( color: Colors.black,)),
                          SizedBox(height: 10),
                          Text('@HHanduah', style: TextStyle( color: Colors.black26,)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text('1,127', style: TextStyle( color: Colors.black,)),
                              Text('Following', style: TextStyle( color: Colors.black26,)),
                              Text('265', style: TextStyle( color: Colors.black,)),
                              Text('Followers', style: TextStyle( color: Colors.black26,)),
                            ],
                          ),
                      ]
                    ),
                                   ],
              ),
            ),
            SizedBox(height: 15),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.reorder),
              title: Text('Lists'),
            ),
            ListTile(
              leading: Icon(Icons.speaker_notes),
              title: Text('Topics'),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Bookmarks'),
            ),
            ListTile(
              leading: Icon(Icons.lightbulb_outline),
              title: Text('Moments'),
            ),
             Divider(),
              Container(
               padding: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: FractionalOffset.bottomCenter, //holds the bottom list in drawer in place
                    child: Column(
                       
                      children: <Widget>[
                        SizedBox(height: 20),
                         Text('Settings and Privacy'),
                         SizedBox(height: 30),
                         Text('Help and Support'),
                      ]
                    ),
                ),
              ),
              SizedBox(height: 200.0,),
              Divider(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.lightbulb_outline, color: Colors.lightBlue, size: 35),),
                    IconButton(icon: Icon(Icons.settings, color: Colors.lightBlue, size: 35),),
                  ]
                ),
              ),
          ],
        ),
      ), 

      
      appBar: AppBar(

        //onPress leading to Navigation Drawer
        leading: Builder(builder: (context) => Padding(
          padding: EdgeInsets.all(15),
                  child: Material(
            elevation: 4.0,
            shape: CircleBorder(),
                  child: Ink.image(
                    image: AssetImage('assets/images/blue-twitter.png'),
                    child: InkWell(
                            onTap: () => Scaffold.of(context).openDrawer(),
                      ),
                    ),
                  
                ),

          ),
          ),

          title: Center(
            child: Icon(Icons.star, color: Colors.lightBlue),
          ),
          actions: <Widget>[
             IconButton(
                    icon: Icon(Icons.swap_horiz, color: Colors.lightBlue),
                    onPressed: () {}),
          ],
          backgroundColor: Colors.white,
          bottomOpacity: 3,
      ),

      //SETTING UP THE BOTTOM NAVIGATION
      bottomNavigationBar: BottomNavigationBar(
       
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black26),
           title: Text('')
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search, color: Colors.black26),
           title: Text('')
          ),
           BottomNavigationBarItem(icon: Icon(Icons.notifications_none, color: Colors.black26),
           title: Text('')
          ),
           BottomNavigationBarItem(icon: Icon(Icons.mail_outline, color: Colors.black26),
            title: Text('')
          ), 
        ],

        //item tapped index
         currentIndex: selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
        ),


        body: Center(
          child: _pageOptions.elementAt(selectedIndex),
        ),
    );
  }
}