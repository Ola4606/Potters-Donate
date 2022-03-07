import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/models/sectionalText.dart';
import 'dart:js' as js;
import 'package:universal_io/io.dart' as io;


intiatePayment(BuildContext context, String amount, String email) async{ //basically just call paystack api

// if(amount.length == 0) {

//   showSnackLong(context, 'Please input the amount you would like to give? 🥺', true);

// } else if(int.parse(amount) < 100) {

//   showSnackLong(context, 'Sorry the minimum amount is ₦100 🥺', true);

// }else{

//   js.context.callMethod("payWithPayStack", [email, double.parse(amount)]);

// }

showSnackLong(context, 'Sorry, you can\'t make payments now 🤗, this project has been shut down for now!!!!', true);



}

showSnackLong(BuildContext context, String text, bool shouldBeRed) {

  if(shouldBeRed) {

   showToast('Error\n$text',
                    context: context,
                    backgroundColor: red(),
                    textAlign: TextAlign.start,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Noto',
                      color: white(),
                    ),
                    animation: StyledToastAnimation.slideFromRightFade,
                    reverseAnimation: StyledToastAnimation.slideToRightFade,
                    toastHorizontalMargin: 0.0,
                    position: StyledToastPosition(
                    align: Alignment.topRight, offset: 20.0),
                    startOffset: Offset(1.0, 0.0),
                    reverseEndOffset: Offset(1.0, 0.0),
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 7),
                    curve: Curves.linearToEaseOut,
                    reverseCurve: Curves.fastOutSlowIn);
   
      
    } else {

      showToast('Info\n$text',
                    context: context,
                    textAlign: TextAlign.start,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Noto',
                      color: white(),
                    ),
                    animation: StyledToastAnimation.slideFromRightFade,
                    reverseAnimation: StyledToastAnimation.slideToRightFade,
                    toastHorizontalMargin: 0.0,
                    position: StyledToastPosition(
                    align: Alignment.topRight, offset: 20.0),
                    startOffset: Offset(1.0, 0.0),
                    reverseEndOffset: Offset(1.0, 0.0),
                    animDuration: Duration(seconds: 1),
                    duration: Duration(seconds: 7),
                    curve: Curves.linearToEaseOut,
                    reverseCurve: Curves.fastOutSlowIn);
   

    }
  
  
  
  
  
}

sendMailto(String email) async {
  final mailtoLink = Mailto(
    to: [email],
    cc: [''],
    subject: '',
    body: '',
  );
  // Convert the Mailto instance into a string.
  // Use either Dart's string interpolation
  // or the toString() method.
  await launch('$mailtoLink');
}



callShowSheetWidget(BuildContext context, List<SectionalText> sectionalText) { 

  return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: isLightMode ? Colors.white : Colors.grey[850],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.8,
          padding: EdgeInsets.all(7.7),
          child: SingleChildScrollView(
                      child: Wrap(
              children: [
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: sectionalText.map((section) {
                             return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [


                            section.header == '' ? 
                            
                            Container()
                            
                            :


                               Text(section.header,
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: black(),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Noto',
                                )),



                                Text(section.subHeader,
                                textScaleFactor: 1,
                                style: TextStyle(
                                  color: black54(),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Noto',
                                )),


                                section.text, //already implemented text widget

                               
                                SizedBox(height: 10),



                                 ],
                               );
                          }).toList()
                              ),



                          SizedBox(height: 70), //IMPORTANT TO PREVENT BUTTON BEING BLOcKED


                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        );
      });

}



String getPlatform(){

  if(io.Platform.isAndroid || io.Platform.isIOS) {
    return 'mobile';
  } else{
    return 'notMobile';
  }

}