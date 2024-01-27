
import 'package:flutter/material.dart';

class Assignment5 extends StatefulWidget {

  const Assignment5({super.key});

  @override
  State<Assignment5> createState() {

    return _Assignment5State();
  }
}

class _Assignment5State extends State<Assignment5> {

  bool pos1 = false;
  bool pos2 = false;
  bool pos3 = false;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.white,
        title: const Text(
          
          "Instagram",
          style: TextStyle(

            fontStyle: FontStyle.italic,
            color: Colors.black,
            fontSize: 30,          
          ),
        ),
        actions: const[
          Icon(
            Icons.favorite_rounded,
            color: Colors.red,
          )
        ],
      ),
     /* body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/917911572/photo/standing-woman-on-the-hill-against-mountain-valley-at-bright-sunny-day-landscape-with-girl.jpg?s=1024x1024&w=is&k=20&c=CdAO7r8O3xWGG_v3aqJCCEWwQTRG2PIvZqyZS0933T0=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.favorite_outline_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/920377838/photo/standing-young-woman-with-backpack-and-raised-up-arms-on-the-hill-and-looking-on-mountains.jpg?s=1024x1024&w=is&k=20&c=Y_yb_a9Ui5W3KkdCcs24HsYEycH-_YA4XLZHNTjLET4=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.favorite_outline_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/917911572/photo/standing-woman-on-the-hill-against-mountain-valley-at-bright-sunny-day-landscape-with-girl.jpg?s=1024x1024&w=is&k=20&c=CdAO7r8O3xWGG_v3aqJCCEWwQTRG2PIvZqyZS0933T0=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.favorite_outline_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/920377838/photo/standing-young-woman-with-backpack-and-raised-up-arms-on-the-hill-and-looking-on-mountains.jpg?s=1024x1024&w=is&k=20&c=Y_yb_a9Ui5W3KkdCcs24HsYEycH-_YA4XLZHNTjLET4=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.favorite_outline_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),*/
  
      body: SingleChildScrollView(
        child: 
      
      Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/917911572/photo/standing-woman-on-the-hill-against-mountain-valley-at-bright-sunny-day-landscape-with-girl.jpg?s=1024x1024&w=is&k=20&c=CdAO7r8O3xWGG_v3aqJCCEWwQTRG2PIvZqyZS0933T0=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){

                      setState(() {
                        pos1 = !pos1;
                      });
                    }, 
                    icon:  Icon(
                      Icons.favorite_rounded,
                      color: pos1? Colors.red:Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.bookmark,
                      
                    ),
                  ),
                  
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
              child: Image.network(
                "https://media.istockphoto.com/id/920377838/photo/standing-young-woman-with-backpack-and-raised-up-arms-on-the-hill-and-looking-on-mountains.jpg?s=1024x1024&w=is&k=20&c=Y_yb_a9Ui5W3KkdCcs24HsYEycH-_YA4XLZHNTjLET4=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){
                      setState(() {
                        pos2 = !pos2;
                      });
                    }, 
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: pos2 ? Colors.red:Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: (){
                      
                    },
                    icon: const Icon(
                      Icons.bookmark,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
    
            children: [

              Container(
                color: Colors.amber,
                
              child: Image.network(
                "https://media.istockphoto.com/id/535971055/photo/woman-looking-through-binoculars-at-ama-dablam-mount-everest-region.jpg?s=1024x1024&w=is&k=20&c=NqXS3ce3WqXFIW20i-tyUi04UrNBP-ieN2g5HCA-P9o=",
                width: double.infinity,
                height: 200,
              ),
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: (){

                       setState(() {
                        pos3 = !pos3;
                      });
                    }, 
                    icon: Icon(
                      Icons.favorite_rounded,
                      color: pos3? Colors.red:Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.comment_outlined
                    ),
                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.send
                    ),
                  ),
              
                  
                  const Spacer(

                  ),
                  IconButton(
                    onPressed: (){},
                    icon: const Icon(
                      Icons.bookmark_outline_outlined
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ), 
      ),
    );
  }

  
}