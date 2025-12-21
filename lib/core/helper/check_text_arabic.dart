bool isRtlText(String text) {
  final rtlRegex = RegExp(r'[\u0590-\u08FF]');
  return rtlRegex.hasMatch(text);
}

bool isArabic(String text) {
  final arabicRegex = RegExp(r'[\u0600-\u06FF]');
  return arabicRegex.hasMatch(text);
}