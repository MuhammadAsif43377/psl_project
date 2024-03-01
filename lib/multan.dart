import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class multan extends StatefulWidget {
  const multan({super.key});

  @override
  State<multan> createState() => _multanState();
}

class _multanState extends State<multan> {
  List<dynamic> name=[
    'Mohammad Rizwan (c)',
    'Abbas Afridi',
    'Aftab Ibrahim',
    'Chris Jordan',
    'David Willey',
    'Dawid Malan',
    'Iftikhar Ahmad',
    'Ihsanullah',
    'Johnson Charles',
    'Khushdil Shah',
    'Mohammad Ali',
    'Olly Stone',
    'Reeza Hendricks',
    'Shahnawaz Dahani',
    'Tayyab Tahir',
    'Usama Mir',
    'Usman Khan'
    'Faisal Akram',
    'Mohammad Shahzad',
    'Yasir Khan'
  ];
  List<dynamic> designation=[
    "Captain",
    "Wicket keeper",
    "All Rounder",
    "Batsman",
    "Bowller",
    "Batsman",
    "Bowler",
    "Batsman",
    "Baller",
    "Batsman",
    "Allrounder",
    "Allrounder",
    "Allrounder",
    "Allrounder",
    "Allrounder",
    "Allrounder",
    "Batsman",
    "Bowler",
    "Batsman",
    "Baller"

  ];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Multan Sultan",style: TextStyle(color: Colors.brown,fontSize: 40),),
            SizedBox(height: 20,),
            Expanded(child: ListView.builder(
              itemCount: name.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      CircleAvatar(radius: 70,backgroundImage: AssetImage(image[index]),),
                      SizedBox(width: 20,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              width:250,
                              child: Text(name[index],style: TextStyle(color: Colors.pinkAccent,fontSize: 30),overflow: TextOverflow.ellipsis,)),
                          Text(designation[index],style: TextStyle(color: Colors.deepPurple,fontSize: 25),)
                        ],
                      )
                    ],
                  ),
                ),
              );
            },))
          ],
        ),
      ),
    );
  }
}
