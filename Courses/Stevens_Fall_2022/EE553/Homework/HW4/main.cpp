#include <iostream>
#include <time.h>

using namespace std;

class JulianDate {

  int year;
  int month;
  int day;
  double hour;
  double mins;
  double secs;

public:
  JulianDate(int y = 0, int m = 0, int d = 0, double h = 0, double mn = 0,
             double s = 0) {
    this->year = y;
    this->month = m;
    this->day = d;
    this->hour = h;
    this->mins = mn;
    this->secs = s;
  }

  double calc_juliandate() {

    double a = (14 - month) / 12;
    double m = month + 12 * a - 3;
    double y = year + 4800 - a;

    double date =
        day + ((153 * m + 2) / 5) + 365 * y + y / 4 - y / 100 + y / 400 - 32045;

    if (hour == 0 && mins == 0 && secs == 0) {
      int i = date;
      return i;
    } else {
      if (hour > 24 || mins > 1440 || secs > 86400) {
        cout << "\033[1m\033[0m"
             << "\nHours/minutes/seconds exceed limt for one day\n"
             << endl;
        return date;
      } else {
        cout << "\033[1m\033[0m"
             << "\nHours: " << hour;
        cout << "\n";
        cout << "Mins: " << mins;
        cout << "\n";
        cout << "Secs: " << secs;
        cout << "\n";

        if (hour != 0 && hour <= 24) {
          double hr = hour / 24;
          cout << "\nAdd: " << hr << " to date";
          cout << "\n" << endl;
          date += hr;
        }
        if (mins != 0 && mins <= 1440) {
          double mi = mins / 1440;
          cout << "\nAdd: " << mi << " to date";
          cout << "\n" << endl;
          date += mi;
        }
        if (secs != 0 && secs <= 86400) {
          double sc = secs / 86400;
          cout << "\nAdd: " << sc << " to date";
          cout << "\n" << endl;
          date += sc;
        }

        return date;
      }
    }
  }

  double diff_calc_juliandate(JulianDate date) {
    double d1 = this->calc_juliandate();
    double d2 = date.calc_juliandate();

    cout << "d1: " << d1 << endl;
    cout << "d2: " << d2 << endl;

    (d1 < d2) ? d1 = d2 - d1 : d1 -= d2;

    return d1;
  }
};

int main() {

  cout << "\n########" << endl;
  cout << "Main Problem" << endl;
  cout << "########\n" << endl;

  cout.precision(20);
  JulianDate z(1776, 7, 4, 0, 0, 0);

  JulianDate x(2007, 2, 8, 0, 0, 0);

  double z1 = z.calc_juliandate();
  cout << "Test 7/4/1776 [Should be 2369916]:\n";
  cout << "\033[1m\033[33m" << z1 << endl;
  cout << "\n";

  double x1 = x.calc_juliandate();
  cout << "\033[1m\033[0m"
       << "2/8/2007 to Julian: \n";
  cout << "\033[1m\033[33m" << x1 << endl;
  cout << "\n";

  JulianDate y(2000, 12, 31, 0, 0, 1);
  cout << "\033[1m\033[0m"
       << "12/31/2000 to Julian: \n";
  double y1 = y.calc_juliandate();
  cout << "\033[1m\033[33m" << y1 << endl;
  cout << "\n";

  double diff = x.diff_calc_juliandate(y);
  cout << "\033[1m\033[0m"
       << "\n2/8/2007 and 12/31/2000 difference: \n"
       << endl;
  cout << "\033[1m\033[35m" << diff << endl;
  cout << "\n";

  cout << "\n";
  cout << "\033[1m\033[0m"
       << "Manual subtraction instead: " << endl;
  cout << "2/8/2007 and 12/31/2000 difference: \n" << endl;
  cout << "\033[1m\033[35m" << x1 - y1 << endl;
  cout << "\n";

  cout << "\033[1m\033[0m"
       << "====[ end ]====" << endl;

  return 0;
}
