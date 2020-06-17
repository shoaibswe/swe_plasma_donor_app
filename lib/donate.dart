import 'package:date_field/date_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'package:plasma/user_model.dart';

class plasmaDonate extends StatefulWidget {
  plasmaDonate({
    Key key,
  }) : super(key: key);

  @override
  _plasmaDonateState createState() => _plasmaDonateState();
}

class _plasmaDonateState extends State<plasmaDonate> {
  var confirmation = "";

  Future<BecomeDonorModel> createUser(String name, blood_group,
      last_date_of_blood_donation, address, phone_number, city, gender) async {
    final String apiUrl = 'PLEASE CONTACT FOR API LINK';
    final response = await http.post(apiUrl, body: {
      "name": name,
      "blood_group": blood_group,
      "last_date_of_blood_donation": last_date_of_blood_donation,
      "address": address,
      "phone_number": phone_number,
      "city": city,
      "gender": gender
    });
    if (response.statusCode == 200) {
      final String responseString = response.body;
      return becomeDonorModelFromJson(responseString);
    } else {
      return null;
    }
  }

  TextEditingController nameController = TextEditingController();
  TextEditingController bloodgroupController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController lastdateController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  String bloodgroupRaw, genderRaw;
  DateTime last_date_of_blood_donationRaw;
  List<String> _bg = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"];
  List<String> _sex = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
        children: [
          Container(
            width: 360.0,
            height: 50.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.16, -0.85),
                end: Alignment(0.0, 1.0),
                colors: [
                  const Color(0xffa200ff),
                  const Color(0xffff00ee),
                  const Color(0xe0ff64f5)
                ],
                stops: [0.0, 0.611, 1.0],
              ),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
            child: Text("Become a Donor",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                )),
            alignment: Alignment.center,
          ),
          Container(
            padding: EdgeInsets.only(top: 52, left: 12, right: 10),
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.pink[50],
              Colors.blue[50],
              Colors.blue[100],
            ])),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(labelText: 'Enter your Name | Required*'),
                  ),
                  const SizedBox(height: 16.0),
                  DropdownButtonFormField(
                    hint: Text(
                      "Choose Blood Group | Required*",
                      style: TextStyle(color: Colors.red[900]),
                    ),
                    value: bloodgroupRaw,
                    onChanged: (newValue) {
                      setState(() {
                        bloodgroupRaw = newValue;
                        validator:
                        (value) => value == null ? 'field required' : null;
                      });
                    },
                    items: _bg.map((items_bg) {
                      return DropdownMenuItem(
                        child: new Text(items_bg),
                        value: items_bg,
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: addressController,
                    decoration:
                        InputDecoration(labelText: 'Enter your Address  | Required*'),
                  ),
                  const SizedBox(height: 16.0),
                  DropdownButtonFormField(
                    hint: Text("Choose Your Gender |  Required*"),
                    value: genderRaw,
                    onChanged: (newValue) {
                      setState(() {
                        genderRaw = newValue;
                        validator:
                        (value) => value == null ? 'field required' : null;
                      });
                    },
                    items: _sex.map((items) {
                      return DropdownMenuItem(
                        child: new Text(items),
                        value: items,
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(labelText: 'Enter your Mobile Number | Required*'),
                  ),
                  const SizedBox(height: 16.0),
                  TextField(
                    controller: cityController,
                    decoration:
                        InputDecoration(labelText: 'Enter Your Current City  | Required*'),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    "Last Blood or Plasma Donation? Leave Empty If Never",
                    style: TextStyle(color: Colors.green[500]),
                  ),
                  DateField(
                    onDateSelected: (DateTime value) {
                      setState(
                        () {
                          last_date_of_blood_donationRaw = value;
                        },
                      );
                    },
                    lastDate: DateTime.now(),
                    selectedDate: last_date_of_blood_donationRaw,
                  ),
                  const SizedBox(height: 5.0),
  
                  Container(
                    height: 20,
                    child: Text(
                      confirmation,
                      style: TextStyle(
                          color: Colors.red[500], fontWeight: FontWeight.bold),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () async {
                      setState(() {
                        confirmation = "You Are Missing Required Field!";
                      });
  
                      if (_formKey.currentState.validate()) {
                        final String name = nameController.text;
                        final String blood_group = bloodgroupRaw;
                        final String address = addressController.text;
                        final String gender = genderRaw;
                        final String phone_number = phoneController.text;
                        final String city = cityController.text;
                        final String last_date_of_blood_donation =
                            last_date_of_blood_donationRaw.toString();
                        if (name == "") {
                          setState(() {
                            confirmation = "Name Field is reqired!";
                          });
                        } else if (address == "") {
                          setState(() {
                            confirmation = "Address is reqired!";
                          });
                        } else if (gender == "") {
                          setState(() {
                            confirmation = "Gender is reqired!";
                          });
                        } else if (phone_number == "") {
                          setState(() {
                            confirmation = "Phone Number reqired!";
                          });
                        } else if (city == "") {
                          setState(() {
                            confirmation = "City is reqired!";
                          });
                        } else if (last_date_of_blood_donation == "") {
                          setState(() {
                            confirmation = "Last Date Reqired!";
                          });
                        } else {
                          final BecomeDonorModel bd = await createUser(
                              name,
                              blood_group,
                              last_date_of_blood_donation,
                              address,
                              phone_number,
                              city,
                              gender);

                          setState(() {
                            confirmation =
                                "Applied Successfully, We will contact you";
                          });
                        }
                      }

                      ///if
                    },
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Apply"),
                  ),
                  const SizedBox(height: 20.0),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
