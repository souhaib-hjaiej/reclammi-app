import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';

import '../new_reclamation.dart';
import '../widgets/widgets.dart';

class transport extends StatefulWidget {
  const transport({Key? key}): super(key:key);

  @override
  State<transport> createState() => _transportState();
}

class _transportState extends State<transport> {
  final List<String> complaintTypes = ['Type 1', 'Type 2', 'Type 3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('transport'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/street.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height,
          child: Column(
           children: [
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Problèmes de tarifs ',  page: NewReclamationForm(complaintTypes: ['Problèmes de tarifs ','Accessibilité','Qualité de service','Problèmes de sécurité','autre']), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Accessibilité',  page: NewReclamationForm(complaintTypes:['Accessibilité','Problèmes de tarifs ','Qualité de service','Problèmes de sécurité','autre']), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Qualité de service',  page: NewReclamationForm(complaintTypes: ['Qualité de service','Problèmes de tarifs ','Accessibilité','Problèmes de sécurité','autre']), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'Problèmes de sécurité',  page: NewReclamationForm(complaintTypes: ['Problèmes de sécurité','Problèmes de tarifs','Accessibilité','Qualité de service','autre']), context: context),
             alignCard(icon: CupertinoIcons.train_style_one, title: 'autre',  page: NewReclamationForm(complaintTypes:['autre','Problèmes de tarifs ','Accessibilité','Qualité de service','Problèmes de sécurité',]), context: context),
           ],
          ),
        )
    );
  }
}
