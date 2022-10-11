
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:fly_deal_fare/colors_class/colors_class.dart';
import 'package:fly_deal_fare/ui/register_screen.dart';
class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  late bool _passwordVisible;
  late bool _gmaillayoutVisible = true;
  late bool _numberlayoutVisible = false;
  late bool _otpverifylayoutVisible = false;

  var countrycode = "+91";
  @override
  void initState() {
    _passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign In Screen",style: TextStyle(color: ColorConstants.iconColror),),
      ),
      body: Container(
        margin:  const EdgeInsets.only(left: 10,right: 10,top: 10),
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        decoration: const  BoxDecoration(
            color: ColorConstants.backgroundColor
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: const  BorderSide(
                              width: 2,
                              color: ColorConstants.whitecolr,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),
                        onPressed: (){

                        },
                        icon: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/facebook.png')),
                        label: Text("Facebook")
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: const  BorderSide(
                              width: 2,
                              color: ColorConstants.whitecolr,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),
                        onPressed: (){

                        },
                        icon: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/google.png')),
                        label: Text("Google")
                    ),
                  ),

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 2,
                    width: 150,
                    color: ColorConstants.whitecolr,
                  ),
                  const Text("Or",style: TextStyle(color: ColorConstants.whitecolr,fontSize: 18),),
                  Container(
                    height: 2,
                    width: 150,
                    color: ColorConstants.whitecolr,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 150,
                    height: 50,
                    margin: const EdgeInsets.only(top: 10),
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: const  BorderSide(
                              width: 2,
                              color: ColorConstants.whitecolr,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            _gmaillayoutVisible = true;
                            _numberlayoutVisible= false;
                            _otpverifylayoutVisible = false;
                          });
                        },
                        icon: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/gmail.png')),
                        label: const Text("Gmail")
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 50,
                    margin: EdgeInsets.only(top: 10),
                    child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                            side: const  BorderSide(
                              width: 2,
                              color: ColorConstants.whitecolr,
                            ),
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),
                        onPressed: (){
                          setState(() {
                            _numberlayoutVisible = true;
                            _gmaillayoutVisible= false;
                            _otpverifylayoutVisible = false;
                          });
                        },
                        icon: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/telephone.png')),
                        label: const  Text("Number")
                    ),
                  ),
                ],
              ),
              // gmail sign in layout

              Visibility(
                visible: _gmaillayoutVisible,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20,right: 20,top: 15,),
                        child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: ColorConstants.whitecolr),
                            decoration: const InputDecoration(
                                labelText: "Enter Email",
                                labelStyle:TextStyle(color: ColorConstants.whitecolr) ,
                                hintStyle: TextStyle(color: ColorConstants.whitecolr),
                                border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                disabledBorder: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstants.whitecolr, width: 2.0)),
                                prefixIcon: Icon(
                                  Icons.email_outlined,
                                  color: ColorConstants.whitecolr,
                                )
                            )
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20,right: 20,top: 10,),
                        child: TextFormField(
                            obscureText: !_passwordVisible,
                            style: const TextStyle(color: ColorConstants.whitecolr),
                            decoration:  InputDecoration(
                                labelText: "Enter Password",
                                labelStyle: const TextStyle(color: ColorConstants.whitecolr) ,
                                hintStyle: const TextStyle(color: ColorConstants.whitecolr),
                                border:const OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                disabledBorder: const OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstants.whitecolr, width: 2.0)),
                                prefixIcon:  const Icon(
                                  Icons.phonelink_lock,
                                  color: ColorConstants.whitecolr,
                                ),
                                suffixIcon: IconButton(
                                    onPressed:(){
                                      setState(() {
                                        _passwordVisible = !_passwordVisible;
                                      });
                                    },
                                    icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off,color: ColorConstants.whitecolr,)
                                )
                            )
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                        child: FloatingActionButton.extended(
                          backgroundColor: ColorConstants.greencolor,
                          onPressed: () {

                          },
                          label: const Text(
                            'Sign In',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                    ],
                  )),

              //number and otp layout

              Visibility(
                visible: _numberlayoutVisible,
                  child: Column(
                    children: [
                      //number picker layout
                      Container(
                        height: 62.5,
                        margin: const EdgeInsets.only(left: 20,right: 20,top: 15),
                        width: MediaQuery.of(context).size.width,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color:ColorConstants.whitecolr,
                              width: 2
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          children: [
                            CountryCodePicker(
                              closeIcon: const  Icon(Icons.close,color: ColorConstants.iconColror,),
                              searchDecoration: const  InputDecoration(
                                focusColor: ColorConstants.iconColror,
                                helperStyle: TextStyle(color: ColorConstants.iconColror),
                                prefixIcon: Icon(Icons.search,color: ColorConstants.iconColror,),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorConstants.iconColror),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: ColorConstants.iconColror),
                                ),
                              ),
                              onChanged: print,
                              initialSelection: 'IN',
                              // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                              textStyle: const TextStyle(color: ColorConstants.whitecolr),

                              showFlagDialog: true,
                              onInit: (code) =>
                                  print("on init ${code!.name!} ${code.dialCode!} ${code.name}"),

                            ),

                            Expanded(
                              child:  TextField(
                                onChanged: (value) {

                                },
                                style: const  TextStyle(color: ColorConstants.whitecolr),
                                keyboardType: TextInputType.number,

                                decoration: const InputDecoration(
                                  hintText: 'Enter Number',
                                  hintStyle: TextStyle(color: ColorConstants.whitecolr),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: ColorConstants.backgroundColor),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: ColorConstants.backgroundColor),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 10,),
                          child: TextFormField(
                              style: const TextStyle(color: ColorConstants.whitecolr),
                              decoration: const InputDecoration(
                                labelText: "Enter Name",
                                labelStyle:  TextStyle(color: ColorConstants.whitecolr) ,
                                hintStyle:  TextStyle(color: ColorConstants.whitecolr),
                                border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                disabledBorder:  OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                enabledBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstants.whitecolr, width: 2.0)),
                                prefixIcon:   Icon(
                                  Icons.person,
                                  color: ColorConstants.whitecolr,
                                ),
                              )
                          )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                        child: FloatingActionButton.extended(
                          backgroundColor: ColorConstants.greencolor,
                          onPressed: () {
                            setState(() {
                              _gmaillayoutVisible= false;
                              _numberlayoutVisible = false;
                              _otpverifylayoutVisible = true;
                            });
                          },
                          label: const Text(
                            'Get Otp',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                    ],
                  )
              ),

              //otp and verify layout

              Visibility(
                  visible: _otpverifylayoutVisible,
                  child: Column(
                    children: [
                      Container(
                          margin: const EdgeInsets.only(left: 20,right: 20,top: 10,),
                          child: TextFormField(
                              style: const TextStyle(color: ColorConstants.whitecolr),
                              decoration: const  InputDecoration(
                                labelText: "Enter otp",
                                labelStyle: TextStyle(color: ColorConstants.whitecolr) ,
                                hintStyle:  TextStyle(color: ColorConstants.whitecolr),
                                border: OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                disabledBorder:  OutlineInputBorder(
                                  borderSide:
                                  BorderSide(color: ColorConstants.whitecolr, width: 2.0),
                                ),
                                enabledBorder:  OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: ColorConstants.whitecolr, width: 2.0)),
                                prefixIcon:   Icon(
                                  Icons.perm_phone_msg,
                                  color: ColorConstants.whitecolr,
                                ),


                              )
                          )
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                        child: FloatingActionButton.extended(
                          backgroundColor: ColorConstants.greencolor,
                          onPressed: () {
                            setState(() {
                              _numberlayoutVisible = true;
                              _otpverifylayoutVisible = false;
                            });
                          },
                          label: const Text(
                            'Verify Otp ',
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                    ],
                  )
              ),

              //Anonymous Sign In

              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 5),
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: const  BorderSide(
                        width: 2,
                        color: ColorConstants.whitecolr,
                      ),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      )
                  ),
                  onPressed: (){

                  },
                  child: const  Text(" Sign In As Guest",style: TextStyle(fontSize: 17),),
                ),
              ),

              Container(
                height: 30,
                margin: EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: TextButton(
                    onPressed: (){

                    },
                    child: const  Text(" forgot Password? Click here",style: TextStyle(color: ColorConstants.whitecolr),)),
              ),

              Container(
                height: 30,
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder:(context) =>  const RegisterScreen()));
                    },
                    child: const  Text(" Not Register? Click here",style: TextStyle(color: ColorConstants.whitecolr),)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text("By Joining FlyDealFare you Agree to FlyDealFare",style: TextStyle(color: ColorConstants.whitecolr),),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: TextButton(
                        onPressed: (){

                        },
                        child: const Text("Term & Condition ",style: TextStyle(color: ColorConstants.iconColror,decoration: TextDecoration.underline),
                        )
                    ),
                  ),
                  const Text("and ",style: TextStyle(color: ColorConstants.whitecolr)),
                  TextButton(
                      onPressed: (){

                      },
                      child: const Text("Privacy Policy",style: TextStyle(color: ColorConstants.iconColror,decoration: TextDecoration.underline),
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}