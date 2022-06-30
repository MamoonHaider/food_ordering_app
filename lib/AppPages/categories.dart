import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:restaurant_user/getAllLists/getAllLists..dart';
import 'package:restaurant_user/TemplateClasses/getTemplates.dart';

class categoriesPage extends StatefulWidget {
  const categoriesPage({Key? key}) : super(key: key);

  @override
  State<categoriesPage> createState() => _categoriesPageState();
}

class _categoriesPageState extends State<categoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: getTemplates().getNavDrawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        shadowColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          'Categories',
          textAlign: TextAlign.center,
        ),
        leading: getTemplates().getIconButton(
            Icon(Icons.menu, color: Color.fromARGB(255, 0, 0, 0))),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(9, (index) {
          return Expanded(
            child: getTemplates().getCategoriesCard(
                getAllLists().imageList[index],
                getAllLists().categoryNameList[index]),
          );
        }),
      ),
    );
  }
}

//       body: Column(
//         children: [
//           Container(
//             child: Expanded(
//               child: ListView.builder(
//                 // shrinkWrap: true,
//                 scrollDirection: Axis.vertical,
//                 itemCount: 9,
//                 itemBuilder: (BuildContext context, int index) {
//                   // getCategoriesCard();
//                   // getCategoryproductCard();
//                   return getTemplates().getCategoriesCard(
//                       getAllLists().imageList[index],
//                       getAllLists().categoryNameList[index]);
//                 },
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
