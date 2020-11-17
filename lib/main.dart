import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model.dart';
void main () {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var data=Data('lib/images/DAAL MONG.png','DAAL MONG','320');
  @override
  Widget build(BuildContext context) {
    var refHeight=MediaQuery.of(context).size.height;
    var refWidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 100, left: 10),
        height: refHeight*0.35,
        width: refWidth*0.40,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child:Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage('${data.image}'),
                  )
                ),
              )
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft:Radius.circular(8.00),
                                                        bottomRight: Radius.circular(8.00)),
                    ),
                child: Column(
                  children: [

                    Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        alignment:Alignment.topLeft,
                        child:  Text(
                          '${data.title} ',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 18,
                            color: const Color(0xFF000000),
                            fontWeight: FontWeight.w600,
                            ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          )
                      ),
                     Container(
                       margin: EdgeInsets.only(left: 10.00),
                        alignment: Alignment.topLeft,
                        child:  Text(
                          'RS ${data.price} ',
                          style: GoogleFonts.poppins(
                            textStyle: Theme.of(context).textTheme.display1,
                            fontSize: 18,
                            color: const Color(0xFFFF2121),
                            fontWeight: FontWeight.w600,
                            ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          )
                      ),
                    Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.only(left: 10.00, top: 5.00),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),),
                      child: RaisedButton(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(
                                color: const Color(0xffFF2121), width: 2)),
                        child: Text(
                          'Add to Bag',
                          style: TextStyle(color: const Color(0xffFF2121)),
                          ),
                        onPressed: () {},
                        ),
                      ),


                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
