class appexception implements Exception {
  final _message;
  final _prefix;
  appexception(this._message, this._prefix) {}
  String toString() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends appexception {
  FetchDataException([String? _message])
      : super(_message, 'Error During Communication');
}

class BadrequestException extends appexception {
  BadrequestException([String? _message]) : super(_message, 'invalid request');
}

class UnautorisedException extends appexception {
  UnautorisedException([String? _message])
      : super(_message, 'Unautorised request');
}

class InvalidInputException extends appexception {
  InvalidInputException([String? _message]) : super(_message, 'Invalid Input');
}
