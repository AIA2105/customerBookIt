import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
//import 'package:firebase_database/firebase_database.dart';




class Customers extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CustomersStatue();
  }
}

//Firebase initialization
//final customersReference = FirebaseDatabase.instance.reference().child('Customers');


class CustomersStatue extends State<Customers> {
  List users;
  //listener
  //StreamSubscription<Event> _onOkSubscription;
  //StreamSubscription<Event> _onDeleteSubscription;

  @override
  void initState() {
    super.initState();
    users = new List();
    setState(() {
      users.add('Mohamed Ghanem');
      users.add('Abo salah');
      users.add('AlMahallawey');
    });
    //Start listening, when add or change execute onAdd or onChange
   // _onOkSubscription = customersReference.onChildAdded.listen(_onOk);
    //_onDeleteSubscription = customersReference.onChildAdded.listen(_onDelete);
  }

  @override
  void dispose() {
    super.dispose();
    //Cancel listening
    //_onOkSubscription.cancel();
    //_onDeleteSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: Colors.black12,
        title: Text('3M Ayman'),
        centerTitle: true,
      ),

      body: new ListView.builder(
          itemCount: users.length,
          padding: EdgeInsets.all(8),
          itemBuilder: (context , position){
            int pos = position+1 ;
            return new Container(
              child: new Slidable(
              delegate: new SlidableDrawerDelegate(),
              actionExtentRatio: 0.25,
               child: new Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)
                ),
                margin: EdgeInsets.all(5),
                elevation: 15,
                child: ExpansionTile(
                  title: new Text('${users[position]}'),
                  leading: new CircleAvatar(

                    child: new Text('$pos'),
                  ),
                  subtitle: new Text('Visit number $pos '),
                  trailing: Icon(Icons.add_circle_outline),
                  children: <Widget>[
                    Row(children: <Widget>[
                      Expanded(child:  Column(children: <Widget>[
                        Text('Expected service time'),
                        Text('00:30',style: TextStyle(fontSize: 30,color: Colors.blue),),
                        Padding(padding: EdgeInsets.all(10),),
                        Text('Expected waiting time'),
                        Text('00:45',style: TextStyle(fontSize: 30,color: Colors.blue),),
                      ],),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          new RaisedButton(
                            child: Icon(Icons.call,color:Colors.white70,),
                            shape: new CircleBorder(),

                          ),

                          new RaisedButton(
                            child: Icon(Icons.alternate_email,color:Colors.white70,),
                            shape: new CircleBorder(),
                          ),

                          new RaisedButton(
                            child: Icon(Icons.chat,color:Colors.white70,),
                            shape: new CircleBorder(),
                          ),
                        ],
                      )
                    ],
                    ),

                  ],),
              ),
              actions: <Widget>[
                new IconSlideAction(
                  caption: 'OK',
                  color: Colors.blue,
                  icon: Icons.done,
                  //onTap: () => _showSnackBar('OK'),
                ),
                new IconSlideAction(
                  caption: 'Delete',
                  color: Colors.indigo,
                  icon: Icons.delete_sweep,
                  //onTap: () => _showSnackBar('Delete'),
                ),
              ],
            ),
              decoration:
              BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        //color: Colors.darkBlue,
                        blurRadius:12,
                        offset: Offset(0, 4),
                        spreadRadius: -18
                    )
                  ]
              ),
            );

          }
      ),
    );

  }

//  void _onOk(Event event){
//    setState(() {
//
//    });
//  }
//
//  void _onDelete(Event event){
//    //get the id of this item from firebase then put it into current item id
//    setState(() {
//
//    });
//  }




}