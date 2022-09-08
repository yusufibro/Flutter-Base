import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Profile',
          ),
          leading: GestureDetector(
            onTap: () {},
            child: Icon(Icons.arrow_back),
          )),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(children: [
                  Container(
                    height: 100,
                    width: 100,
                    margin: EdgeInsets.only(top: 4),
                    child: Stack(children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('res/images/avatar.png'),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 25,
                          width: 25,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.edit,
                            color: Colors.black,
                            size: 15,
                          ),
                        ),
                      )
                    ]),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Muhamad Alawi',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'muhamadalawi981@gmail.com',
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: FlatButton(
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey.shade300,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.person),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Text(
                            "My Account",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: FlatButton(
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey.shade300,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Text(
                            "Notifications",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: FlatButton(
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey.shade300,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.settings),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Text(
                            "Settings",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: FlatButton(
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.grey.shade300,
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(Icons.help_outline),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: Text(
                            "Help & Support",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        onPrimary: Colors.white,
                        shadowColor: Colors.blueAccent,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0)),
                        minimumSize: Size(120, 45),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_circle_right_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Logout'),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ],
          )
        ],
      ),
    );
  }
}
