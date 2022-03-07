import 'package:donationpage/general/allExports.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

int currentLinkIndex = 0;

Widget sliderImage(String mediaUrl) {
  return ClipRRect(
    borderRadius: BorderRadius.all(Radius.circular(9)),
    child: Container(
      height: 230,
      width: 350,
      child: cachedNetworkImage(mediaUrl),
    ),
  );
}

Widget sliderImageDescription(BuildContext context, String description) {
  return Container(
    height: 55,
    width: 350,
    child: Center(
      child: Text(
                                      description,
                                      textAlign: TextAlign.center,
                                      textScaleFactor: 1,
                                                  style: TextStyle(
                                                      color: MediaQuery.of(context).size.width > 1200 ? white() : Colors.blueGrey,
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.bold,
                                                      fontFamily: 'Noto',)
                                    ),
    ),
  );
}

Widget sliderItem(BuildContext context, String imageUrl, String imageDescription) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
       
       sliderImage(imageUrl),
       SizedBox(height: 5),
       sliderImageDescription(context, imageDescription)


    ],
  );
}

Widget imagesSlider(BuildContext context, List<String> imageList, List<String> imageDescription) {
  //widget the contains image slider and three dots (for decoration)
  return CarouselSlider(
    options: CarouselOptions(
        height: 350,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 6),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        // onPageChanged: (index, reason) {
        //   currentLinkIndex = index;
        //   refresh();
        // }
        ),
    items: imageList.map((i) {
      return sliderItem(context, i, imageDescription.elementAt(imageList.indexOf(i)));
    }).toList(),
  );
}

Widget individualDot(bool selected) {
  return Container(
    margin: EdgeInsets.only(left: 4),
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: selected ? Colors.white : Colors.black38),
    width: selected ? 12 : 10,
    height: selected ? 12 : 10,
  );
}

Widget threeDotsContainer() {
  return Container(
    width: 70,
    height: 70,
    child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: GWD().imageUrls.map((e) => individualDot(false)).toList()),
  );
}

loadingWave(BuildContext context, dynamic size, Color color) {
  return Center(
      child: SpinKitWave(
    color: primaryColor,
    size: size,
  ));
}

Widget cachedNetworkImage(String mediaUrl) {
  return CachedNetworkImage(
    imageUrl: mediaUrl,
    fit: BoxFit.cover,
    
    placeholder: (context, url) =>
        Center(child: loadingWave(context, 50, primaryColor)),
    errorWidget: (context, url, error) =>
        Text('Oops, there was an error loading the image 😢',
            textScaleFactor: 1,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 21,
              fontFamily: 'Noto',
            )),
        
  );
}

Widget cachedNetworkImageSmall(String mediaUrl) {
  return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(9)),
      child: CachedNetworkImage(
      imageUrl: mediaUrl,
      fit: BoxFit.cover,
      placeholder: (context, url) =>
          Center(child: loadingWave(context, 20, primaryColor)),
      errorWidget: (context, url, error) => Center(
        child: Text('',
            textScaleFactor: 1,
            style: TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontFamily: 'Noto',
            )),
      ),
    ),
  );
}

Widget cuteImageContainer(String mediaUrl) {
  return Container(
    height: 45,
    width: 45,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(9)),
    ),
    child: cachedNetworkImageSmall(mediaUrl),
  );
}

Widget cuteTextContainer(String text) {
  return Container(
    height: 45,
    child: Center(
      child: Text(text,
          textScaleFactor: 1,
          style: TextStyle(
            color: black(),
            fontSize: 14,
            fontFamily: 'Noto',
          )),
    ),
  );
}

Widget endorsedByContainerDesktop(BuildContext context, String name, String mediaUrl) {
  return Container(
    height: 45,
    width: 270,
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9)), color: white()),
    child: Center(
      child: Row(
        mainAxisAlignment: MediaQuery.of(context).size.width > 1200 ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cuteImageContainer(mediaUrl),
          SizedBox(width: 5),
          cuteTextContainer(name),
        ],
      ),
    ),
  );
}


Widget endorsedByContainerMobile(BuildContext context, String name, String mediaUrl) {
  return Container(
    height: 45,
    width: 270,
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9)), color: white()),
    child: Center(
      child: Row(
        mainAxisAlignment: MediaQuery.of(context).size.width > 1200 ? MainAxisAlignment.start : MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          cuteImageContainer(mediaUrl),
          SizedBox(width: 5),
          cuteTextContainer(name),
        ],
      ),
    ),
  );
}

Widget classicButton(String text, Function function) {
  return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          function();
        },
      child: Container(
      height: 40,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(9)),
          color: primaryColor),
          child: Center(
            child: Text(text,
                textScaleFactor: 1,
                style: TextStyle(
                  color: white(),
                  fontSize: 18,
                  fontFamily: 'Noto',
                )),
          ),
        ),
  ),
    );
  
}

Widget quickAmountButton(
    bool selected, String text, String randomEmoji, Function function) {
  return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          function();
        },
      child: Container(
      height: 45,
      width: 170,
      margin: EdgeInsets.only(top: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(9)),
        border: selected
            ? Border.all(color: primaryColor)
            : Border.all(color: Colors.grey[200]),
        color: selected ? Colors.blue[50] : white(),
      ),
      child: Center(
        child: Text(GWD().currencySymbol + text,
            textScaleFactor: 1,
            style: TextStyle(
              color: selected ? Colors.blueGrey : Colors.black87,
              fontSize: 16,
              fontFamily: 'Noto',
            )),
      ),
    ),
   )
  );
}
