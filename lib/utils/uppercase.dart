extension StringCasingExtension on String {
  String toCapitalizeditem() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCaseitem() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalizeditem())
      .join(' ');
}
