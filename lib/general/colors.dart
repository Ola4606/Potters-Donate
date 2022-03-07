import 'allExports.dart';


//all app colors come from here cause of the use of dark and light mode in this app

bool isLightMode = true;

Color mordernWhite = Color.fromRGBO(240, 243, 248, 1);


Color primaryColorMaterial = Colors.blue;
Color primaryColor = Colors.blue;

// for main app
black38() {
  return isLightMode ? Colors.black38 : Colors.grey;
}

black54() {
  return isLightMode ? Colors.black54 : Colors.grey;
}

black87() {
  return isLightMode ? Colors.black87 : Colors.grey;
}

black() {
  return isLightMode ? Colors.black : Colors.white;
}

white() {
  return isLightMode ? Colors.white : Colors.black;
}

red() {
  return Colors.red;
}