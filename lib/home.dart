import 'package:flutter/material.dart';
//import 'package:flutter_icons/flutter_icons.dart';
import 'details.dart';
import 'data.dart';
import 'badge.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _searchControl = new TextEditingController();
  var images = <String>['images/1.jpg', 'images/1.jpg', 'images/1.jpg', '1010'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        actions: <Widget>[
          Center(
            child: Icon(Icons.beach_access, color:  Colors.orange,
             // icon: Feather.getIconData("shopping-cart"),
            ),
          ),
          SizedBox(width: 20),
        ],
      ),

      body: ListView(
        padding: EdgeInsets.only(left: 20),
        children: <Widget>[

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Text(
              "Tourist Attraction  \nin Ubon",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 10),

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.black,),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: "Search",
                    
                    prefixIcon: Icon(Icons.search,
                      //Feather.getIconData("search"),
                      color: Colors.black,
                   ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                  controller: _searchControl,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),


          Container(
            height: 275,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 275,
                      width: 280,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            furniture['name'],
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 10),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "${furniture["imgs"]}",
                              height: 240,
                              width: 280,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },

            ),
          ),

          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w800,
                ),
              ),

              FlatButton(
                child: Text(
                  "View More",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                onPressed: (){},
              ),
            ],
          ),

          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: furnitures.length,
              itemBuilder: (BuildContext context, int index) {
                Map furniture = furnitures[index];

                return Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context){
                            return Details();
                          },
                        ),
                      );
                    },
                    child: Container(
                      height: 140,
                      width: 140,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "${furniture["imgs"]}",
                          height: 140,
                          width: 140,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 10),
        ],
      ),
    );
  }
}
