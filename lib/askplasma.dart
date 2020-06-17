import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plasma/page1.dart';

class DashBoard extends StatefulWidget {
  var getgroup;

  DashBoard(this.getgroup);

  @override
  _DashBoardState createState() => _DashBoardState(this.getgroup);
}

class _DashBoardState extends State<DashBoard> {
  var getgroup;

  _DashBoardState(this.getgroup);

  List posts;

  String serviceURL;

  Future<bool> _getPosts() async {
    if (getgroup == 'apositive') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'anegative') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'bpositive') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'bnegative') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'abpositive') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'abnegative') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'opositive') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }
    if (getgroup == 'onegative') {
      serviceURL = "PLEASE CONTACT FOR API LINK";
    }

    var response = await http.get(serviceURL);
    setState(() {
      posts = json.decode(response.body.toString());
    });
    return true;
  }

  void initState() {
    super.initState();
    this._getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plasma Donors"),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: 20,
            width: double.infinity,
            child: Text(
              "Blood Group and Donor Name",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
            decoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.only(top: 20, bottom: 50),
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10),
              itemCount: posts?.length ?? 0,
              itemBuilder: (BuildContext context, int nth) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      title: Text('' + posts[nth]["name"],style: TextStyle(color: Colors.black,fontSize: 20),),
                      subtitle: Text(posts[nth]["city"]+' | '+posts[nth]["available"],style: TextStyle(color: Colors.brown),),
                      onTap: () {
                        Route route1 = MaterialPageRoute(
                            builder: (context) => pageOne(posts[nth]));
                        Navigator.push(context, route1);
                      },
                    )
                  ],
                );
              },
            ),
          ),
          Divider(),
          Container(
            width: double.maxFinite,
            height: 220,
            margin: EdgeInsets.only(top: 565, bottom: 10),
            child: RaisedButton(
              child: Text("Back", style: TextStyle(fontSize: 20)),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.blue[300],
              textColor: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
