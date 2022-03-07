import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/general/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';



class MobileHomePage extends StatefulWidget {
  @override
  _MobileHomePageState createState() => _MobileHomePageState();
}

class _MobileHomePageState extends State<MobileHomePage> {
  ScrollController _controller;  
  bool isOnALaptop = false;
  
  @override  
  void initState() {  
      //Initialize the  scrollController  
      _controller = ScrollController();
      String platorm = getPlatform();  
      if(platorm == 'mobile') {
        isOnALaptop = false;
      } else{
        isOnALaptop = true;
      }
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
    print(size.width);

    return Scaffold(
      backgroundColor: white(),
      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        color: white(),

        child: 
        
        
        
        isOnALaptop ?  //show the scroll part if this is on a laptop
        
        
        Scrollbar(
                isAlwaysShown: true,
                controller: _controller,
                showTrackOnHover: true,
                  child: SingleChildScrollView(
                    controller: _controller,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        


                              Align(
                                alignment: Alignment.topLeft,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                   
                                          MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            callShowSheetWidget(context, OtherCompany().companyAboutUs);
                          },
                                                                          child: Text(
                                                                            OtherCompany().nameInCoolForm,
                                                                            textScaleFactor: 1,
                                                                            textAlign: TextAlign.start,
                                                                                            style: TextStyle(
                                                                                                color: primaryColor,
                                                                                                fontSize: 24,
                                                                                                fontWeight: FontWeight.bold,
                                                                                                fontFamily: 'Noto',)
                                                                          ),
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


                              SizedBox(height: 32),



                        
                                  Text(
                                    GWD().mainGreetingText,
                                    textScaleFactor: 1,
                                                style: TextStyle(
                                                    color: black(),
                                                    fontSize: 22,
                                                    fontWeight: FontWeight.bold,
                                                    fontFamily: 'Noto',)
                                  ),

                                  SizedBox(height: 12),

                                  Text(
                                    GWD().websiteAbout,
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1,
                                                style: TextStyle(
                                                    color: black(),
                                                    fontSize: 16,
                                                    fontFamily: 'Noto',)
                                  ),

                                  SizedBox(height: 20),

                                  imagesSlider(context, GWD().imageUrls, GWD().imageDescriptions),

                                  SizedBox(height: 20),

                                  Text(
                                    GWD().subWebsiteAbout,
                                    textAlign: TextAlign.center,
                                    textScaleFactor: 1,
                                                style: TextStyle(
                                                    color: black(),
                                                    fontSize: 16,
                                                    fontFamily: 'Noto',)
                                  ),

                                   SizedBox(height: 20),


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
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                  child: TextField(
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
                                ),


                                SizedBox(height: 32),


                                classicButton('Give', () {
                                  intiatePayment(context, customAmount.text, OtherCompany().email);
                                }),

                                SizedBox(height: 20),


                                

                                          MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            callShowSheetWidget(context, MyCompany().companyAboutUs);
                          },
                          child: RichText(
                            textScaleFactor: 1,
                            textAlign: TextAlign.start,
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


                         SizedBox(height: 20),


                                Text('Verified by:',
                                    textScaleFactor: 1,
                                    style: TextStyle(
                                      color: black(),
                                      fontSize: 14,
                                      fontFamily: 'Noto',
                                    )),


                                SizedBox(height: 20),
                                
                                Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: GWD()
                                        .endorsedByNames
                                        .map((e) => endorsedByContainerMobile(
                                          context,
                                            e,
                                            GWD().endorsedByImageUrls[GWD()
                                                .endorsedByNames
                                                .indexOf(e)]))
                                        .toList(),
                                  ),
                                ),
                             


                                SizedBox(height: 70), //IMPORTANT TO PREVENT BUTTON BEING BLOcKED



                                 

                                ],
                              ),
                  ),

                            ),



                           



                           

                        
        )
        
        
        
        :
        
        
        
        SingleChildScrollView(
                    controller: _controller,
                  child: Padding(
            padding: EdgeInsets.all(10),
                              child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                


                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                           
                                  MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    callShowSheetWidget(context, OtherCompany().companyAboutUs);
                  },
                                                                  child: Text(
                                                                    OtherCompany().nameInCoolForm,
                                                                    textScaleFactor: 1,
                                                                    textAlign: TextAlign.start,
                                                                                    style: TextStyle(
                                                                                        color: primaryColor,
                                                                                        fontSize: 24,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontFamily: 'Noto',)
                                                                  ),
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


                      SizedBox(height: 32),



                
                          Text(
                            GWD().mainGreetingText,
                            textScaleFactor: 1,
                                        style: TextStyle(
                                            color: black(),
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Noto',)
                          ),

                          SizedBox(height: 12),

                          Text(
                            GWD().websiteAbout,
                            textAlign: TextAlign.center,
                            textScaleFactor: 1,
                                        style: TextStyle(
                                            color: black(),
                                            fontSize: 16,
                                            fontFamily: 'Noto',)
                          ),

                          SizedBox(height: 20),

                          imagesSlider(context, GWD().imageUrls, GWD().imageDescriptions),

                          SizedBox(height: 20),

                          Text(
                            GWD().subWebsiteAbout,
                            textAlign: TextAlign.center,
                            textScaleFactor: 1,
                                        style: TextStyle(
                                            color: black(),
                                            fontSize: 16,
                                            fontFamily: 'Noto',)
                          ),

                           SizedBox(height: 20),


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
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: TextField(
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
                        ),


                        SizedBox(height: 32),


                        classicButton('Give', () {
                          intiatePayment(context, customAmount.text, OtherCompany().email);
                        }),

                        SizedBox(height: 20),


                        

                                  MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    callShowSheetWidget(context, MyCompany().companyAboutUs);
                  },
                  child: RichText(
                    textScaleFactor: 1,
                    textAlign: TextAlign.start,
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


                 SizedBox(height: 20),


                        Text('Verified by:',
                            textScaleFactor: 1,
                            style: TextStyle(
                              color: black(),
                              fontSize: 14,
                              fontFamily: 'Noto',
                            )),


                        SizedBox(height: 20),
                        
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: GWD()
                                .endorsedByNames
                                .map((e) => endorsedByContainerMobile(
                                  context,
                                    e,
                                    GWD().endorsedByImageUrls[GWD()
                                        .endorsedByNames
                                        .indexOf(e)]))
                                .toList(),
                          ),
                        ),
                     


                        SizedBox(height: 70), //IMPORTANT TO PREVENT BUTTON BEING BLOcKED



                         

                        ],
                      ),
          ),
        ),
      )
    );
  }
}