class GenaralResponse {
  //final int result;
  var data;
  final String message;

  //GenaralResponse({ this.data = null, this.message = ''});
  GenaralResponse({ this.message = ''});

  factory GenaralResponse.fromJson(Map<String, dynamic> responsejson) {
    final message = responsejson['message'] as String;
    //final data    = responsejson['data'] ?? "";

    //return GenaralResponse(message: message, data: data);
    return GenaralResponse(message: message);
  }
}
