///all validation logic
final class Validation {
  ///Location validate to save name
  static String? locationNameControl(String? value) {
    if (value == null || value.length < 2) {
      return 'Lutfen min 2 karakter giriniz';
    }
    return null;
  }

  static String? frequencyValidator(String? value) {
    if (value?.isEmpty ?? false || RegExp(r'^\d+$').hasMatch(value ?? '')) {
      return 'Lutfen sadece sayi giriniz';
    } else if (value?.isEmpty ?? true) {
      return 'Lutfen Gun degerini sayi olarak giriniz!.';
    }
    return null;
  }
}
