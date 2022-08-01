import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _MyWidgetState();

}

class _MyWidgetState extends State<SecondPage> {
  TextEditingController ctrInputNomer= new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second Ruote"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(children: [
          TextField(
            controller: ctrInputNomer,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'InputNomer',
            ),
          ),
          SizedBox(
              height: 20,),

          ElevatedButton(onPressed: (){
            Navigator.pop(context, ctrInputNomer.text);


          },child : Text("Submit"))
        ]
        ),
      ),
    );

    
  }
}