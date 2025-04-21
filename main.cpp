#include <iostream>
using namespace std;
// **Обратный порядок слов**: 
// Напишите функцию, которая принимает строку в качестве входного параметра и возвращает строку, в которой слова записаны в обратном порядке./

string join(string str, string word) {
  string newStr = "";
  if (str.length() == 0) newStr = word;
  else newStr = word + ' ' + str;
  return newStr; 
}

string reverse(string str) {
  string word = "", newStr = "";
  for(size_t i = 0; i < str.length(); i++) {
    if(str[i] == ' ') {
      newStr = join(newStr, word);
      word = "";
    } else {
      word += str[i];
    }
  }
  if (word.length() > 0) newStr = join(newStr, word); // Последнее слово
  return newStr;
}

int main() {
  string str;
  cout << "Input text: ";
  getline(cin, str);
  string newStr = reverse(str);
  cout << "Result: " << newStr << endl;
  return 0;
}
