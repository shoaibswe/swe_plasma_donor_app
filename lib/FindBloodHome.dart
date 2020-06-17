import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plasma/askplasma.dart';
class FindBloodHome extends StatefulWidget {
  FindBloodHome({
    Key key,
  }) : super(key: key);

  @override
  _FindBloodHomeState createState() => _FindBloodHomeState();
}

var getgroup;
class _FindBloodHomeState extends State<FindBloodHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          
          Container(
            width: 360.0,
            height: 95.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-1.57, -3.3),
                end: Alignment(0.0, 1.0),
                colors: [
                  const Color(0xffff0707),
                  const Color(0xffb300f4),
                  const Color(0xffb000ff)
                ],
                stops: [0.0, 1.0, 1.0],
              ),
              border: Border.all(width: 1.0, color: const Color(0xff707070)),
            ),
          ),
          
          
          Transform.translate(
            offset: Offset(65.0, 51.0),
            child: Text(
              'Choose Blood Group',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 25,
                color: const Color(0xffffffff),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(35.0, 165.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='apositive'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text(
                  'A +',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff9675cc),
                ),
              ),
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(35.0, 328.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='abpositive'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text(
                  'AB +',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffed7425),
                ),
              ),
            ),
          ),
          
          
          Transform.translate(
            offset: Offset(35.0, 248.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='bpositive'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text(
                  'B +',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff34b66b),
                ),
              ),
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(200.0, 328.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='abnegative'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'AB ',
                      ),
                      TextSpan(
                        text: '-',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xfff7bc20),
                ),
              ),
            ),
          ),
          
          
          Transform.translate(
            offset: Offset(35.0, 411.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='opositive'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text(
                  'O +',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: const Color(0xff000000),
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff65d3e3),
                ),
              ),
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(200.0, 410.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='onegative'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'O ',
                      ),
                      TextSpan(
                        text: '-',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff1b74b6),
                ),
              ),
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(200.0, 165.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='anegative'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xff000000),
                    ),
                    children: [
                      TextSpan(
                        text: 'A ',
                      ),
                      TextSpan(
                        text: '-',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xffceb0ff),
                ),
              ),
            ),
          ),
          
          
          
          Transform.translate(
            offset: Offset(200.0, 249.0),
            child: InkWell(
              onTap: () {
                Route route = MaterialPageRoute(builder: (context)=>DashBoard(getgroup='bnegative'));
                Navigator.push(context, route);
              },
              child: Container(
                padding: EdgeInsets.only(top: 15,left: 5),
                child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 20,
                    color: const Color(0xffffffff),
                  ),
                  children: [
                    TextSpan(
                      text: 'B ',
                    ),
                    TextSpan(
                      text: '-',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
                width: 130.0,
                height: 55.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: const Color(0xff0b9d32),
                ),
              ),
            ),
          ),

      
      
          
          Transform.translate(
            offset: Offset(0.0, 690.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "DIU Plasma | Save Life",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              width: 360.0,
              height: 33.0,
              decoration: BoxDecoration(
                color: const Color(0xff650202),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          
          Container(
            height: 40,
            width: 100,
            margin: EdgeInsets.only(top: 600, left: 135),
            child: RaisedButton(
              child: Text("Back"),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.white,
              textColor: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
          )
        ],
      ),
    );
  }
}
