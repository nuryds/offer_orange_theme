import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ExpansionList extends StatefulWidget{
  @override
  _ExpansionListState createState() => _ExpansionListState();

}

class _ExpansionListState extends State<ExpansionList>{

  List<Item> _data =generateItems(10);

  Widget _buildListPanel(){
    return ExpansionPanelList(
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
        },
      children: _data.map<ExpansionPanel> ((Item item) {
          return ExpansionPanel(
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                title: Text(item.headerValue),
              );
            },
            body: ListTile(
              title: Text(item.expandedValue),
              subtitle: Text("nuruuuu"),
              trailing: Icon(Icons.delete),
              onTap: () {
                setState(() {
                  _data.removeWhere((Item currentItem) => item == currentItem);
                });
              },
            ),
            isExpanded: item.isExpanded,
          );
        }).toList(),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: _buildListPanel(),
        ),
      )
    );
  }

}
class Item{
  String expandedValue;
  String headerValue;
  bool isExpanded;

  Item({ required this.expandedValue,required this.headerValue,this.isExpanded=false });
}

List<Item> generateItems(int numberOfItems){
  return List.generate(numberOfItems, (index) {
    return Item(expandedValue: 'nur', headerValue: 'nurun yeri');
  });
}