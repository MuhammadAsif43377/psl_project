import 'package:flutter/material.dart';
class karachi extends StatefulWidget {
  const karachi({super.key});

  @override
  State<karachi> createState() => _karachiState();
}

class _karachiState extends State<karachi> {
  List<dynamic> name=[
  "Shan Masood (c)",
  "Anwar Ali",
  "Arafat Minhas",
  "Blessing Muzarabani",
  "Daniel Sams",
  "Hassan Ali",
  "Kieron Pollard",
  "Leus Du Plooy",
  "Mir Hamza",
  "Mohammad Akhlaq",
  "Mohammad Amir Khan",
  "Mohammad Nawaz",
  "Shoaib Malik",
  "Tim Seifert",
  "Zahir Mahmood",
  "Tabraiz Shamsi"
      "Shoaib Malik",
    "Tim Seifert",
    "Zahir Mahmood",
    "Tabraiz Shamsi"
  ];
  List<dynamic> designation=[
    "Captain",
    "Wicket keeper",
    "Batsman",
    "Baller",
    "Allrounder",
    "Batsman",
    "Allrounder",
    "Captain",
    "Wicket keeper",
    "Batsman",
    "Baller",
    "Allrounder",
    "Batsman",
    "Allrounder",
    "Batsman",
    "Bowler",
    "Allrounder",
    "Batsman",
    "Allrounder",
    "Batsman"
  ];
  List<dynamic> image=[
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text("Karachi king",style: TextStyle(color: Colors.blue,fontSize: 40),),
      SizedBox(height: 20,),
      Expanded(child: ListView.builder(itemCount: image.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          child: Padding(padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
          child: Row(
            children: [
              SizedBox(width: 30,),
              CircleAvatar(radius: 70,
              backgroundImage: AssetImage(image[index]),),
              SizedBox(width: 80,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name[index],style: TextStyle(color: Colors.greenAccent,fontSize: 35),),
                  Text(designation[index],style: TextStyle(color: Colors.deepOrange,fontSize: 25),),
                ],
              )
            ],
          ),),
        );
      },))
    ],
  ),
),
    );
  }
}
