class AppException implements Exception {
  final massage;
  final prefix;
  AppException([this.massage, this.prefix]);

  String toString() {
    return "$prefix,$massage";
  }
}

class InternetException extends AppException {
  InternetException(String massage) : super(massage, "Internet Error");
}

class RequestTimeOut extends AppException {
  RequestTimeOut(String massage) : super(massage, "Request Time Out");
}

class ServerException extends AppException {
  ServerException(String massage) : super(massage, "Internal Server Error");
}
