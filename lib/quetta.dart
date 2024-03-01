import 'package:flutter/material.dart';
class quetta extends StatefulWidget {
  const quetta({super.key});

  @override
  State<quetta> createState() => _quettaState();
}

class _quettaState extends State<quetta> {
  List<dynamic> name=[
    'Rilee Rossouw (c)',
    'Abrar Ahmad',
    'Bismillah Khan',
    'Jason Roy',
    'Laurie Evans',
    'Mohammad Amir',
    'Mohammad Hasnain',
    'Mohammad Wasim Jr',
    'Omair bin Yousuf',
    'Sajjad Ali Jnr',
    'Sarfaraz Ahmad',
    'Saud Shakeel',
    'Sherfane Rutherford',
    'Sohail Khan',
    'Umar Amin',
    'Usman Qadir',
    'Usman Tariq'
    'Will Smeed'
    'Wanindu Hasaranga',
    'Akeal Hosein'
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
            Text("Quetta Gladiator",style: TextStyle(color: Colors.red,fontSize: 50),),
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
