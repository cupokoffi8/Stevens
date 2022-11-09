#include "String.h"
#include <cstring>
#include <iostream>
using namespace std;

String::String() : length(0), string() {
  string = new char[1];
  string[0] = '\0';
}

String::String(char _char) : length(1) {
  string = new char[2];
  string[0] = _char;
  string[1] = '\0';
}

String::String(const char *_string) {
  if (!_string) {
    length = 0;
    string = new char[0];
  } else {
    length = strlen(_string);
    string = new char[length + 1];

    copy(_string, _string + length, string);
    string[length] = '\0';
  }
}

String::String(const String &_string) {
  char *buffer = new char[_string.length + 1];
  copy(_string.string, _string.string + _string.length, buffer);
  buffer[_string.length] = '\0';

  string = buffer;
  length = _string.length;
}

String::String(String &&_string) noexcept {
  const auto buffer = _string.string;

  length = _string.length;
  string = buffer;

  _string.reset();
}

void String::reset() {
  length = 0;
  string = nullptr;
}

String::~String() {
  delete[] string;
  string = nullptr;
}

String::operator const char *() const { return string; }

String &String::operator=(const String &_other) {
  if (this != &_other) {
    char *buffer = new char[_other.length + 1];
    copy(_other.string, _other.string + _other.length + 1, buffer);

    swap(buffer, string);
    length = _other.length;

    delete[] buffer;
  }

  return *this;
}

String String::operator+(const String &_other) const {
  const auto totalLength = length + _other.length;
  char *buffer = new char[totalLength + 1];

  copy(string, string + length, buffer);
  copy(_other.string, _other.string + _other.length, buffer + length);
  buffer[totalLength] = '\0';

  return String(buffer);
}

ostream &operator<<(ostream &_os, const String &_string) {
  _os << _string.string;
  return _os;
}

int main() {
  cout << "########" << endl;
  cout << "Main Problem" << endl;
  cout << "########" << endl;

  // Create String s = abc
  String s = "abc";
  // cout s
  cout << "s is: " << s << '\n';
  // Create String s = def
  String s2 = "def";
  // cout s2
  cout << "s2 is: " << s2 << '\n';
  // create String s3 equal s2
  String s3 = s2; // copy constructor
  // cout s3
  cout << "s3 is: " << s3 << " copy constructor " << '\n';
  //	Create String s4 that is assigned to s added to s2
  String s4 = s + s2; // abcdef // copy constructor
  // cout s4
  cout << "s4 is: " << s4 << " copy constructor of s + s2" << '\n';
  // Create s5 and move s4
  String s5 = move(s4); // move constructor
  // cout s5
  cout << "s5 is: " << s5 << '\n';
  cout << "cout s4 should give you error after move()" << endl;
  cout << s4 << '\n';
  cout << "====[ end ]====" << endl;
  cout << "               " << endl;

  return 0;
}