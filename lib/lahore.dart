import 'package:flutter/material.dart';
class lahore extends StatefulWidget {
  const lahore({super.key});

  @override
  State<lahore> createState() => _lahoreState();
}

class _lahoreState extends State<lahore> {
  List<dynamic> name=[
  "Shaheen Shah Afridi (c)",
  "Abdullah Shafique",
  "Ahsan Hafeez Bhatti",
  "Dan Lawrence",
    "David Wiese",
    "Fakhar Zaman",
    "Haris Rauf",
    "Kamran Ghulam",
    "Lorcan Tucker",
    "Mirza Tahir Baig",
    "Mohammad Imran Jnr",
    "Rassie van der Dussen",
    "Sahibzada Farhan",
    "Salman Fayyaz",
    "Shai Hope",
    "Sikandar Raza",
    "Zaman Khan",
    "Muhammad Hafeez",
    "Ahmed Shehzad",
    "Abdul Rehman"
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
      body : Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center
          ,
          children: [
            Text("Lahore Qalandar",style: TextStyle(color: Colors.red,fontSize: 50),),
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
                          CircleAvatar(radius: 70,backgroundImage:AssetImage(image[index]),),
                          SizedBox(width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name[index],style: TextStyle(color: Colors.red,fontSize: 30),),
                              Text(designation[index],style: TextStyle(color: Colors.blueAccent,fontSize: 25),),
                            ],
                          )
                        ],
                      ),
                    ),

                  );
                },))
          ],
        ),
      )
    );
  }
}
