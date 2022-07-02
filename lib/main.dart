import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text(''),backgroundColor: Colors.transparent,elevation: 0,toolbarHeight: 80,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 63.0),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.fitWidth,
                    image:AssetImage('images/background_image.png')
                  )
                ),
                height: 260,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(top:30.0),
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset('images/girl.jpg'),
                          )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Text('Account 2386389', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Text('Samantha', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 18.0),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: Text('Accounts Overview', style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 14.0),),
                      )
                    ])
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: 196,
                    height: 100,
                    decoration: BoxDecoration(color: Color(0xff18978F)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Current Balance',style: TextStyle(color: Colors.white,fontSize: 18.0),),
                        Text('\$10,200',style: TextStyle(color: Colors.white,fontSize: 18.0))
                      ],
                    ),
                  ),
                  Container(
                    width: 196,
                    height: 100,
                    decoration: BoxDecoration(color: Colors.red),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Credit Card',style: TextStyle(color: Colors.white,fontSize: 18.0)),
                        Text('\$1,200',style: TextStyle(color: Colors.white,fontSize: 18.0))
                      ],
                    ),
                  )
                ],
              ),
             Container(
               color: Colors.grey[200],
               width:500,
               height: 50,
               child: Padding(
                 padding: const EdgeInsets.all(15),
                 child: Text('Quick Actions',style: TextStyle(fontWeight: FontWeight.bold),),
               ),
             ),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Accounts Menu"),
                    ));
                  },
                  child: Container(
                    width: 196,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(color:Colors.grey)),
                    child: Column(
                      children: [
                        Image.asset('images/account.png',height: 150,width: 100,),
                        Text('Accounts',style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Pay & Transfers Menu"),
                    ));
                  },
                  child: Container(
                    width: 196,
                    height: 200,
                    decoration: BoxDecoration(border: Border.all(color:Colors.grey)),
                    child: Column(
                      children: [
                        Image.asset('images/pay_transfers.png',height: 150,width: 100,),
                        Text('Pay & Transfers',style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                )
              ],
            ),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Accounts Menu"),
                      ));
                    },
                    child: Container(
                      width: 196,
                      height: 200,
                      decoration: BoxDecoration(border: Border.all(color:Colors.grey)),
                      child: Column(
                        children: [
                          Image.asset('images/spending_saving.png',height: 150,width: 100,),
                          Text('Spending & Saving',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Apply & Open Menu"),
                      ));
                    },
                    child: Container(
                      width: 196,
                      height: 200,
                      decoration: BoxDecoration(border: Border.all(color:Colors.grey)),
                      child: Column(
                        children: [
                          Image.asset('images/apply_open.png',height: 150,width: 50,),
                          Text('Apply & Open',style: TextStyle(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.fitWidth,
                    image:AssetImage('images/background_image.png')
                )
              ),
              child: Text(''),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Close'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
