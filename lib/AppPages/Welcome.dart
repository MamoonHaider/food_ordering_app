import 'package:intro_slider/intro_slider.dart';
import 'package:flutter/material.dart';
// import 'package:restaurant_user/Theme Colors/colortheme.dart';
// import 'package:restaurant_user/Theme Colors/colortheme.dart';

// // import 'Welcome.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _IntroScreenCustomTabState();
}

class _IntroScreenCustomTabState extends State<WelcomeScreen> {
  List<Slide> slides = [];

  late Function goToTab;
  // final colortheme myColors = new colortheme();
  // final Color foregroungTextColor = Color.fromARGB(255, 0, 0, 0);
  // Color buttonTextColor = Color.fromARGB(255, 255, 255, 255);
  // Color icon_Button_color = Color.fromARGB(255, 253, 68, 12);
  // Color back = myColors.foregroungTextColor;
  @override
  void initState() {
    super.initState();

    slides.add(
      Slide(
        title: "Fresh Food",
        styleTitle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "images/food icon.png",
      ),
    );
    slides.add(
      Slide(
        title: "Easy Payment",
        styleTitle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "images/easy payment icon.png",
      ),
    );
    slides.add(
      Slide(
        title: "Fast Delievery",
        styleTitle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20.0,
          fontStyle: FontStyle.italic,
          fontFamily: 'Raleway',
        ),
        pathImage: "images/fast delievery icon.png",
      ),
    );
  }

  void onDonePress() {
    // Back to the first tab
    Navigator.pushNamed(context, '/signup');
  }

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
    // log("onTabChangeCompleted, index: $index");
  }

  // Widget renderNextBtn() {
  //   return const Icon(
  //     Icons.navigate_next,
  //     color: Color.fromARGB(255, 214, 0, 0),
  //     size: 35.0,
  //   );
  // }

  // Widget renderDoneBtn() {
  //   return const Icon(
  //     Icons.done,
  //     color: Color.fromARGB(255, 170, 18, 13),
  //   );
  // }

  Widget renderSkipBtn() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
          padding: const EdgeInsets.only(right: 5.0, top: 0),
          child: SizedBox(
            width: 50,
            height: 25,
            child: RaisedButton(
              textColor: Colors.white,
              color: Color.fromARGB(255, 214, 0, 0),
              onPressed: () => {onDonePress()},
              child: Text("Skip"),
            ),
          )),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
      backgroundColor:
          MaterialStateProperty.all<Color>(Color.fromARGB(51, 197, 64, 12)),
      overlayColor:
          MaterialStateProperty.all<Color>(Color.fromARGB(51, 155, 50, 18)),
    );
  }

//Slide Widget Tree
  List<Widget> renderListCustomTabs() {
    return List.generate(
      slides.length,
      (index) => SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: const EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              renderSkipBtn(),
              GestureDetector(
                child: Image.asset(
                  slides[index].pathImage!,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              ),
              Container(
                width: 100,
                height: 100,
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].title!,
                  style: slides[index].styleTitle,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                child: Text(
                  slides[index].description ?? '',
                  style: slides[index].styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      // Skip button
      // navPosition: IntroSliderNavPosition.top,
      // renderSkipBtn: renderSkipBtn(),

      // skipButtonStyle: myButtonStyle(),

      // // // Next button
      // renderNextBtn: renderNextBtn(),
      // nextButtonStyle: myButtonStyle(),

      // // // Done button
      // renderDoneBtn: renderDoneBtn(),
      // onDonePress: onDonePress,
      // doneButtonStyle: myButtonStyle(),

      // Dot indicator

      showDotIndicator: true,
      colorActiveDot: Color.fromARGB(255, 0, 0, 0),
      colorDot: Color.fromARGB(255, 255, 6, 6),
      sizeDot: 8.0,
      typeDotAnimation: DotSliderAnimation.DOT_MOVEMENT,

      // Tabs
      listCustomTabs: renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: const BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: onTabChangeCompleted,
    );
  }
}

class colortheme {
  // Color foregroungTextColor() {
  //   return Color.fromARGB(255, 0, 0, 0);
  // } //
  // Color buttonTextColor = Color.fromARGB(255, 255, 255, 255);
  // Color icon_Button_color = Color.fromARGB(255, 253, 68, 12);
  // colortheme() {
  Color foregroungTextColor = Color.fromARGB(255, 0, 0, 0);
  Color buttonTextColor = Color.fromARGB(255, 255, 255, 255);
  Color icon_Button_color = Color.fromARGB(255, 253, 68, 12);

  // Color buttonTextColor() {
  //   return Color.fromARGB(255, 255, 255, 255);
  // }

  // Color icon_Button_color() {
  //   return Color.fromARGB(255, 253, 68, 12);
  // }
}
