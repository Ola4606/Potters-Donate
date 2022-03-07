import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/general/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

class DesktopHomePage extends StatefulWidget {
  @override
  _DesktopHomePageState createState() => _DesktopHomePageState();
}

class _DesktopHomePageState extends State<DesktopHomePage> {
  ScrollController _controller;

  @override
  void initState() {
    //Initialize the  scrollController
    _controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  height: double.infinity,
                  width: size.width / 2,
                  color: primaryColor,
                ),
                Container(
                    height: double.infinity,
                    width: size.width / 2,
                    color: Colors.white),
              ],
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            callShowSheetWidget(context, OtherCompany().companyAboutUs);
                          },
                                          child: Text(OtherCompany().nameInCoolForm,
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: white(),
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Noto',
                          )),
                        ),
                    ),


                       MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            callShowSheetWidget(context, OtherCompany().companyAboutUs);
                          },
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                             children: [
                    Text('About Us',
                          textScaleFactor: 1,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Noto',
                          )),

                          SizedBox(width: 5),

                          Icon(CupertinoIcons.info, size: 15, color: primaryColor,)
                  ],
                ),
                        ),
                        ),
                  ],
                ),
              ),
            ),

            

            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.all(32),
                  child: Container(
                    width: (size.width) / 3.2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 70),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(GWD().mainGreetingText,
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        color: white(),
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Noto',
                                      )),
                                  SizedBox(height: 7),
                                  Text(GWD().websiteAbout,
                                      textScaleFactor: 1,
                                      style: TextStyle(
                                        color: white(),
                                        fontSize: 16,
                                        fontFamily: 'Noto',
                                      )),
                                  SizedBox(height: 14),
                                  imagesSlider(context, GWD().imageUrls, GWD().imageDescriptions),
                                ]),
                          ),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Verified by:',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: white(),
                                      fontSize: 16,
                                      fontFamily: 'Noto',
                                    )),
                                SizedBox(height: 7),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: GWD()
                                      .endorsedByNames
                                      .map((e) => endorsedByContainerDesktop(
                                        context,
                                          e,
                                          GWD().endorsedByImageUrls[GWD()
                                              .endorsedByNames
                                              .indexOf(e)]))
                                      .toList(),
                                ),
                              ])
                        ],
                      ),
                    ),
                  )),
            ),

            

            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.all(32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Icon(
                    //   Icons.copyright,
                    //   color: Colors.grey,
                    //   size: 24,
                    // ),

                    // SizedBox(
                    //   width: 8,
                    // ),

                    MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            callShowSheetWidget(context, MyCompany().companyAboutUs);
                          },
                          child: RichText(
                            textScaleFactor: 1,
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Made by ',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 14,
                                    fontFamily: 'Noto',
                                  )),
                              TextSpan(
                                  text: 'Triplex Creativity',
                                  style: TextStyle(
                                    color: primaryColor,
                                    fontSize: 14,
                                    decorationColor: primaryColor,
                                    decoration: TextDecoration.underline,
                                    fontFamily: 'Noto',
                                  )),
                            ]),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(size.height > 770
                  ? 64
                  : size.height > 670
                      ? 32
                      : 16),
              child: Center(
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                  ),
                  child: Container(
                    height: size.height *
                        (size.height > 770
                            ? 0.7
                            : size.height > 670
                                ? 0.8
                                : 0.9),
                    width: 500,
                    color: Colors.white,
                    child: Center(
                      child: Scrollbar(
                        isAlwaysShown: true,
                        controller: _controller,
                        showTrackOnHover: true,
                        child: SingleChildScrollView(
                          controller: _controller,
                          child: Padding(
                            padding: EdgeInsets.all(40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("GIVE",
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: Colors.grey[700],
                                      fontSize: 18,
                                      fontFamily: 'Noto',
                                    )),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 30,
                                  child: Divider(
                                    color: primaryColor,
                                    thickness: 2,
                                  ),
                                ),
                                SizedBox(
                                  height: 32,
                                ),
                                Text(GWD().subWebsiteAbout,
                                    textScaleFactor: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black87(),
                                      fontSize: 16,
                                      fontFamily: 'Noto',
                                    )),
                                SizedBox(height: 7),
                                Text('How much do you want to give?',
                                    textScaleFactor: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black87(),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Noto',
                                    )),

                                    SizedBox(
                          height: 32,
                        ),

                         RichText(
                                textScaleFactor: 1,
                                text: TextSpan(children: [

                                  TextSpan(
                                    text: '₦ ',
                                    style:
                                       TextStyle(
                                      color: primaryColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lato',)
                                  ),


                                  TextSpan(
                                    text: customAmount.text.isEmpty ? '0' : customAmount.text,
                                    style:
                                       TextStyle(
                                      color: customAmount.text.isEmpty ? Colors.black12.withOpacity(0.1) : primaryColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Lato',)
                                  ),

                                ]),
                              ),

                        SizedBox(
                          height: 32,
                        ),
                        
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: GWD().quickDonateAmounts.map((e) {
                                      var newList = GWD().randomEmojies;
                                      newList
                                          .shuffle(); //shuffles the list for different emoji each time
                                      return quickAmountButton(
                                          customAmount.text == e.toString(),
                                          e.toString(),
                                          newList[0], () {
                                        
                                          customAmount.text = e.toString();
                                       
                                      });
                                    }).toList()),
                                SizedBox(height: 7),
                                Text('or',
                                    textScaleFactor: 1,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: black87(),
                                      fontSize: 16,
                                      fontFamily: 'Noto',
                                    )),
                                SizedBox(height: 7),
                                TextField(
                                  controller: customAmount,
                                  keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly
], 
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontFamily: 'Noto',
                                  ),
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    hintText: 'Enter price manually',
                                    labelText: 'Custom Amount',
                                    suffixIcon: Icon(
                                      Icons.money,
                                      size: 17,
                                    ),
                                    
                                  ),
                                  maxLength: 7,
                                ),
                                SizedBox(height: 32),
                                classicButton('Give', () {
                                  intiatePayment(context, customAmount.text, OtherCompany().email);
                                }),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
