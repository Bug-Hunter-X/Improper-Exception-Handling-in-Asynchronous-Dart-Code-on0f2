```dart
Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      //Provide more informative error messages
      throw Exception('HTTP request failed with status: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    print('SocketException: $e'); // Log the specific error
    return null; //Or throw a custom exception
  } on FormatException catch (e) {
    print('FormatException: $e'); //Handle JSON decoding error specifically
    return null; //Or throw a custom exception
  } catch (e) {
    print('An unexpected error occurred: $e');
    return null; //Or throw a custom exception
  }
}
```