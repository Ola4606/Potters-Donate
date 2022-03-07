import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/general/functions.dart';
import 'package:donationpage/pages/homePage/desktop.dart';
import 'package:donationpage/pages/homePage/mobile.dart';

TextEditingController customAmount = TextEditingController();
Function refresh;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    customAmount.addListener(() {


       if(customAmount.text.length == 0) {
              //just to avoid that error
       } else if(int.parse(customAmount.text) > 1000000) {
          showSnackLong(context, 'Oops, seems like you want to give more than a million naira, please could you break it down into multiple payments, due to the fact that our payment processor cannot handle so much money at once.\nThank You. 💞', true);
       } else{
         setState(() {
           
         });
       }


    });
  }
  @override
  Widget build(BuildContext context) {

    refresh = () {
      setState(() {
        
      });
    };

    if(MediaQuery.of(context).size.width > 1200) {
       return DesktopHomePage();
    } else{
       return MobileHomePage();
    }
  }
}