class ApiConfiguration {
  static const url = 'http://192.168.2.47:3000/api/v1/';

  Uri getApi(String apiName) {
    return Uri.parse('$url$apiName');
  }

  static Map<String, String> header = {
    'Accept': '*/*',
    'Content-Type': 'application/json'
  };
}
