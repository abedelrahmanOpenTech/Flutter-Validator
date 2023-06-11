class Validator{

  static isEmpty(String value){
    return value.trim().isEmpty;
  }


  static isEmail(String value){
    return RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)*([a-zA-Z]{2,})$').hasMatch(value.trim());
  }


  static isPassword(String value){
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{8,}$').hasMatch(value.trim());
  }

  static isNumber(var value){
    return RegExp(r'^[0-9]+$').hasMatch(value.trim());
  }

  static isEmptyObject(var object){
    var isEmpty=true;
    object.forEach((key, value){
      if(value!=null){
        isEmpty=false;
      }
    });
    return isEmpty;
  }
}