#pragma once
#include <cstring>
#include <iostream>

class String {
public:
  String();
  String(char _char);
  String(const char *_string);

  // Copy Constructor
  String(const String &_string);

  // Move Constructor
  String(String &&_string) noexcept;

  ~String();

  void reset();

  // Cast to const char
  operator const char *() const;

  // Copy Assignment Operator
  String &operator=(const String &_other);

  // Add Operators
  String operator+(const String &_other) const;

  // Stream Operator
  friend ostream &operator<<(ostream &_os, const String &_string);

private:
  int length;
  char *string;
};