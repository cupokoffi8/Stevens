#include <cmath>
#include <fstream>
#include <iostream>
#include <random> // use this to generate random number
#include <string>
#include <vector> // use C++ STL vector with our struct
using namespace std;

const double G = 6.674 * pow(10, -11);
const double pi = 3.14159265358979323846;
default_random_engine randNum;

struct Vec3d {
  double x, y, z;
};

ostream &operator<<(ostream &s, Vec3d &vector) {
  s << vector.x << ", " << vector.y << ", " << vector.z;
  return s;
}

class Body {
  string name;
  string orbits;
  double mass;
  Vec3d pos;
  Vec3d v;
  Vec3d a;

public:
  Body() {
    name = "";
    orbits = "";
    mass, pos.x, pos.y, pos.z, v.x, v.y, v.z, a.x, a.y, a.z = 0;
  }

  Body(string n, string o, double m, Vec3d p, Vec3d vel, Vec3d acc) {
    name = n;
    orbits = o;
    mass = m;
    pos = p;
    v = vel;
    a = acc;
  }

  friend ostream &operator<<(ostream &s, Body &b) {
    s << "| " << b.name << " | " << b.orbits << " | " << b.mass << " | " << b.pos.x
      << " | " << b.pos.y << " | " << b.pos.z << " | " << b.v.x << " | "
      << b.v.y << " | " << b.v.z << " | " << b.a.x << " | " << b.a.y << " | "
      << b.a.z << " |" << endl;
    return s;
  }

  static auto setAccelerations(vector<Body> &b, int a) {
    int size = b.size();
    for (int i = 0; i < size; i++) {
      b[i].a.x *= a;
      b[i].a.y *= a;
      b[i].a.z *= 0;
    }
    return b;
  }
  // make sure that SolarSystem class is a friend to Body()
  friend class SolarSystem;
};

class SolarSystem {
  vector<Body> bodies;

public:
  SolarSystem() { vector<Body> bodies; }
  SolarSystem(string filename) {

    ifstream solarfile;
    solarfile.open(filename);

    if (solarfile.is_open()) {

      cout << "File is open and ready" << '\n'; 
      cout << " " << '\n'; 
      cout << "=============" << endl; 
      cout << "| Name | Orbits | Mass | PosX | PosY | PosZ | VelX | VelY | VelZ | AccX | AccY | AccZ |" << endl; 
      cout << "=============" << endl; 
      cout << " " << '\n'; 

    } else {
      cout << "File not found!" << '\n';
      cout << "check if path is .././src/***" << '\n';
      cout << " " << '\n';
      return;
    }

    string line;
    while (getline(solarfile, line)) {
      string name, orbits;
      double mass, diam, perihelion, aphelion, solarMass, velocity,
          acceleration, R, rAngle;
      Vec3d newP, newV, newA;
      uniform_real_distribution<double> angle(0, 2 * pi);

      solarfile >> name >> orbits >> mass >> diam >> perihelion >> aphelion;

      if (name == "Sun") {
        solarMass = mass;
      }
      if (orbits == "Sun") {

        R = (aphelion + perihelion) / 2;
        velocity = sqrt(G * solarMass / R);

        rAngle = angle(randNum);
        newV.x = velocity * (R * cos(rAngle));

        rAngle = angle(randNum);
        newV.y = velocity * (R * sin(rAngle));

        newV.z = 0;
        newP.x = (rand() % 11);
        newP.y = (rand() % 11);
        newP.z = (rand() % 11);
        acceleration = pow(velocity, 2) / R;
        rAngle = angle(randNum);
        newA.x = acceleration * (R * cos(rAngle));
        rAngle = angle(randNum);
        newA.y = acceleration * (R * sin(rAngle));
        newA.z = 0;
        Body planet(name, orbits, mass, newP, newV, newA);
        bodies.push_back(planet);
      }
    }
    solarfile.close();
  }
  friend ostream &operator<<(ostream &s, SolarSystem &ss) {
    for (int i = 0; i < ss.bodies.size(); i++) {
      s << ss.bodies[i] << endl;
    }
    return s;
  }

  void stepForward(int a) { bodies = Body::setAccelerations(bodies, a); }

  friend class Body;
};

int main() {
  cout << "########" << endl;
  cout << "Main Problem" << endl;
  cout << "########" << endl;
  cout << "\n";

  SolarSystem s("solarsystem.dat");

  cout << s;

  cout << "=============" << endl;
  cout << "\n";

  int acc = 100;
  s.stepForward(acc);

  cout << "New solar system: " << endl;
  cout << "\n";
  cout << s;

  cout << "====[ end ]====" << endl;
  cout << "               " << endl;
  return 0;
}