import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

void main() {
  runApp(Discount());
}

class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount> {

  String equation = '0';
  String equationPercent = '0';
  double tempResult = 0;
  double result = 0;
  double a = 0;
  double b = 0;
  double c = 0;
  double finalPrice = 0;
  String tax = '0';
  double finalTax = 0;
  double superLast = 0;
  double theLast = 0;
  @override
  Widget build(BuildContext context) {
    setState(() {
      a = double.parse(equation);
      b = double.parse(equationPercent);
      c = double.parse(tax);
      tempResult = b * a;
      result = (tempResult/100);
      finalPrice = (b-result);


      finalTax = (b*c)/100;
      superLast = (b - finalPrice) - finalTax;
      theLast =finalPrice + finalTax;
    });
    print(finalTax);
    print(finalPrice);
    print(equationPercent);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey,elevation: 0,),
      backgroundColor: Colors.grey,
      body: ListView(
        children: [
          Column(
            children: [

              Padding(
                padding: const EdgeInsets.all(30),
                child: SizedBox(height:100,width:100,child: Image.asset('assets/discount.png')),
              ),
              GestureDetector(
                onTap: (){
                  Alert(
                      context: context,
                      title: "Percent Calculator",
                      content: Column(
                        children: <Widget>[
                          Container(
                            child: Text(tax.substring(1)),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = '0';
                                      });
                                    },
                                    child: Text('C',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '.';
                                      });
                                    },
                                    child: Text('.',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax.substring(0 , tax.length -1);
                                        if (equation==''){
                                          equation = '0';
                                        }
                                      });
                                    },
                                    child: Text('⌫',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '7';
                                      });
                                    },
                                    child: Text('7',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '8';
                                      });
                                    },
                                    child: Text('8',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '9';
                                      });
                                    },
                                    child: Text('9',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '4';
                                      });
                                    },
                                    child: Text('4',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '5';
                                      });
                                    },
                                    child: Text('5',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '6';
                                      });
                                    },
                                    child: Text('6',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '1';
                                      });
                                    },
                                    child: Text('1',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '2';
                                      });
                                    },
                                    child: Text('2',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '3';
                                      });
                                    },
                                    child: Text('3',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '0';
                                      });
                                    },
                                    child: Text('0',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        tax = tax + '00';
                                      });
                                    },
                                    child: Text('00',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      tax.toString();
                                      print(tax);
                                      Navigator.pop(context);
                                    },
                                    child: Text('✓',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      buttons: [
                        DialogButton(
                          color: Colors.orangeAccent,
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]).show();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Colors.white,
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AutoSizeText(
                          'Taxes                       $tax%',
                          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.black ),),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
              ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
              GestureDetector(
                onTap: (){
                  Alert(
                      context: context,
                      title: "Percent Calculator",
                      content: Column(
                        children: <Widget>[
                          Container(
                            child: Text(equation.substring(1)),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = '0';
                                      });
                                    },
                                    child: Text('C',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '.';
                                      });
                                    },
                                    child: Text('.',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation.substring(0 , equation.length -1);
                                        if (equation==''){
                                          equation = '0';
                                        }
                                      });
                                    },
                                    child: Text('⌫',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '7';
                                      });
                                    },
                                    child: Text('7',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '8';
                                      });
                                    },
                                    child: Text('8',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '9';
                                      });
                                    },
                                    child: Text('9',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '4';
                                      });
                                    },
                                    child: Text('4',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '5';
                                      });
                                    },
                                    child: Text('5',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '6';
                                      });
                                    },
                                    child: Text('6',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '1';
                                      });
                                    },
                                    child: Text('1',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '2';
                                      });
                                    },
                                    child: Text('2',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '3';
                                      });
                                    },
                                    child: Text('3',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '0';
                                      });
                                    },
                                    child: Text('0',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equation = equation + '00';
                                      });
                                    },
                                    child: Text('00',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      equation.toString();
                                      print(equation);
                                      Navigator.pop(context);
                                    },
                                    child: Text('✓',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      buttons: [
                        DialogButton(
                          color: Colors.orangeAccent,
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]).show();
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Colors.white,
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AutoSizeText(
                          'Discount                       $equation%',
                          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.black ),),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ////////////////////////////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////////////////////////////
              ////////////////////////////////////////////////////////////////////////////////////////
              //Divider(color: Colors.white,thickness: 2,),
              GestureDetector(
                onTap: (){
                  Alert(
                      context: context,
                      title: "Percent Calculator",
                      content: Column(
                        children: <Widget>[
                          Container(
                            child: Text(equationPercent.substring(1)),
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = '0';
                                      });
                                    },
                                    child: Text('C',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '.';
                                      });
                                    },
                                    child: Text('.',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent.substring(0 , equationPercent.length -1);
                                        if (equationPercent==''){
                                          equationPercent = '0';
                                        }
                                      });
                                    },
                                    child: Text('⌫',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '7';
                                      });
                                    },
                                    child: Text('7',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '8';
                                      });
                                    },
                                    child: Text('8',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '9';
                                      });
                                    },
                                    child: Text('9',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '4';
                                      });
                                    },
                                    child: Text('4',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '5';
                                      });
                                    },
                                    child: Text('5',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '6';
                                      });
                                    },
                                    child: Text('6',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '1';
                                      });
                                    },
                                    child: Text('1',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '2';
                                      });
                                    },
                                    child: Text('2',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '3';
                                      });
                                    },
                                    child: Text('3',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '0';
                                      });
                                    },
                                    child: Text('0',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      setState(() {
                                        equationPercent = equationPercent + '00';
                                      });
                                    },
                                    child: Text('00',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 10),
                                  child: RawMaterialButton(
                                    padding: EdgeInsets.all(10),
                                    shape: CircleBorder(),
                                    fillColor: Colors.white,
                                    elevation: 5,
                                    onPressed: (){
                                      equationPercent.toString();
                                      print(equationPercent);
                                      Navigator.pop(context);
                                    },
                                    child: Text('✓',style: GoogleFonts.montserrat(
                                        textStyle: TextStyle(fontSize:25,color: Colors.orangeAccent,fontWeight: FontWeight.w400)
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                      buttons: [
                        DialogButton(
                          color: Colors.orangeAccent,
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        )
                      ]).show();
                },
                child: Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: Material(
                    color: Colors.white,
                    elevation: 2,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white
                      ),
                      margin: EdgeInsets.all(10),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: AutoSizeText(
                          'Price                                 $equationPercent',
                          style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.black ),),
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //Divider(color: Colors.white,thickness: 2,),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AutoSizeText(
                        'Saved                                 $superLast',
                        style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.black ),),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  color: Colors.white,
                  elevation: 2,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    margin: EdgeInsets.all(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AutoSizeText(
                        'Net price                                 $theLast',
                        style: GoogleFonts.montserrat(textStyle: TextStyle(fontSize:70,color: Colors.black ),),
                        maxLines: 1,
                      ),
                    ),
                  ),
                ),
              )
              //Divider(color: Colors.white,thickness: 2,),
            ],
          ),
        ],
      ),
    );
  }
}


