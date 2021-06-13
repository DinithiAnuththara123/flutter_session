import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.message,
          size: 25,
          color: Colors.white,
          ),
          onPressed: () {},
      ),

      drawer: Drawer(
        child: ListView(
          children: [

            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://picsum.photos/id/1/600/300"))),
                  
                  child: Text('Welcome',
                  style: TextStyle(fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
            ),

            ListTile(
              leading: Icon(
                Icons.home,
                size: 25,
              ),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),

            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.account_circle,
                size: 25,
              ),
              title: Text(
                "My Account",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),

            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.notifications,
                size: 25,
              ),
              title: Text(
                "Notification",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),

            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.settings,
                size: 25,
              ),
              title: Text(
                "Settings",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),

            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.help,
                size: 25,
              ),
              title: Text(
                "Help",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),

            SizedBox(
              height: 10,
            ),

            ListTile(
              leading: Icon(
                Icons.logout_sharp,
                size: 25,
              ),
              title: Text(
                "Logout",
                style: TextStyle(fontSize: 20),
              ),
              onTap: () {},
            ),      

          ],
        ),
      ),


      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Login page',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Align(
                    alignment: Alignment(0, -0.8),
                    child: Image.asset("assets/image/login.jpg", height: 250, width: 300,),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment(0,-0.8),
                    child: Text("Login",style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold ),
                    ),
                ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TextFormField(
                          cursorColor: Theme.of(context).canvasColor,
                          maxLength: 20,
                          decoration: InputDecoration(
                            labelText: "Enter Your Email",
                            labelStyle: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        ),

                SizedBox(
                  height: 10,
                ),
                
                        TextFormField(
                          obscureText: true,
                          cursorColor: Theme.of(context).canvasColor,
                          maxLength: 20,
                          decoration: InputDecoration(
                            labelText: "Enter Your Password",
                            labelStyle: TextStyle(
                              color: Colors.blue[800],
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Container(
                          height: 40,
                          width: 300,
                          child: MaterialButton(
                            color: Colors.blue[700],
                            onPressed: () async{
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                   'Login Sucessfull',
                                   style: TextStyle(
                                     fontSize: 18,
                                     fontWeight: FontWeight.bold,
                                   ),
                                ),
                                action: SnackBarAction(
                                  label: 'OK',
                                  textColor: Colors.white,                                 
                                  onPressed: () {},
                                )
                              ));
                            },

                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold, 
                                color: Colors.white
                                ),
                            ),  
                          ),
                        ),

                      ],
                    )),
                )
              ],
          )),
        ) 
    ),
);
}
}

