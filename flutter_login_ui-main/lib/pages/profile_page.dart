
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_ui/pages/notification.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/consumer%20affer.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/education.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/electricity.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/medical.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/transport.dart';
import 'package:flutter_login_ui/pages/relamtion%20page/water.dart';
import 'package:flutter_login_ui/pages/widgets/widgets.dart';

import 'new_reclamation.dart';



class ProfilePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}


class _ProfilePageState extends State<ProfilePage>{
  int currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

appBar: AppBar(
        title: Text("home",
          style: TextStyle(
               fontFamily:'Poppins',color: Colors.white, fontWeight: FontWeight.bold),
        ),
        flexibleSpace:Container(
        ),
        actions: [
          Container(
            margin: EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => notification()),);
                }, ),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.grey, borderRadius: BorderRadius.circular(6),),
                    constraints: BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer (),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/street.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                  children: <Widget>[
                    Card(
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        elevation: 4.0,
                        child: Container(
                          alignment: Alignment.topLeft,
                          padding: EdgeInsets.only(top:10,left: 10.0, bottom:10),
                          child: Column(
                              children: <Widget>[
                                Container(
                                  child: Align(
                                    alignment: Alignment.topCenter,
                                    child: Text(
                                      "les plus utilise",
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Icon(Icons.car_crash,
                                                color: Colors.blue,),
                                              SizedBox(width: 10.0), // add some spacing between the icon and text
                                              Text('trafic',style:TextStyle(fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black54,)
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              ShaderMask(
                                                blendMode: BlendMode.srcATop,
                                                shaderCallback: (Rect bounds) {
                                                  return LinearGradient(
                                                    colors: [Colors.grey, Colors.blueGrey],
                                                    begin: Alignment.topLeft,
                                                    end: Alignment.bottomRight,
                                                    tileMode: TileMode.mirror,
                                                  ).createShader(bounds);
                                                },
                                                child: Icon(
                                                  Icons.security_outlined,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              ),

                                              SizedBox(width: 10.0), // add some spacing between the icon and text
                                              Text('santer',style:TextStyle(fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black54,) ,),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                          Container(
                                          decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 2,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.security_outlined,
                                          color: Colors.blue,
                                          size: 30,
                                        ),
                                      ),

                                              SizedBox(width: 10.0), // add some spacing between the icon and text
                                              Text('security',style:TextStyle(fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,

                                                color: Colors.black54,) ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          child: Column(
                                            children: [
                                              Icon(Icons.heart_broken_sharp,color: Colors.blue,),
                                              SizedBox(width: 10.0), // add some spacing between the icon and text
                                              Text('education',style:TextStyle(
                                                fontFamily: 'Poppins',
                                                fontStyle: FontStyle.italic,
                                                color: Colors.black54,) ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ]
                                )
                              ]
                          ),
                        )
                    ),
                  ]
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 15.0, bottom: 4.0),
              alignment: Alignment.topLeft,
              child: Text(
                "les reclamation on tendance",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 20,),
            Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Text('l;l', textAlign: TextAlign.center,style: TextStyle(color: Colors.black54)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Colors.blue,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Text('k', textAlign: TextAlign.center,style: TextStyle(color: Colors.black54),),
                        ),
                      ),
                    ),
                  ],
                )
            ) ,
            SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15.0, bottom: 4.0),
                  alignment: Alignment.topLeft,
                  child: Text(
                    "tout les type de reclamation ",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.normal,
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),

              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: MediaQuery.of(context).size.height *1.25,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(icon: Icons.edit_note, title: 'education', subtitle: 'Accès et logement / sécurité',page: education(),context: context, ),
                        customCard(icon: Icons.medication_sharp, title: 'santer', subtitle: ' Erreurs médicales / Qualité des soins ',page: Medical(),context: context, )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(icon: Icons.add_road_outlined, title: 'transport', subtitle: 'Accessibilité, Qualité de service ',page: transport(),context: context, ),
                        customCard(icon: Icons.water_sharp, title: 'water', subtitle: 'Qualité de service / la qualité d eau',page: water(),context: context, )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(icon: Icons.location_city, title: 'Consumer Affairs', subtitle: 'Consumer fraud/ unfair business practices',page:consumer(),context: context, ),
                        customCard(icon: Icons.electric_bolt, title: 'electricity', subtitle: 'payment issuesPower /  Quality of service ',page: electricity(),context: context, )
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customCard(icon: Icons.mark_chat_read_outlined, title: 'autre', subtitle: '',page: NewReclamationForm(complaintTypes: ['autre']),  context: context, ),
                        customCard(icon: Icons.electric_bolt, title: 'environement', subtitle: 'Pollution de l air/ Pollution de rue  ',page: notification(),context: context, )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]

    ),
        )
    ),
    );
  }

}
