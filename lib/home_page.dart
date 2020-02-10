import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  double firstNumber =0;
  double secondNumber=0;
  double result=0;
  String sign=null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
             body: Padding(
               padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 30),
               child: Column(
                 children: <Widget>[
                   Expanded(
                     child: Container(
                       height: 170,
                       width: MediaQuery.of(context).size.width,
                       child: Padding(
                         padding: const EdgeInsets.only(top:150,left:300),
                         child: Text(result.toString(),style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 35),),
                       ),


                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(15.0),
                     child: Column(
                         children: <Widget>[
                        Row(
                         children: <Widget>[
                           InkWell(child: _circleWidget(Colors.white,"c"),onTap: (){
                             setState(() {
                               result=0;
                               firstNumber=0;
                               secondNumber=0;
                               sign=null;
                             });
                           },),
                           SizedBox(width: 15,),
                           InkWell(child: _circleWidget(Colors.white,"+/-"),onTap: (){
                           },),
                           SizedBox(width: 15,),
                           InkWell(child: _circleWidget(Colors.white,"%"),onTap: (){
                             setState(() {
                               sign="%";
                             });
                           },),
                           SizedBox(width: 15,),
                           InkWell(child: _circleWidget(Colors.yellow,"/"),onTap: (){
                           setState(() {
                             sign="/";
                           });
                           },),
                         ],
                       ),
                           SizedBox(height: 15,),
                           Row(
                             children: <Widget>[
                               InkWell(child: _circleWidget(Colors.grey,"7"), onTap: (){
                                 checkNumber(7);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"8"),onTap: (){
                                 checkNumber(8);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"9"), onTap: (){
                                 checkNumber(9);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.yellow,"x"),onTap: (){
                                 checkSign("x");
                               },),
                             ],
                           ),
                           SizedBox(height: 15,),
                           Row(
                             children: <Widget>[
                               InkWell(child: _circleWidget(Colors.grey,"4"),onTap: (){
                                 checkNumber(4);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"5"),onTap: (){
                                 checkNumber(5);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"6"),onTap: (){
                                 checkNumber(6);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.yellow,"-"),
                               onTap: (){
                                 checkSign("-");
                               },),
                             ],
                           ),
                           SizedBox(height: 15,),
                           Row(
                             children: <Widget>[
                               InkWell(child: _circleWidget(Colors.grey,"1"),onTap: (){
                                 checkNumber(1);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"2"),onTap: (){
                                 checkNumber(2);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"3"),onTap: (){
                                 checkNumber(3);
                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.yellow,"+"),onTap: (){
                                 checkSign("+");
                               },),
                             ],
                           ),
                           SizedBox(height: 20,),
                           Row(
                             children: <Widget>[
                               InkWell(child: _circleWidget(Colors.grey,"0"),onTap: (){
                                  checkNumber(0);}
                                  ),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.grey,"."),onTap: (){

                               },),
                               SizedBox(width: 15,),
                               InkWell(child: _circleWidget(Colors.yellow,"="),onTap: (){

                                        returnResult();
                                        setState(() {
                                          firstNumber=0;
                                        });

                               },),

                             ],
                           ),
                          ]
                     ),
                   ),

                 ],
               ),
             ),

    );

  }
   Widget _circleWidget(Color color,String sign){
    return    Container(
      width: 80,
      height: 70,
      child: Center(child: Text(sign,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),)),
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
      ),
    );
   }

   void checkNumber(double number){
     if(sign!=null){
       setState(() {
         secondNumber=number;
       });
     }
     else{
       setState(() {
         firstNumber=number;
       });
     }

   }

   void checkSign(String sgn){

    setState(() {
      sign=sgn;
    });

   }

   void  returnResult(){
     if(firstNumber==0){
         setState(() {
           firstNumber=result;
         });
     }
   switch(sign){
     case '+':

     setState(() {
       result=firstNumber+secondNumber;
     });
     break;
     case '-':
       setState(() {
         result=firstNumber-secondNumber;
       });
       break;
     case 'x':
       setState(() {
         result=firstNumber * secondNumber;
       });
       break;
     case '/':
       setState(() {
         result=firstNumber/secondNumber;
       });
       break;
     case '%':
       setState(() {
         result=firstNumber%secondNumber;
       });
       break;


   }

   }

}
