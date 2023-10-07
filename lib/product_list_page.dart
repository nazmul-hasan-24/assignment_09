 import 'package:flutter/material.dart';

// ignore: must_be_immutable

class ProductsList extends StatefulWidget {
  // ignore: prefer_typing_uninitialized_variables
  final image;
  String brand,color,colorName, size, sizeName;
 final int price;
 final int initItemCount;
  
   ProductsList({
    super.key,
    required this.image,
    required this.brand,
    required this.color,
    required this.size,
    required this.price,
    required this.colorName,
    required this.sizeName,
    required this.initItemCount,
    
    });

  @override
  State<ProductsList> createState() => __ProductsLiStateState();
}

class __ProductsLiStateState extends State<ProductsList> {

  int itemCount =1;
 
  int totalAmount  = 0;
  @override
  void initState() {
    super.initState();
    itemCount = widget.initItemCount;
    totalAmount =itemCount * widget.price;
     
  }
  

  void incrementItemCount(){
    setState(() {
     
      itemCount++;
      totalAmount = itemCount*widget.price;
    });
  }
   void decrementItemCount(){
    setState(() {
      if(itemCount > 1){
        setState(() {
          
          itemCount--;
      totalAmount = itemCount*widget.price;
        });
      }
      
    });
  }



  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Row(
                  children: [
                Expanded(
                  child: Container(
                  
                    decoration: const BoxDecoration(
                    
                    borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
                    ),
                    height: height *0.12,
                    width: width * 0.2,
                               
                    child: Image.network('${widget.image}',fit: BoxFit.fill,
                    height: double.infinity,
                     ),
                  ),
                ),
                 Material(
                  borderRadius: const BorderRadius.horizontal(right: Radius.circular(10)),
                  elevation: 2,
                   child: Container(
                    height: height *0.12,
                     padding: const EdgeInsets.fromLTRB(8, 3, 3, 3),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                          Text(widget.brand, style: const TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(width: width*0.52,),
                         const Icon(Icons.more_vert)
                       ],
                     ),
                      Row(
                       children: [
                         RichText (
                          text:  TextSpan(
                            text: "${widget.color} :",
                            children: [TextSpan( text: " ${widget.colorName}",style: const TextStyle(fontWeight: FontWeight.w400))]
                          ),
                         ),
                          SizedBox(width: width/19,),
                         RichText (
                          text:  TextSpan(
                            text: "${widget.size} :",
                            children: [TextSpan( text: " ${widget.sizeName}",style: const TextStyle(fontWeight: FontWeight.w400))]
                          ),
                         ),
                       ],
                     ),
                     Row(
                     
                       children: [
                         CircleAvatar(
                           child: Expanded(
                             child: IconButton(
                               color: Colors.white,
                               onPressed: decrementItemCount,
                               icon: const Icon(Icons.remove, color: Colors.black,),),
                           )
                         ),
                         SizedBox(width: width*0.05,),
                          Text("$itemCount"),
                         SizedBox(width: width*0.05,),
                        CircleAvatar(
                          child: Expanded(
                            child: IconButton(
                              onPressed: incrementItemCount,
                             icon: const Icon(Icons.add,),),
                          ),
                        ),
                        SizedBox(width: width*0.312,),
                          Text(" ${widget.price}"),
                        
                       ],
                     )
                       ],
                     ),
                   ),
                 ),
                             
                  ],
                );}
}