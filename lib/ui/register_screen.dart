import 'package:flutter/material.dart';
import 'package:fly_deal_fare/colors_class/colors_class.dart';
import 'package:fly_deal_fare/ui/login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late bool _passwordVisible;
  bool isvisible = true;
  @override
  void initState() {
    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: ColorConstants.iconColror,
          ),
        ),
        title: const Text(
          'Register Screen',
          style: TextStyle(color: ColorConstants.iconColror),
        ),
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
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,top: 20,),
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
                margin: EdgeInsets.only(left: 20,right: 20,top: 10,),
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: ColorConstants.whitecolr),
                    decoration: const InputDecoration(
                        labelText: "Enter Name",
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
                          Icons.person,
                          color: ColorConstants.whitecolr,
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
                    setState(() {
                      if(isvisible){
                        isvisible = false;
                      }else{
                        isvisible = true;
                      }
                    });
                  },
                  label: const Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white, fontSize: 19),
                  ),
                ),
              ),
              Container(
                height: 35,
                margin: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  const LogInScreen()));
                    },
                    child: const  Text(" Already Register? Click here",style: TextStyle(color: ColorConstants.whitecolr),)),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20),

                    child:   Text("By Joining FlyDealFare you Agree to FlyDealFare",style: TextStyle(color: ColorConstants.whitecolr),)),
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
                  const Text("and ",style: TextStyle(color: ColorConstants.whitecolr,decoration: TextDecoration.underline)),
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
