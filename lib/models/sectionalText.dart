import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/general/functions.dart';
import 'package:flutter/rendering.dart';

class SectionalText{

 String header;
 String subHeader;
 Widget text;

 SectionalText({
   this.header,
   this.subHeader,
   this.text,
 });

 

}

Widget sectionalTextOptions(String thisIs, String text) {

  if(thisIs == 'text') {

    return Text(text,
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        color: black87(),
                                        fontSize: 16,
                                        fontFamily: 'Noto',
                                      ));

  } else {

    return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            sendMailto(text);
                          },
          child: Text(text,
                                        textScaleFactor: 1,
                                        style: TextStyle(
                                          color: primaryColor,
                                          fontSize: 16,
                                          fontFamily: 'Noto',
                                        )),
                        ),
    );

  }

}