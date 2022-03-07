import 'package:donationpage/general/allExports.dart';
import 'package:donationpage/models/sectionalText.dart';

//other company

class OtherCompany{

String nameInCoolForm = 'the Potter\'s Planet';
String nameInProfessionalForm = 'The Potter\'s Planet';

String relatedCompanyNameInProfessionalForm = 'The Stone Church';
String email = 'pottersplanet@gmail.com';

List<SectionalText> companyAboutUs = [
   SectionalText(header: 'The Potter\'s Planet', subHeader: 'Teenage Church', text: sectionalTextOptions('text', '''We're the young people of the Word Alive Ministries International (a.k.a The Stone Church) family, our age bracket is 11-18, and our amiable Teenage Church Senior Pastor is Pastor Mrs. Adediran. We gather together to worship on Sundays and we learn God's word in Bible study on Wednesdays. We have various ways of expressing our love and passion for God as young people and we aim to make positive differences in the lives of everyone around us. We love God. We love you. You're welcome to the Teenage Church of The Stone Church.''')),
   SectionalText(header: 'Contact Details', subHeader: 'Email', text: sectionalTextOptions('email', 'pottersplanet@gmail.com')),
   SectionalText(header: 'Upcoming Events', subHeader: 'Dynafest 2021', text: sectionalTextOptions('text', '''Dynafest is the annual convention of the Teenage Church of the Stone Church. It's that one time in the year when teenagers from all branches of the Stone Church can come together to worship and praise the Lord in our dynamic, exuberant and energetic teenage fashion. Dynafest is usually a three day program, running from Friday through Sunday and it's usually held in August. So much goes into planning a huge program like Dynafest; time, effort, money and prayers. We need all the help we can get from God, our parents, other benefactors and well-wishers to make Dynafest happen! Trust us, you absolutely do not want to miss Dynafest. There's going to be dance, drama, musical ministrations, sports and games and so much more! It will be epic!\n\nPlease join us and give towards Dynafest. We appreciate everything.''')),
   SectionalText(header: '...', subHeader: 'Opera 2021', text: sectionalTextOptions('text', '''Opera is a concert-like program for the Potter's Planet of The Stone Church. The Potter's Planet is the general name for all children and teenagers in the Stone Church, and Opera is a Christmas themed concert to celebrate the birth of our Lord and Savior Jesus Christ.  Features of Opera include: Drama, Music, Dance, Carols, Gift sharing and more! Join us and let's make Opera a success by praying together with us and also giving to us. God bless you as you do. \n\n\nGod bless you all, thank you. We look forward to seeing you at both Dynafest and Opera, 2021.''')),
   
];


}




//my company

class MyCompany{

String nameInCoolForm = 'Triplex Creativity';
String nameInProfessionalForm = 'Triplex Creativity';
String email = 'olaoluwaadeyemo7@gmail.com';

List<SectionalText> companyAboutUs = [
   SectionalText(header: 'Triplex Creativity', subHeader: 'Software Development Company', text: sectionalTextOptions('text', '''Triplex Creativity is a Software Development Company based in Oyo State, Nigeria.\n\nWe specialize in the development of websites and mobile applications.''')),
   SectionalText(header: 'Contact Details', subHeader: 'Email', text: sectionalTextOptions('email', 'olaoluwaadeyemo7@gmail.com')),
];

}




//general website info

class GWD{ //GeneralWebsiteData

String mainGreetingText = 'Welcome 💖';
String websiteAbout = 'This is the fund raising website of the Teenage Church of the ${OtherCompany().relatedCompanyNameInProfessionalForm}';
String subWebsiteAbout = 'Help the teenagers of the ${OtherCompany().relatedCompanyNameInProfessionalForm} raise funds for their upcoming events:\nDynafest & Opera 2021';

String paystackTestPublicApiKey = 'pk_live_14b92120a75df79918d0a3f4ba9f1b23fa1df9ba';
String paystackTestSecretApiKey = 'sk_test_75f78f971062a7a0fceb3733662dc368dd67fe43';

String currencySymbol = '₦';
List<int> quickDonateAmounts = [
  1000,
  2000,
  5000,
  7500,
  10000
];

//endorsedByNames & endorsedByImageUrls need to be in the same other

List<String> endorsedByNames = [
  'The Stone Church',
  'The Potter\'s Planet',
];

List<String> endorsedByImageUrls = [
  // 'https://cors.bridged.cc/' + 'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/stone%20church%20logo.jpg?alt=media&token=cc108253-f4fe-411c-8d10-654a84a1a79e',
  // 'https://cors.bridged.cc/' + 'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210428-WA0015.jpg?alt=media&token=77fe4e67-d76f-4d7b-82aa-dafdf9d6a425',

  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/stone%20church%20logo.jpg?alt=media&token=cc108253-f4fe-411c-8d10-654a84a1a79e',
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210428-WA0015.jpg?alt=media&token=77fe4e67-d76f-4d7b-82aa-dafdf9d6a425',
];

List<String> randomEmojies = [
  '💞',
  '💖',
  '😆',
  '🥺',
  '🥭',
  '🧸',
  '💰',
  '💸',
  '🤗',
  '🙏',
  '🍋',
  '🦄',
  '✨',
  '✔️',
  '👍',
  '🥰',
  '💡',
];


List<String> imageUrls = [
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210508-WA0012.jpg?alt=media&token=af74bb6d-11c1-472e-b6dd-89ab9b2f297a',
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210508-WA0015.jpg?alt=media&token=a8f2e657-f0be-4ef7-b5ae-7209aebc0074',
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210508-WA0016.jpg?alt=media&token=0c039212-8305-4de7-bf38-43cf79f085b7',
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/IMG-20210508-WA0017.jpg?alt=media&token=199722dd-df0c-408e-adb9-23056b66d750',
  'https://firebasestorage.googleapis.com/v0/b/pottersdonate.appspot.com/o/2f7bffa5a34a470b9b8425b67ff83b23.jpg?alt=media&token=a7cc69af-56b4-43e9-b4cb-442ce2a9bd93',
  
];

List<String> imageDescriptions = [
  'Teenagers learning from an interesting Sunday Sermon\n~ Photo taken: April 2021',
  'The Out of the Dawn(Choir) ministering beautifully \n~ Photo taken: April 2021',
  'Teenagers learning from an exciting Sunday Sermon\n~ Photo taken: April 2021',
  'Pastor Adesola Olumide preaching the Word of GOD to the teenagers\n~ Photo taken: April 2021',
  'A few teens having fun after the Service\n~ Photo taken: June 2021',

  
];

}



