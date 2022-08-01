import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/SecondPage.dart';

class fromRegistration extends StatefulWidget {
  const fromRegistration({Key? key}) : super(key: key);

  @override
  State<fromRegistration> createState() => _fromRegistration();
}

class _fromRegistration extends State<fromRegistration> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  int id = 1;
  String myPhone= "-";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FromRegistration")),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(

          children: [
              TextField(
                controller: ctrUsername,
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
            ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: ctrPassword,
            obscureText: true,
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Password',
            ),
            ),

            SizedBox(height: 20,),
            Text("Jenis Kelamin" , style: TextStyle(fontSize: 15), ),
            SizedBox(height: 10,),
            Row(children: [
              Radio(value:  1, groupValue: id , onChanged: (val) {
                setState(() {
                  id = 1;
                });

              }),
              Text("Male")

            ],),

             Row(children: [
              Radio(value:  2, groupValue: id , onChanged: (val) {
                setState(() {
                  id = 2;
                });
              }),
              Text("Female")

            ],),

            Text("Phone : "+myPhone),
            ElevatedButton(onPressed: () async {
              final result = await Navigator.push( 
                context,
                MaterialPageRoute(builder: ((context) => const SecondPage())),
                
                );

                print("hasil input phone : "+result.toString());
                setState(() {
                  myPhone = result.toString();
                });

            },child: Text("Phone Number")),
            SizedBox(
              height: 20,),
           
            Center(
              child: Container(
                width: 200,
                child: ElevatedButton(onPressed: () {

                }, child: Text("Submit"),
              
              ),
             
            ),
            
            )

          ],
        ),
        
        
      ),
    );
   
    
  }
}
