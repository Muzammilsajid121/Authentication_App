import 'package:flutter/material.dart';
import 'loginpage.dart';


class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Column(
        children: [
        Image.asset("assets/header.png"),

        Padding(
          padding: const EdgeInsets.only(bottom: 18),
          child: Text("New User? Get Started Now",
          style: TextStyle(fontWeight: FontWeight.w400,
          color: Colors.black),
          ),
        ),

              Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            Image.asset("facebooklogo.png",
            height: 30,
            width: 30,),

            Image.asset("googlelogo.png",
            height: 30,
            width: 30,),

             Image.asset("twitterlogo.png",
            height: 30,
            width: 30,),

          ],
          ),

         SizedBox(height: 8,),

         Row(
          children: [
            Expanded(child: Divider(color: Colors.black,)),

            Text("OR"),

            Expanded(child: Divider(color: Colors.black,)),
          ],
         ),
         SizedBox(height: 8,),

         Padding(     //wrap text with padding to appear it on left
            padding: const EdgeInsets.only(right:338),
            child: Text("Emaid ID*", 
            ),
          ),

          SizedBox(height: 8,),

        //An empty text feild to write something, Only UI

SizedBox(width: 400, height: 25, //wrapping textfeild with Sizedbox widget

  child:TextField(
        onSubmitted: (String value){},
  
        //To decorate text feild
            decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: "Email",
            ) ,
  
          ),
),
   
   SizedBox(height: 8,),

   Padding(
     padding: const EdgeInsets.only(right: 328),
     child: Text("Password*"),
   ),


SizedBox(height: 8,),


SizedBox(width: 400, height: 25, //Text Feild width and Height
  child:TextField(
    
        onSubmitted: (String value){},

            decoration: InputDecoration(
              suffixIcon: Icon(Icons.visibility_off),
      
              border: OutlineInputBorder(),
              
            ),    
    ),   
),  

       SizedBox(height: 14,),
         
SizedBox(width: 400,  //wrap elevated button with sizedBox widget
  child:   ElevatedButton(onPressed: (){},
   style: ElevatedButton.styleFrom(backgroundColor:Colors.blue),
  
  child: Text("SIGN UP"),
  
  ),
),

SizedBox(height: 8,),

Text("Terms and Condition | Privacy Policy",
style: TextStyle(
  fontSize: 9,
),
),

Flexible(child: Image.asset("assets/footer.png",   fit:BoxFit.fill)),



        ],
      ),

        


    );
  }
}

