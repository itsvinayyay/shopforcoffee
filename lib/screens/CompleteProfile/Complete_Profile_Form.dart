import 'package:flutter/material.dart';
import 'package:shopforcoffee/constants.dart';
import 'package:shopforcoffee/screens/OTPScreen/OTP_Screen.dart';
import 'package:shopforcoffee/sizeconfig.dart';
import 'Complete_Profile_Errors.dart';
import 'package:shopforcoffee/screens/TourScreen/tourbody_component2.dart';

class Complete_Form extends StatefulWidget {
  const Complete_Form({Key? key}) : super(key: key);

  @override
  State<Complete_Form> createState() => _Complete_FormState();
}

class _Complete_FormState extends State<Complete_Form> {
  late String? Firstname;
  late String? Lastname;
  late String? number;
  late String? address;
  GlobalKey<FormState> _Formkey = GlobalKey<FormState>();
  List<String> Errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _Formkey,
      child: Column(
        children: [
          buildFirstname(),
          SizedBox(
            height: getproportionatescreenheight(15),
          ),
          buildLastname(),
          SizedBox(
            height: getproportionatescreenheight(15),
          ),
          buildPhonenumber(),
          SizedBox(
            height: getproportionatescreenheight(15),
          ),
          buildAddress(),
          SizedBox(height: getproportionatescreenheight(5),),
          BuildErrors(Errors: Errors),
          SizedBox(height: getproportionatescreenheight(10),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "By continuing you agree to our terms and conditions.",
                  style: kimptext.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Commonbutton("Continue", () {
                if(_Formkey.currentState!.validate()){
                  _Formkey.currentState!.save();
                  if(Errors.isEmpty){
                    Navigator.pushNamed(context, OTPScreen.id);
                  }
                }
              }),
            ],
          )
        ],
      ),
    );
  }

  TextFormField buildAddress() {
    return TextFormField(
          decoration: buildInputDecoration(
              "Address", "Enter your address here", Icons.home),
          onSaved: (value){
            address = value;
          },
          validator: (value){
            if(value!=null && value.isEmpty && !Errors.contains(kaddressnull)){
              setState(() {
                Errors.add(kaddressnull);
              });

            }
            else if(value!=null && value.length<8 && !Errors.contains(kaddressnull) && !Errors.contains(kinvalidaddress)){
              setState(() {
                Errors.add(kinvalidaddress);
              });
            }
          },
          onChanged: (value){
            if(value!=null && value.isNotEmpty && Errors.contains(kaddressnull)){
              setState(() {
                Errors.remove(kaddressnull);
              });

            }
            else if(value!=null && (value.length>8 && Errors.contains(kinvalidaddress)) || (value!=null && value.isEmpty && Errors.contains(kinvalidaddress))){
              setState(() {
                Errors.remove(kinvalidaddress);
              });
            }
          },
        );
  }

  TextFormField buildPhonenumber() {
    return TextFormField(
          keyboardType: TextInputType.number,
          decoration: buildInputDecoration(
              "Phone Number", "Enter your phone number", Icons.phone),
          onSaved: (value){
            number = value;
          },
          validator: (value){
            if(value!=null && value.isEmpty && !Errors.contains(knumbernull)){
              setState(() {
                Errors.add(knumbernull);
              });

            }
            else if(value!=null && value.length!=10 && !Errors.contains(knumbernull) && !Errors.contains(knumnotvalid)){
              setState(() {
                Errors.add(knumnotvalid);
              });
            }
            return null;
          },
          onChanged: (value){
            if(value!=null && value.isNotEmpty && Errors.contains(knumbernull)){
              setState(() {
                Errors.remove(knumbernull);
              });



            }
            else if((value!=null && value.length==10 && Errors.contains(knumnotvalid)) || (value!=null && value.isEmpty && Errors.contains(knumnotvalid))){
              setState(() {
                Errors.remove(knumnotvalid);
              });
            }
            return null;
          },
        );
  }

  TextFormField buildLastname() {
    return TextFormField(
          decoration: buildInputDecoration(
              "Last Name", "Enter your last Name", Icons.person),
          onSaved: (value){
            Lastname = value;
          },
          validator: (value){
            if(value!=null && value.isEmpty && !Errors.contains(kLastnamenull)){
              setState(() {
                Errors.add(kLastnamenull);
              });

            }
            return null;
          },
          onChanged: (value){
            if(value!=null && value.isNotEmpty && Errors.contains(kLastnamenull)){
              setState(() {
                Errors.remove(kLastnamenull);
              });

            }
            return null;
          },
        );
  }

  TextFormField buildFirstname() {
    return TextFormField(
          decoration: buildInputDecoration(
              "First Name", "Enter your first Name", Icons.person),
          onSaved: (value){
            Firstname = value;
          },
          validator: (value){
            if(value!=null && value.isEmpty && !Errors.contains(kfirstnamenull)){
              setState(() {
                Errors.add(kfirstnamenull);
              });
            }
            return null;
          },
          onChanged: (value){
            if(value!=null && value.isNotEmpty && Errors.contains(kfirstnamenull)){
              setState(() {
                Errors.remove(kfirstnamenull);
              });
            }
            return null;
          },
        );
  }
}
