/*
*  find_an_event_widget.dart
*  WSH IT
*
*  Created by WSH.
*  Copyright © 2018 WSH. All rights reserved.
    */

import 'package:flutter/material.dart';
import 'package:wsh_it/calendar_widget/calendar_widget.dart';
import 'package:wsh_it/find_an_event_widget/event1_item_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:wsh_it/find_an_event_widget/event2_item_widget.dart';
import 'package:wsh_it/find_an_event_widget/event3_item_widget.dart';
import 'package:wsh_it/find_an_event_widget/event4_item_widget.dart';
import 'package:wsh_it/values/values.dart';


class FindAnEventWidget extends StatelessWidget {
  
  void onFilterByValueChanged(BuildContext context) {
  
  }
  
  void onCalendarPressed(BuildContext context) => Navigator.push(context, MaterialPageRoute(builder: (context) => CalendarWidget()));
  
  void onItemPressed(BuildContext context) {
  
  }
  
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      
      
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          "Find an Event",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontFamily: "Product Sans",
            fontWeight: FontWeight.w400,
            fontSize: 24,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => this.onItemPressed(context),
            icon: Image.asset("assets/images/icons8-circled-menu-96.png",),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
      ),
      body:Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              left: 0,
              top: 41,
              right: 0,
              bottom: -41,
              child: Image.asset(
                "assets/images/background-17.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 32,
              top: 95,
              right: 30,
              bottom: -40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 33,
                    margin: EdgeInsets.only(right: 6),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 33,
                              margin: EdgeInsets.only(right: 11),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 250, 250, 250),
                                border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 112, 112, 112),
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(16.5)),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 239,
                                    height: 45,
                                    margin: EdgeInsets.only(left: 11),
                                    child: Container(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 33,
                            height: 33,
                            child: FlatButton(
                              onPressed: () => this.onCalendarPressed(context),
                              color: Color.fromARGB(0, 0, 0, 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(0)),
                              ),
                              textColor: Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/calendar.png",),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 26,
                    margin: EdgeInsets.only(left: 4, top: 13, right: 2),
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(left: 2, top: 21),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 296,
                          childAspectRatio: 1.96026,
                          mainAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) => Event1ItemWidget(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: -1,
              right: 0,
              bottom: 0,
              child: Image.asset(
                "assets/images/navigationbar-3.png",
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
  
      
    );
  }
}
class Listpage extends StatefulWidget {
  @override
  _ListpageState createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  Future getPosts() async{
    var firestore= Firestore.instance;
    QuerySnapshot qn= await firestore.collection("posts").getDocuments();
    return qn.documents;

  }
  navigateToDetail(DocumentSnapshot post){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Detailpage(post: post,)));
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: getPosts(),
        builder: (_,snapshot){
        if(snapshot.connectionState == null){
          return Center(
            child: Text('Loading..'),
          );
        }
        else{

          ListView.builder(
            itemCount: snapshot.data.length,
            itemBuilder: (_, index){

              return ListTile(
                title: Text(snapshot.data[index].data["title"]),
                onTap: () => navigateToDetail(snapshot.data[index]),
              );

          });

        }

      }),
      
    );
  }
}

class Detailpage extends StatefulWidget {
  final DocumentSnapshot post;
  Detailpage({this.post});


  @override
  _DetailpageState createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: ListTile(
          title: Text(widget.post.data["title"]),
          subtitle: Text(widget.post.data["content"]),
          ),
      ),
      
    );
  }
}