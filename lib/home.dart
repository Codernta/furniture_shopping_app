import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/widgets/card_widget.dart';
import 'package:furniture_shopping_app/widgets/drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Furnimart\u00a9",
            style: TextStyle(
                fontFamily: 'PermanentMarker',
                fontSize: 30,
                color: Colors.orangeAccent[700])),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.orangeAccent[700]),
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_bag_outlined,
            ),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          labelPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          indicatorColor: Colors.orangeAccent[700],
          tabs: [
            Text('Chair', style: TextStyle(color: Colors.orangeAccent[700])),
            Text('Table', style: TextStyle(color: Colors.orangeAccent[700])),
            Text('BedCot', style: TextStyle(color: Colors.orangeAccent[700])),
            Text('Wardrobe', style: TextStyle(color: Colors.orangeAccent[700])),
          ],
        ),
      ),
      drawer: const DrawerWidget(),
      body: TabBarView(
        controller: _tabController,
        children: const [
          CardWidget(
            itemImage: 'images/chair.jpg',
            itemName: 'Chair',
            itemPrice: '2500 Rs',
          ),
          CardWidget(
            itemImage: 'images/table.jpg',
            itemName: 'Table',
            itemPrice: '5500 Rs',
          ),
          CardWidget(
            itemImage: 'images/woodencot.jpg',
            itemName: 'WoodCot',
            itemPrice: '10500 Rs',
          ),
          CardWidget(
            itemImage: 'images/wardrobe.jpg',
            itemName: 'Wardrobe',
            itemPrice: '15000 Rs',
          ),
        ],
      ),
    );
  }
}
