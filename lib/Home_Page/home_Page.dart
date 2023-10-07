import 'package:assignment_09/product_list_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String title;
  HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   void showSnackbar(){
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Congratulation")));
  }
  
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.search)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 20),
             child: Text("My Bag", style: Theme.of(context).textTheme.headlineLarge,),
           ),
          ProductsList(
            initItemCount: 1,
              image:
                  'https://th.bing.com/th/id/R.bf42b09a2d6f0b7edc4008d0a66d021c?rik=pzDr2f54K19XtA&pid=ImgRaw&r=0',
              brand: "Marvel",
              color: "Color",
              size: "Size",
              price: 30,
              colorName: "Indigo",
              sizeName: "L"),
          SizedBox(
            height: height * 0.015,
          ),
          ProductsList(
            initItemCount: 1,
              image:
                  'https://th.bing.com/th/id/R.6bd034afbdd933bc9831847846a9cf7c?rik=mRm%2b0ibbeX4ozQ&pid=ImgRaw&r=0',
              brand: "Gucci",
              color: "Color",
              size: "Size",
              price: 50,
              colorName: "Black",
              sizeName: "Xl"),
          SizedBox(
            height: height * 0.015,
          ),
          ProductsList(
            initItemCount: 1,
              image:
                  'https://th.bing.com/th/id/OIP.bNuPptz9mynygzwWRIWBYwHaHa?pid=ImgDet&rs=1',
              brand: "Easy",
              color: "Color",
              size: "Size",
              price: 90,
              colorName: "Red",
              sizeName: "M"),
          SizedBox(
            height: height * 0.015,
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Total Amount: "), 
              Text("250\$")
              ],
          ),
          SizedBox(
            height: height * 0.01,
          ),
          ElevatedButton(
            onPressed: showSnackbar,
            style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.redAccent),
                minimumSize:
                    MaterialStatePropertyAll<Size>(Size(double.infinity, 35))),
            child: const Text("CHECKOUT"),
          )
        ]),
      ),
    );
  }
}
