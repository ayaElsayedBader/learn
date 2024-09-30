


import"package:flutter/material.dart";
  extension  NagitorWidget  on  BuildContext{


  Future< dynamic>    pushWidget ( { required Widget push} ){

    return   Navigator.push(this, MaterialPageRoute(builder: (context) => push));
  }

  Future< dynamic> pushReplace (  { required Widget pushReplace}){

    return   Navigator.pushReplacement(this, MaterialPageRoute(builder: (context) => pushReplace));


  }


  }



