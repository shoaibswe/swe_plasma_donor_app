import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plasma/FindBloodHome.dart';
import 'NeedHelpWidget.dart';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:plasma/donate.dart';
class AndroidMobile1 extends StatelessWidget {
  AndroidMobile1({
    Key key,
  }) : super(key: key);
 
  Widget build(BuildContext context) {
    return
      Scaffold(
      backgroundColor: const Color(0xffffffff),
      body:
      DoubleBackToCloseApp(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            
            child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(33.0, 360.0),
                    child: InkWell(
                      onTap: (){
                        Route r= MaterialPageRoute(builder: (context)=>plasmaDonate());
                        Navigator.push(context, r);
                      },
                      child:
                      
                      Container(
                        
                        width: 294.0,
                        height: 72.0,
                        child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Become a Donor',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 25,
                                color: const Color(0xffffdf00),
                              ),
                              textAlign: TextAlign.center,
                            ),
    
                            Container(
                              width: 30.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage('assets/images/plasmacontainer.png'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(54.0),
                          color: const Color(0xff055245),
                          border: Border.all(width: 1.0, color: const Color(0xff000000)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                        
                        
                        
                      ),
                    ),
                  ),
                  
                  
                  
                  
                  
                  
                  SvgPicture.string(
                    _svg_hde8kw,
                    allowDrawingOutsideViewBox: true,
                  ),
                  Transform.translate(
                    offset: Offset(0.0, 685.0),
                    child: InkWell(
                      onTap: (){
                        customLaunchFun('mailto:shoaibswe@gmail.com?cc=tawhidi.pro@gmail.com&subject=DIU%20Plasma%20App&body=Write%20your%20problem%20or%20query%20here..');
                      },
                      child: Container(
                        width: 373.0,
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: const Color(0xff330104),
                          border: Border.all(width: 1.0, color: const Color(0xff707070)),
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(100.0, 175.0),
                    child:
                        // Adobe XD layer: '6ff4fdae692c294a6f5…' (shape)
                        Container(
                      width: 155.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/yellowplasma.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(91.0, 175.0),
                    child:
                     
                        // Adobe XD layer: '26a16cbe6c24539d6fe…' (shape)
                        Container(
                      width: 180.0,
                      height: 111.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/twohand.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(130.0, 136.0),
                    child:
                        // Adobe XD layer: 'diu logo' (shape)
                        Container(
                      width: 100.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/diu.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(37.0, 495.0),
                    child: InkWell(
                      onTap: () {
                        Route r = MaterialPageRoute(builder: (context) => FindBloodHome());
                        Navigator.push(context, r);
                      },
                      child: Container(
                        width: 286.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(54.0),
                          color: const Color(0xff3b0552),
                          border:
                              Border.all(width: 1.0, color: const Color(0xff707070)),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  
                  Transform.translate(
                    offset: Offset(-10.0, 95.0),
                    child:
                        // Adobe XD layer: 'hand' (shape)
                        Container(
                      width: 135.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/hand.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),

                  Transform.translate(
                    offset: Offset(59.0, 60.0),
                    child:
                    // Adobe XD layer: '356-3568973_drop-go…' (shape)
                    Container(
                      width: 27.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/images/yb.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  
                  
                  
                  InkWell(
                    onTap: () {
                      Route r = MaterialPageRoute(builder: (context) => FindBloodHome());
                      Navigator.push(context, r);
                    },
                    child: Transform.translate(
                      offset: Offset(105.0, 517.0),
                      child: Text(
                        'Find Plasma',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 25,
                          color: const Color(0xffffdf00),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(145.0, 688.0),
                    child: InkWell(
                      onTap: (){
                        customLaunchFun( 'mailto:shoaibswe@gmail.com?cc=tawhidi.pro@gmail.com&subject=DIU%20Plasma%20App&body=Write%20your%20problem%20or%20query%20here..');
                      },
                      child: Text(
                        'Need Help ?',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: const Color(0xffffdf00),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  
                  InkWell(
                    onTap: () {
                      Route r = MaterialPageRoute(builder: (context) => FindBloodHome());
                      Navigator.push(context, r);
                    },
                    child: Transform.translate(
                      offset: Offset(268.0, 510.0),
                      child:
                          // Adobe XD layer: 'help' (shape)
                          Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage('assets/images/help.png'),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 12,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
          ),

        snackBar: const SnackBar(
          content: Text('Tap back again to Exit'),
        ),
        ),
      );
  }
}

const String _svg_hde8kw =
    '<svg viewBox="0.0 0.0 360.0 129.9" ><defs><linearGradient id="gradient" x1="0.5" y1="0.0" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ffff06cd"  /><stop offset="1.0" stop-color="#ff510707"  /></linearGradient></defs><path transform="translate(44.86, 34.82)" d="M -10.28116226196289 83.87863922119141 C -10.28116226196289 83.87863922119141 -3.340369462966919 83.36392211914063 10.56872844696045 79.9334716796875 C 24.47782897949219 76.50300598144531 25.29598426818848 79.24738311767578 38.38689422607422 75.81691741943359 C 51.477783203125 72.38644409179688 72.13695526123047 72.21504211425781 72.13695526123047 72.21504211425781 C 78.88694763183594 69.29914093017578 86.86421966552734 74.27332305908203 111.4096908569336 87.99518585205078 C 135.9551391601563 101.7170715332031 143.3187713623047 92.11174011230469 162.136962890625 87.99518585205078 C 180.9551239013672 83.87863922119141 164.5914916992188 69.47068786621094 186.6824188232422 63.29582977294922 C 208.7733306884766 57.1209716796875 201.40966796875 79.76209259033203 218.5915222167969 83.87863922119141 C 235.7733154296875 87.99518585205078 252.9551391601563 85.93691253662109 260.3187866210938 72.21504211425781 C 267.6824035644531 58.4931640625 284.0460205078125 51.63220977783203 294.6824340820313 57.1209716796875 C 305.3188171386719 62.6097297668457 315.1369323730469 63.29582977294922 315.1369323730469 63.29582977294922 L 315.1369323730469 -34.81560516357422 L -44.8630485534668 -34.81560516357422 L -44.8630485534668 87.99518585205078 L -10.28116226196289 83.87863922119141 Z" fill="url(#gradient)" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
