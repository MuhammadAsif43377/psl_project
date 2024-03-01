import 'package:flutter/material.dart';

class islamabad extends StatefulWidget {
  const islamabad({super.key});

  @override
  State<islamabad> createState() => _islamabadState();
}

class _islamabadState extends State<islamabad> {

  List<dynamic> image = [
    "assets/images/islamabad/Alex.jpg",
    "assets/images/islamabad/azam.jpg",
    "assets/images/islamabad/Colin.jpg",
    "assets/images/islamabad/Faheem.jpg",
    "assets/images/islamabad/Haider.jpg",
    "assets/images/islamabad/Hunain.jpg",
    "assets/images/islamabad/imad.jpg",
    "assets/images/islamabad/jordan.jpg",
    "assets/images/islamabad/Matthew.jpg",
    "assets/images/islamabad/naseem.jpg",
    "assets/images/islamabad/Obed.jpg",
    "assets/images/islamabad/Qasim.jpg",
    "assets/images/islamabad/Rumman.jpg",
    "assets/images/islamabad/Salman.jpg",
    "assets/images/islamabad/shadab.jpg",
    "assets/images/islamabad/Shahab.jpg",
    "assets/images/islamabad/Shamyl.jpg",
    "assets/images/islamabad/Tymal.jpg",
    "assets/images/islamabad/Ubaid.jpg",
    "assets/images/islamabad/waseem.png"

  ];
  List<dynamic> name =[
   "Shadab Khan (c)",
    "Naseem Shah",
    "Jordan Cox",
    "Imad Wasim",
    "Azam Khan",
    "Tymal Mills",
    "Faheem Ashraf",
    "Alex Hales",
    "Colin Munro",
    "Rumman Raees",
    "Matthew Forde",
    "Salman Ali Agha",
    "Qasim Akram",
    "Shahab Khan",
    "Hunain Shah",
    "Ubaid Shah",
    "Shamyl Hussain",
    "Obed McCoy",
    "Haider Ali",
    "Muhammad Waseem"

  ];
  List<dynamic> designation =[
    "Batsman",
    "Bowler",
    "Allrounder",
    "Keeper",
    "Captain",
    "Batsman",
    "Bowler",
    "Allrounder",
    "Keeper",
    "Batsman",
    "Bowler",
    "Allrounder",
    "Keeper",
    "Batsman",
    "Bowler",
    "Allrounder",
    "Keeper""Batsman",
    "Bowler",
    "Allrounder",
    "Keeper"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Islamabad United",style: TextStyle(color: Colors.red,fontSize: 50),),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(
              itemCount: image.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    child: Row(
                      children: [
                        CircleAvatar(radius: 70,backgroundImage: AssetImage(image[index]),),
                        SizedBox(width: 80,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(name[index],style: TextStyle(color: Colors.blueAccent,fontSize: 30,),),
                            Text(designation[index],style: TextStyle(color: Colors.redAccent,fontSize: 25,),)
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
