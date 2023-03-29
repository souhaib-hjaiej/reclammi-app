import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/pages/profile_page.dart';

import '../new_reclamation.dart';
import '../widgets/widgets.dart';

class education extends StatefulWidget {
  const education({Key? key}): super(key:key);

  @override
  State<education> createState() => _educationState();
}

class _educationState extends State<education> {
  final List<String> complaintTypes = ['prof ', 'idara', 'servuent'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('education'),
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/street.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          height: MediaQuery.of(context).size.height ,
          child: Column(
            children: [
              alignCard(icon: CupertinoIcons.t_bubble, title: 'Quality of education', page: NewReclamationForm(complaintTypes: ['Quality of education','Discrimination and harassmen','Safety and security','Access and accommodation','Regulatory compliance'],), context: context),
              alignCard(icon: CupertinoIcons.bandage, title: 'Discrimination and harassmen',  page: NewReclamationForm(complaintTypes:  ['Quality of education','Discrimination and harassmen','Safety and security','Access and accommodation','Regulatory compliance'],), context: context),
              alignCard(icon: CupertinoIcons.bag_badge_minus, title: 'Safety and security',  page: NewReclamationForm(complaintTypes:  ['Quality of education','Discrimination and harassmen','Safety and security','Access and accommodation','Regulatory compliance'],), context: context),
              alignCard(icon: CupertinoIcons.add_circled, title: 'Access and accommodation',  page: NewReclamationForm(complaintTypes:  ['Quality of education','Discrimination and harassmen','Safety and security','Access and accommodation','Regulatory compliance'],), context: context),
              alignCard(icon: Icons.mark_chat_read_outlined, title: 'Autre', page: NewReclamationForm(complaintTypes:  ['Quality of education','Discrimination and harassmen','Safety and security','Access and accommodation','Regulatory compliance'],), context: context),

            ],
          ),
        )
    );
  }
}
