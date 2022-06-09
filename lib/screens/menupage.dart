import 'package:flutter/material.dart';

class MenuItems {
  static const books = ItemForMenu("Books", Icons.book);
  static const liked = ItemForMenu("Liked", Icons.favorite);
  static const write = ItemForMenu("Publish", Icons.edit_note);
  static const help = ItemForMenu("Help", Icons.help);
  static const rate_us = ItemForMenu("Rate Us", Icons.star_border);

  static const all = <ItemForMenu>[books, liked, write, help, rate_us];
}

class ItemForMenu {
  final String title;
  final IconData icon;

  const ItemForMenu(this.title, this.icon);
}

class MenuPage extends StatelessWidget {
  final ItemForMenu currentItem;
  final ValueChanged<ItemForMenu> onSelectedItem;
  const MenuPage({
    Key? key,
    required this.currentItem,
    required this.onSelectedItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.indigo,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Spacer(
              flex: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1,
                    width: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/fem1.jpg"),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.height * 0.15,
                    child: Center(
                      child: Text(
                        'Asa Adegbite',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ...MenuItems.all.map(buildMenuItem).toList(),
            Spacer(
              flex: 9,
            ),
          ],
        )),
      );

  Widget buildMenuItem(ItemForMenu item) => ListTile(
        selected: currentItem == item,
        selectedTileColor: Colors.black12,
        minLeadingWidth: 20,
        leading: Icon(
          item.icon,
          color: Colors.white,
        ),
        title: Text(
          item.title,
          style: TextStyle(color: Colors.white),
        ),
        onTap: () => onSelectedItem(item),
      );
}
