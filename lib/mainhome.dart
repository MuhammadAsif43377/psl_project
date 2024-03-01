import 'package:flutter/material.dart';

import 'islamabad.dart';
import 'karachi.dart';
import 'lahore.dart';
import 'multan.dart';
import 'quetta.dart';
import 'peshawar.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {

  List<dynamic> pages=[islamabad(),karachi(),lahore(),multan(),peshawar(),quetta()];
  List<dynamic> images=[
    'assets/icons/islamabadunited.jpg',
    'assets/icons/karachikinglogo.jpg',
    'assets/icons/lahoreqalandar.jpg',
    'assets/icons/multansultan.jpg',
    'assets/icons/peshawarzalmi.jpg',
    'assets/icons/quettagladiator.jpg'
  ];
  List<dynamic> name =[
    'Islamabad United',
    'Karachi King',
    'Lahore Qalandar',
    'Multan Sultan',
    'Peshawar Zalmi',
    'Quetta Gladiator'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title:Text("Welcome to PSL 2024",style: TextStyle(color: Colors.white,fontSize: 30),),
     centerTitle: true,
     backgroundColor: Color(0xff073A7F),
   ),
      drawer: Drawer(
        backgroundColor: Colors.black26,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: SingleChildScrollView(
            child: Column(
              children: [
                UserAccountsDrawerHeader(accountName: Text("Muhammad Asif"), accountEmail: Text("asif12@gmail.com")),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => islamabad(),)),
                child: Card(
                  child: ListTile(leading: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/icons/karachikinglogo.jpg'),
                  ),title: Text("Islamabad United"),),
                ),),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => karachi(),)),
                child: Card(
                  child: ListTile(leading: Icon(Icons.accessible_sharp),title: Text("Karachi King"),),
                ),),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => lahore(),)),
                child: Card(
                  child: ListTile(leading:
                    Icon(Icons.accessible),title: Text("Lahore Qalandar"),),
                ),),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => multan(),)),
                child: Card(
                  child: ListTile(leading:
                    Icon(Icons.access_alarm),title: Text("Multan Sultan"),),
                ),),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) =>peshawar() ,)),
                child: Card(
                  child: ListTile(
                    leading: Icon(Icons.account_balance_wallet_sharp),
                    title: Text("Peshawar Zalmi"),
                  ),
                ),),
                SizedBox(height: 20,),
                GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => quetta(),)),
                child: Card(
                  child: ListTile(leading: Icon(Icons.add_a_photo_rounded),title:
                    Text(" Quetta Gladiator"),),
                ),)
            

              ],
            ),
          ),
        ),
      ),



      // body: GridView.builder(
      //   itemCount: images.length,
      //   gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
      //       maxCrossAxisExtent: 300,
      //       crossAxisSpacing: 100,
      //       mainAxisSpacing: 50
      //   ), itemBuilder: (context, index) {
      //   return CircleAvatar(
      //     backgroundImage: AssetImage(images[index]),
      //     child: Center(
      //       // child: Text(name[index],style: TextStyle(color: Colors.white),),
      //     ),
      //   );
      // },),

      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 10,
          right: 10
        ),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            crossAxisSpacing: 100,
            mainAxisSpacing: 50,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                // Navigate to the other page when the image is clicked
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => pages[index]
                  ),
                );
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(images[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Other Page'),
      ),
      body: Center(
        child: Text('This is the other page.'),
      ),



    );
  }
}
