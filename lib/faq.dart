import 'package:blood_donation/constants.dart';
import 'package:flutter/material.dart';
class Faq extends StatelessWidget {
  //  Faq({Key? key}) : super(key: key);

  static const String _title = 'FAQ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text(_title),backgroundColor: Colors.pink[300],),
        body:  MyStatefulWidget(),
      );
  }
}

// stores ExpansionPanel state information
class Item {
  Item({
     this.expandedValue,
     this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}


List<Item> generateItems(int numberOfItems) {
  return List<Item>.generate(numberOfItems, (int index) {
    return Item(
      headerValue:qs[index],
      expandedValue: ans[index],
    );
  });
}

class MyStatefulWidget extends StatefulWidget {

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final List<Item> _data = generateItems(9);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: _buildPanel(),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue),
            );
          },
          body: ListTile(
              title: Text(item.expandedValue),
              //subtitle:
                  //const Text('To delete this panel, tap the trash can icon'),
              // trailing: const Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              }),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}
