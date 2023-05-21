import 'package:flutter/material.dart';
import 'signupPage.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // TextEditingController emailController=TextEditingController(),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [

          Image.asset("assets/header.png",),

          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text("Sign In To Continue",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
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

            SizedBox(height: 8,), //To give space between 2 

  //To make a divider with 'OR' in the center          
Row(
    children:[
        Expanded( //wrapping divider with expanded widget
            child: Divider( color: Colors.black,)
        ),       

        Text("OR"),        

        Expanded(
            child: Divider(color: Colors.black,)
        ),
    ]
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

Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Padding(
      padding: const EdgeInsets.only(left: 52),
      child: Text("Password"),
    ),


    Padding(
      padding: const EdgeInsets.only(right: 57),
      child: Text("Forgot Password?"),
    ),
  ],
),

SizedBox(height: 8,),

SizedBox(width: 400, height: 25, //Text Feild width and Height
  child:TextField(
    
        onSubmitted: (String value){
            },
//If you want to place the icon exactly inside the  text input feild
// then use the prefixIcon property.
//prefixIcon will show before the text inside your TextField.
//suffixIcon will show after the text inside your TextField.

            decoration: InputDecoration(
              suffixIcon: Icon(Icons.visibility_off),
      
              border: OutlineInputBorder(),
              
            ),
          
    ),
    
),  

// Textfeild(controller:emailController)


SizedBox(height: 14,),
         
SizedBox(width: 400,  //wrap elevated button with sizedBox widget
  child:   ElevatedButton(onPressed: (){
    Navigator.push(
    context,
    MaterialPageRoute(
      builder:(BuildContext context){return SignupPage();
  },),
    );
  },



   style: ElevatedButton.styleFrom(backgroundColor:Colors.blue),
  
  child: Text("SIGN IN"),
  
  ),
),

SizedBox(height: 8,),

Text("Terms and Condition | Privacy Policy",
style: TextStyle(
  fontSize: 9,
),
),




// //Making a button to change screen
// ElevatedButton(onPressed:(){
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder:(BuildContext context){return SignupPage();
// },
// ),);


// },

// child: Text("nextpage"),),

  Flexible(child: Image.asset("assets/footer.png",   fit:BoxFit.fill)),
//  Container(child: Image.asset("assets/footer.png",fit: Boxfit.fill,), 
//  height: MediaQuery.of(context).size.height,
//  ), 
  

  
        ],
      )
    );
  }
}
