///all validation logic
class Validation {

  ///Location validate to save name
  static String? locationNameControl(String? value) {
    if (value == null || value.length < 2) {
      return 'Lutfen min 2 karakter giriniz';
    }
    return null;
  }
  
}
