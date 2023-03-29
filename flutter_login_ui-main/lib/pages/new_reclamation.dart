import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
class NewReclamationForm extends StatefulWidget {
  final List<String> complaintTypes;

  NewReclamationForm({required this.complaintTypes});

  @override
  _NewReclamationFormState createState() => _NewReclamationFormState();
}

class _NewReclamationFormState extends State<NewReclamationForm> {
  final _formKey = GlobalKey<FormState>();
  FilePickerResult?Result;
  String? filename;
  PlatformFile?pickedfile;
  bool isloading= false;
  File? filetoshow ;

  void pickfile() async {
    try {
 setState(() {
   isloading=true;
 });

Result= await FilePicker.platform.pickFiles(
 type: FileType.any,
  allowMultiple: true,
) ;
if (Result!=null){
  pickedfile=Result!.files.first;
  filetoshow = File(pickedfile!.path!.toString());
}

 setState(() {
   isloading=true;
 });
    }
    catch(e) {
        }
  }
  String? _location;
  String _complaintType = '';
  String _description = '';

  List<String> _complaintTypes = [];

  @override
  void initState() {
    super.initState();
    _complaintTypes = widget.complaintTypes;
    _complaintType = _complaintTypes.first;
  }

  void _updateComplaintTypes(int index, String newType) {
    setState(() {
      _complaintTypes[index] = newType;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('New Reclamation'),
        ),
        body: SingleChildScrollView(
          child: Container(color: Colors.grey[100],
            child: Padding(
            padding: EdgeInsets.all(16.0),
    child: Form(
    key: _formKey,
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
            'title:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins' ,
              fontSize: 18.0,
            ),
      ),
      SizedBox(height: 5.0),
      TextFormField(
            decoration: InputDecoration(
              hintText: 'donner un titre',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins' ,
                fontSize: 18.0,
              ),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'please donner un titre';
              }
              return null;
            },
            onSaved: (value) {
              _location = value;
            },
      ),
      SizedBox(height: 16.0),
    Text(
    'Enter your location:',
    style: TextStyle(fontFamily: 'Poppins' ,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
      SizedBox(height: 5.0),
      TextFormField(
            decoration: InputDecoration(
              hintText: 'Location',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins' ,
                fontSize: 18.0,
              ),
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your location';
              }
              return null;
            },
            onSaved: (value) {
              _location = value;
            },
      ),
    SizedBox(height: 16.0),
    Text(
    'Select complaint type:',
    style: TextStyle(
      fontFamily: 'Poppins' ,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    Wrap(
    spacing: 8.0,
    children: _complaintTypes
            .map(
    (type) => ElevatedButton(
    onPressed: () {
    setState(() {
    _complaintType = type;
    });
    },
    style: ElevatedButton.styleFrom(
    primary:
    _complaintType == type ? Colors.blue : Colors.grey,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0),
    ),
    ),
    child: Text(
    type,
    style: TextStyle(
      fontFamily: 'Poppins' ,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    ),
    ),
    ),
    )
            .toList(),
    ),
    SizedBox(height: 16.0),
    Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Text(
    'Enter your complaint description:',
    style: TextStyle(
      fontFamily: 'Poppins' ,
    fontWeight: FontWeight.bold,
    fontSize: 18.0,
    ),
    ),
    SizedBox(height: 8.0),
    TextFormField(
    maxLines: 5,
    decoration: InputDecoration(
    hintText: 'Complaint description',
      hintStyle: TextStyle(
        fontFamily: 'Poppins' ,
        fontWeight: FontWeight.bold,
        fontSize: 18.0,
      ),
    border: OutlineInputBorder(),
    ),
    validator: (value) {
    if (value == null || value.isEmpty) {
    return 'Please enter a description';
    }
    return null;
    },
    onSaved: (value) {
    _description = value!;
    },
    ),
    ],
    ),
    SizedBox(height: 10.0),
      Align(
        alignment: Alignment.topLeft,
        child: ElevatedButton(
            onPressed: () {
              pickfile();
            },
            child: Text(
              'ajouter un file',
              style: TextStyle(fontFamily: 'Poppins' ,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
              textStyle: TextStyle(color: Colors.white),
            ),
        ),
      ),
     SizedBox(height: 40,),
      Align(
      alignment: Alignment.center,
      child: ElevatedButton(
      onPressed: () {
      if (_formKey.currentState?.validate() == true) {
      _formKey.currentState!.save();
      // TODO: submit complaint
      }
      },
      child: Text(
      'Submit complaint',
      style: TextStyle(fontFamily: 'Poppins' ,
      fontWeight: FontWeight.bold,
      fontSize: 18.0,
      ),
      ),
      style: ElevatedButton.styleFrom(
      primary: Colors.blue,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
      ),
            padding: EdgeInsets.symmetric(vertical: 12.0,horizontal: 12.0),
            textStyle: TextStyle(color: Colors.white),
      ),
      ),
    ),
    ],
    ),
    ),
            ),
          ),
        ),
    );
  }
}
