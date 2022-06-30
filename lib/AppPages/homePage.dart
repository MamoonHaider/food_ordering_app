import 'package:flutter/material.dart';

import 'package:restaurant_user/TemplateClasses/getTemplates.dart';
import 'package:restaurant_user/getAllLists/getAllLists..dart';
// import 'package:flutter_tutorials/widgets/nav-drawer.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  // var _scaffoldKey = new GlobalKey<ScaffoldState>();
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Flutterdrawer: NavDrawer()

      drawer: getTemplates().getNavDrawer(),

      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        shadowColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          "Restaurant",
          //  color: Color.fromARGB(255, 0, 0, 0),,
        ),
        leading: IconButton(
          onPressed: () => {},
          icon: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        actions: [
          getTemplates().getIconButton(
            Icon(
              Icons.location_on_outlined,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          getTemplates().getIconButton(
            Icon(
              Icons.search,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          getTemplates().getIconButton(
            Icon(
              Icons.shopping_cart,
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
              height: 150,
              width: 400,
              child: getTemplates().GetCarouselSlider()),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('Categories'),
              ),
              Spacer(),
              // Callback()
              // {

              // }
              getTemplates().getIconButton(Icon(Icons.menu_open_sharp)),
            ],
          ),
          // Spacer(),
          // SizedBox(
          //   height: 100,
          //   child: Padding(
          //     padding: const EdgeInsets.only(left: 8.0),
          //     child: Text("Categories"),
          //   ),
          // ),
          // // Spacer(),
          // SizedBox(
          //   height: 50,
          //   child: getIconButton(
          //     Icon(Icons.menu_open_sharp),
          //   ),
          // ),

          Container(
            width: 500,
            height: 500,
            child: Column(
              // mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 70, //height for categories box
                  child: Expanded(
                    child: ListView.builder(
                      // shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 9,
                      itemBuilder: (BuildContext context, int index) {
                        // getCategoriesCard();
                        // getCategoryproductCard();
                        return getTemplates().getCategoriesCard(
                            getAllLists().imageList[index],
                            getAllLists().categoryNameList[index]);
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    // scrollDirection: Axis.horizontal,
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      // getCategoriesCard();
                      // getCategoryproductCard();
                      return getTemplates().getCategoryproductCard(
                          getAllLists().startersList[index],
                          getAllLists().categoryNameList[index],
                          getAllLists().productPriceList[index]);
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
