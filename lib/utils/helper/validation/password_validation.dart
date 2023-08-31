import 'package:LinkedIt/utils/helper/validation/validator.dart';

class MinLengthValidation implements Validator {
  final int minLength;

  MinLengthValidation(this.minLength);

  @override
  bool isValid(String password) {
    return password.length >= minLength;
  }
}

class MinNormalCharValidation implements Validator {
  final int normalCount;

  MinNormalCharValidation(this.normalCount);

  @override
  bool isValid(String password) {
    String pattern = '^(.*?[A-Z]){$normalCount,}';
    return password.toUpperCase().contains(RegExp(pattern));
  }
}

class MinUppercaseValidation implements Validator {
  final int uppercaseCount;

  MinUppercaseValidation(this.uppercaseCount);

  @override
  bool isValid(String password) {
    String pattern = '^(.*?[A-Z]){$uppercaseCount,}';
    return password.contains(RegExp(pattern));
  }
}

class MinLowercaseValidation implements Validator {
  final int lowercaseCount;

  MinLowercaseValidation(this.lowercaseCount);

  @override
  bool isValid(String password) {
    String pattern = '^(.*?[a-z]){$lowercaseCount,}';
    return password.contains(RegExp(pattern));
  }
}

class MinNumericCharValidation implements Validator {
  final int numericCount;

  MinNumericCharValidation(this.numericCount);

  @override
  bool isValid(String password) {
    String pattern = '^(.*?[0-9]){$numericCount,}';
    return password.contains(RegExp(pattern));
  }
}

class MinSpecialCharValidation implements Validator {
  final int specialCount;

  MinSpecialCharValidation(this.specialCount);

  @override
  bool isValid(String password) {
    String pattern =
        r"^(.*?[$&+,\:;/=?@#|'<>.^*()_%!-]){" + specialCount.toString() + ",}";
    return password.contains(RegExp(pattern));
  }
}

class PasswordValidator {
  final List<Validator> _validation;

  PasswordValidator(this._validation);

  bool validate(String password) {
    return _validation.every((rule) => rule.isValid(password));
  }
}
