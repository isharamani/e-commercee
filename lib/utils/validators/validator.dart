class TValidator{
  static String? validateEmail(String? value){
    if(value==null || value.isEmpty){
      return "Email is requried";
    }

    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if(!emailRegExp.hasMatch(value)){
      return "Invalid email address";
    }
    return null;
  }

  static String? validatePassword(String? value){

    if(value==null || value.isEmpty){
      return "Password is requried";
    }
    if (value.length<6){
      return "Password must be at least 6 character long.";
    }
    if(!value.contains(RegExp(r'[A-Z]'))){
      return "Password must contains at least one character number";
    }
    if(!value.contains(RegExp(r'[0-9]'))){
      return "Password must contains at least one number";
    }
    if(!value.contains(RegExp(r'[!@#$%^&*()?";{}|<>]'))){
      return "Password must contains at least one special number";
    }
    return null;
  }

  static String? validatePhoneNumber(String? value){
    if(value==null || value.isEmpty){
      return "Phone number is required";
    }

    final phoneRegExp= RegExp(r'^\d{10}$');

    if(!phoneRegExp.hasMatch(value)){
      return "Invalid Phone number format (10 digit required)";
    }
    return null;
  }
}