import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class pageOne extends StatefulWidget {
  var postsdata;

  pageOne(this.postsdata);

  @override
  _pageOneState createState() => _pageOneState(this.postsdata);
}

class _pageOneState extends State<pageOne> {
  var postsdata;

  _pageOneState(this.postsdata);

  void customLaunchFun(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print(' could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      
      body: ListView(
         children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Center(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 20,
                    width: double.infinity,
                    child: Text(
                      "Donor Details",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                      fontSize: 17),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    color: Colors.blue[50],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("${postsdata['name']}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Divider(
                          color: Colors.black,
                        ),
                        Text(" Blood Group: ${postsdata['blood_group']}",style: TextStyle(color: Colors.red,fontSize: 20),),
                        Divider(),
                        Text("City: ${postsdata['city']},",style: TextStyle(fontSize: 20),),
                        Divider(),
                        Text("Address: ${postsdata['address']}",style: TextStyle(fontSize: 20)),
                        Divider(),
                        Text(
                            "Last Blood Donation: ${postsdata['last_date_of_blood_donation']}",style: TextStyle(fontSize: 20)),
                        Divider(),
                        Text("Availavility : ${postsdata['available']}",style: TextStyle(fontSize: 20)),
                        Divider(),
                        
                        InkWell(
                            
                            onTap: () {
                              customLaunchFun('tel:${postsdata['phone_number']}');
                            },
                            child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.call,
                                      color: Colors.blue,
                                      size: 28,
                                    ),
                                    Text(
                                      " ${postsdata['phone_number']}",style: TextStyle(color: Colors.blue[900],fontSize: 22),
                                    )
                                  ],
                                ),
                              
                            ),
                        Divider(                    color: Colors.black,
                        ),
                        Container(
                          height: 50,
                          width: 110,
                          margin: EdgeInsets.only(top: 60),
                          child: RaisedButton(
                            child: Text("Back"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            color: Colors.blueGrey,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
