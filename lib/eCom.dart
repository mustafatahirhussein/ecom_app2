import 'package:ecom_app_extended/NavigationBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products {
  String pName, image, rating, reviewCount, piece, price, qty;

  Products(this.pName, this.image, this.rating, this.reviewCount, this.piece,
      this.price, this.qty);
}

class Categories {
  String category, itemTot;
  IconData iconData;

  Categories(
    this.category,
    this.itemTot,
    this.iconData,
  );
}

class CommerceUI extends StatefulWidget {
  @override
  _CommerceUIState createState() => _CommerceUIState();
}

class _CommerceUIState extends State<CommerceUI> {
  int index = 0;

  List<Products> list = [
    Products(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Note 20 Ultra',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Macbook Air',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Macbook Pro',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Gaming PC',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Macbook Air',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Iphone 12',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Gaming PC',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
    Products(
        'Macbook Pro',
        'https://liistudio.com/wp-content/uploads/2021/01/iphone-12-pro-og-202009-800x500.jpeg',
        '5.0',
        '23',
        '20',
        '\$90',
        '1'),
  ];

  List<Categories> catList = [
    Categories('Clothes', '5 Items', Icons.hourglass_bottom_sharp),
    Categories('Electronic', '15 Items', Icons.electric_moped),
    Categories('Appliances', '10 Items', Icons.settings_applications),
    Categories('Others', '5 Items', Icons.double_arrow),
  ];

  @override
  Widget build(BuildContext context) {
    var pages = [
      // loadProducts(list),
      buildAll(),
      loadProducts(list),
      loadProducts(list),
      loadProducts(list),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 3,
        title: Text(
          'Ecom App UI',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 25,
            ),
          ),
        ],
      ),
      body: pages[index],
      bottomNavigationBar: BottomNavBar(index),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search, size: 30),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }

  Widget buildAll() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildItem(),
          SizedBox(height: 10),
          Text(
            'More Categories',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          buildCategories(),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular Items',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text('View more',
                    style: TextStyle(fontSize: 14, color: Colors.deepPurple)),
              ],
            ),
          ),
          buildPopularItems(),
        ],
      ),
    );
  }

  Widget buildItem() {
    return Card(
      elevation: 2,
      child: Container(
        height: 387,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Items',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                Text('View more',
                    style: TextStyle(fontSize: 14, color: Colors.deepPurple)),
              ],
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    height: 387,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 6),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 270,
                          decoration: BoxDecoration(
                            // shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            image: DecorationImage(
                              image: NetworkImage(list[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list[index].pName,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.star, color: Colors.yellow),
                                  Text(
                                    list[index].rating,
                                  ),
                                  Text(
                                    "(${list[index].reviewCount}) Reviews",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategories() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: ListView.builder(
        itemCount: catList.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width * 0.60,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(
                  catList[index].iconData,
                  size: 35,
                  color: Colors.deepPurple,
                ),
                title: Text(
                  catList[index].category,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  catList[index].itemTot,
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildPopularItems() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        itemCount: list.length,
        shrinkWrap: true,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return Card(
            elevation: 1.5,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  decoration: BoxDecoration(
                    // shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(
                      image: NetworkImage(list[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index].pName,
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          Text(
                            list[index].rating,
                          ),
                          Text(
                            "(${list[index].reviewCount}) Reviews",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

Widget loadProducts(List list) {
  return ListView.separated(
      itemBuilder: (context, index) {
        return ConstrainedBox(
          constraints: BoxConstraints(minHeight: 120),
          child: InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      // shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      image: DecorationImage(
                        image: NetworkImage(list[index].image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          list[index].pName,
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              list[index].rating,
                            ),
                            Text(
                              "(${list[index].reviewCount}) Reviews",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "(${list[index].piece}) Pieces",
                            ),
                            SizedBox(width: 10),
                            Text(
                              list[index].price,
                              style: TextStyle(
                                  color: Colors.deepPurple,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Quantity:${list[index].qty}",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {},
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 10,
        );
      },
      itemCount: list.length);
}
