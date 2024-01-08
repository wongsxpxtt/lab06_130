import 'package:flutter/material.dart';
import 'package:lab06_130/hobby.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  List<Hobby> Hobbies = [];

  List selectedItems = [];

  @override
  void initState() {
    super.initState();
    Hobbies = Hobby.getHobby();
    print(Hobbies);
  }

  List<Widget> createHobbyCheckbox(){
    List<Widget> mywidget = [];

    for (var hb in Hobbies) {
      mywidget.add(
        CheckboxListTile(title:Text(hb.name),value: hb.checked, onChanged: (value) {
          
            setState(() {
              hb.checked = value!;
               if (value!) {
                selectedItems.add(hb.name);
              } else {
                selectedItems.remove(hb.name);
              }
            

            });

        },)
      );
    }

    return mywidget;
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Lap06 CheckboxListTile"),
      ),
      body:  Column(
        children: [
          const Text("งานอดิเรก"),
          Column(
            children: createHobbyCheckbox()
          ),
          Text(" ${selectedItems.join(', ')}"),
        ],
      ),
    );
    
  }
}