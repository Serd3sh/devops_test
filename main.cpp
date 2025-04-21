#include <iostream>

// **Обратный порядок слов**: 
// Напишите функцию, которая принимает строку в качестве входного параметра и возвращает строку, в которой слова записаны в обратном порядке./

std::string join(std::string str, std::string word) {
  std::string newStr = "";
  if(str.length() == 0) newStr = word;
  else newStr = word + ' ' + str;
  return newStr; 
}

std::string reverse(std::string str) {
  std::string word = "", newStr = "";
  for(int i = 0; i < str.length(); i++) {
    if(str[i] == ' ') {
      newStr = join(newStr, word);
      word = "";
    } else {
      word += str[i];
    }
  }
  if(word.length() > 0) newStr = join(newStr, word); // Последнее слово
  return newStr;
}

int main() {
  std::string str = "Some string for example!";
  std::string newStr = reverse(str);
  std::cout << "Result: " << newStr << std::endl;
  return 0;
}
