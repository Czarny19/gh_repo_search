import 'dart:convert' show jsonDecode;
import 'dart:io' show File;

class TestUtils {
  static Future<dynamic> loadJsonFile(String fileName) async {
    final file = File('test_resources/$fileName.json');
    return jsonDecode(await file.readAsString());
  }
}
