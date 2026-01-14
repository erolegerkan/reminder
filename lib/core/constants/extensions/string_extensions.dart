extension StringExtensions on String{
  String toLowerCamelCase(){
    List<String> words = trim().split(" ");
    words[0] = words[0].toLowerCase();

    String wordsString = "";
    for (int i = 1; i < words.length; i++) {
      words[i] = words[i].substring(0,1).toUpperCase() + words[i].substring(1).toLowerCase();
      wordsString += words[i];
    }
    return words[0] + wordsString;
  }
}