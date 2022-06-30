import 'package:flutter/material.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';

class getTemplates {
  IconButton getIconButton(Icon icon) {
    return IconButton(onPressed: () => {}, icon: icon);
  }

  Widget getCategoryproductCard(
      String imgPath, String productName, String productPrice) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Colors.black,
          width: 0.3,
        ),
      ),
      child: new InkWell(
        onTap: () {
          // color: Colors.deepOrangeAccent,
          //   backgroundColor:
          //   Color.fromARGB(255, 255, 17, 0);
        },
        child: Column(
          children: [
            Container(
              constraints: new BoxConstraints.expand(
                width: 400,
                height: 100.0,
              ),
              padding:
                  new EdgeInsets.only(left: 16.0, bottom: 8.0, right: 16.0),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage(imgPath),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Stack(
                children: <Widget>[
                  new Positioned(
                    right: 0.0,
                    bottom: 0.0,
                    child: new Text(productPrice,
                        style: new TextStyle(
                          backgroundColor: Color.fromARGB(255, 255, 17, 0),
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                        )),
                  ),
                  new Positioned(
                    right: 0.0,
                    top: 0.0,
                    child: getIconButton(
                      Icon(
                        Icons.favorite_border,
                        color: Color.fromARGB(255, 255, 17, 0),
                      ),
                      // color: Color.fromARGB(255, 255, 17, 0),
                    ),
                    // child: new Icon(
                    //   Icons.favorite_border,
                    //   color: Color.fromARGB(255, 255, 17, 0),
                    // ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 5),
                    child: Text(productName),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile listTileTemplate(
    Icon icon,
    Text text,
    // CallbackAction callback1,
  ) {
    return ListTile(
      leading: icon,
      title: Row(
        children: [
          SizedBox(width: 142, child: text),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 0.0),
                child: Icon(
                  Icons.navigate_next_outlined,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ],
          ),
        ],
      ),
      onTap: () => {
        // Navigator.pushNamed(context, '/homePage'),
      },
    );
  }

  Widget getDivider() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Divider(
        color: Colors.black,
        thickness: 0.5,
      ),
    );
  }

  Widget GetCarouselSlider() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/chicken sticks.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                // width: 180,
                // height: 180,
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/chicken sticks.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(1.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: AssetImage(
                      'images/chicken sticks.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 150.0,

              // width:180,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 0,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  Widget getCategoriesCard(String imgPath, String categoryName) {
    return SizedBox(
      //size of icon in card
      width: 70,
      height: 40,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.black,
            width: 0.3,
          ),
        ),
        child: new InkWell(
          onTap: () {
            // color: Colors.deepOrangeAccent,
            //   backgroundColor:
            //   Color.fromARGB(255, 255, 17, 0);
          },
          // child: GestureDetector(onTap: () => {}),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SizedBox(
                  child: SizedBox(
                    //size of the image
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage(
                        imgPath,
                      ),
                    ),
                  ),
                ),
              ),
              Text(categoryName),
            ],
          ),
        ),
      ),
    );
  }

  Widget getNavDrawer() {
    return Container(
      width: 250,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.all(0),
          children: <Widget>[
            DrawerHeader(
              child: Text(
                '',
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 25),
              ),
              decoration: BoxDecoration(
                // color: Color.fromARGB(255, 255, 255, 255),
                image: DecorationImage(
                  // fit: BoxFit.fill,
                  // pathImage: "images/fast delievery icon.png",
                  image: AssetImage(
                    'images/logo icon.png',
                  ),
                ),
              ),
            ),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('Home')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.category_rounded,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('Categories')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.library_books_outlined,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('My Orders')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.favorite_outline_rounded,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('Favourite List')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.star_border_rounded,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('Rating & Reviews')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.wallet_sharp,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('My Wallet')),
            getTemplates().listTileTemplate(
                Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 255, 0, 0),
                ),
                Text('Settings')),
            getTemplates().getDivider(),
          ],
        ),
      ),
    );
  }
}
