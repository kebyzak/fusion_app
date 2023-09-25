import 'package:flutter/material.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({Key? key}) : super(key: key);

  @override
  _TableScreenState createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  @override
  Widget build(BuildContext context) {
    final columnWidth = MediaQuery.of(context).size.width * 0.9;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            expandedHeight: 375,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: AssetImage("assets/icons/tablebg.png"),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return ListTile(
                  title: Text("item $index"),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
