import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';

import '../new_reclamation.dart';
import '../widgets/widgets.dart';

class water extends StatefulWidget {
  const water({Key? key}): super(key:key);

  @override
  State<water> createState() => _waterState();
}

class _waterState extends State<water> {
  final List<String> complaintTypes = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('water'),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height*0.85 ,
          child: Column(
           children: [
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Service Clients',  page: NewReclamationForm(complaintTypes: ['Service Clients','Interruptions de service','Pression de leau','Problèmes de facturation et de paiement','La qualité d eau'],), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Interruptions de service',  page: NewReclamationForm(complaintTypes: ['Interruptions de service','Service Clients','Pression de leau','Problèmes de facturation et de paiement'],), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Pression de leau',  page: NewReclamationForm(complaintTypes: ['Pression de leau','Service Clients','Interruptions de service','Problèmes de facturation et de paiement','La qualité d eau'],), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Problèmes  de paiement', page: NewReclamationForm(complaintTypes: ['Problèmes de facturation et de paiement','Service Clients','Interruptions de service','Pression de leau','La qualité d eau'],), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'La qualité d eau', page: NewReclamationForm(complaintTypes: ['La qualité d eau','Service Clients','Interruptions de service','Pression de leau','Problèmes de facturation et de paiement'],), context: context),

           ],
          ),
        )
    );
  }
}
