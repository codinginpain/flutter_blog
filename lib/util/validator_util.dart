import 'package:validators/validators.dart';

Function validatorUserName() {
  return (String? value) {
    if (!isAlphanumeric(value!)) {
      return "User name는 영어만 입력 할 수 있습니다";
    } else {
      return null;
    }
  };
}

Function validatorPassword() {
  return (String? value) {
    if (!isLength(value!, 4, 12)) {
      return "Password 4자 이상 12자 이하 입니다.";
    } else {
      return null;
    }
  };
}

Function validatorEmail() {
  return (String? value) {
    if (!isEmail(value!)) {
      return "Email 형식이 맞지 않습니다";
    } else {
      return null;
    }
  };
}

Function validatorEmpty(inputName) {
  return (String? value) {
    if (value!.isEmpty) {
      print("빈값 입니다");
      return "$inputName에 값을 입력 하셔야합니다";
    }
    return null;
  };
}
