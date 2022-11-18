#include <iomanip>
#include <iostream>
using namespace std;

class Matrix {
private:
  uint32_t rows;
  uint32_t cols;
  double **m;

  Matrix(uint32_t rows, uint32_t cols)
      : rows(rows), cols(cols), m(new double *[rows]) {
    for (int i = 0; i < rows; i++) {
      m[i] = (double *)new double[cols];
    }
  }

public:
  Matrix(uint32_t rows, uint32_t cols, double initial) {
    // Matrix(rows, cols);
    this->rows = rows;
    this->cols = cols;
    m = new double *[rows];
    for (int i = 0; i < rows; i++) {
      m[i] = (double *)new double[cols];
    }

    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        m[i][j] = initial;
      }
    }
    m[0][3] = 0.0;
  }

  // copy constructor
  Matrix &operator=(const Matrix &m1) {
    Matrix(m1.rows, m1.cols);
    for (int i = 0; i < rows; i++) {
      for (int j = 0; j < cols; j++) {
        m[i][j] = m1.m[i][j];
      }
    }
    return *this;
  }

  // move constructor
  friend Matrix move(Matrix &m1) {
    Matrix m2 = Matrix(m1.rows, m1.cols, 0.0);
    m2 = m1;
    m1.m = nullptr;
    return m2;
  }

  friend ostream &operator<<(ostream &o, Matrix a) {
    for (int i = 0; i < a.rows; i++) {
      for (int j = 0; j < a.cols; j++) {
        o << a.m[i][j] << " ";
      }
      o << endl;
    }
    return o;
  }
  double operator()(uint32_t row, uint32_t col) const {
    return this->m[row - 1][col - 1];
  }
  double &operator()(uint32_t row, uint32_t col) {
    return this->m[row - 1][col - 1];
  }

  double *operator[](uint32_t row) { return this->m[row - 1]; }

  friend Matrix operator+(Matrix m1, Matrix m2) {
    Matrix m3(m1.rows, m1.cols, 0.0);
    for (int j = 0; j < m1.cols; j++) {
      for (int i = 0; i < m1.rows; i++) {
        m3.m[i][j] = m1.m[i][j] + m2.m[i][j];
      }
    }
    return m3;
  }
};

int main() {
  cout << "\n########" << endl;
  cout << "Main Problem" << endl;
  cout << "########\n" << endl;
  cout << setprecision(1) << fixed;
  // Create matrix a with 4 rows and 3 columns filled with values in zero
  Matrix a(4, 3, 0.0);
  // print out the complete matrix
  cout << a << endl;
  // print out one element in the matrix
  // overload of () return const value

  cout << a(2, 3) << endl;
  // change one element in a(2,2) equal 1.5
  // overload of () assign reference to 1.5
  a(2, 2) = 1.5;
  // print out one element in the matrix
  cout << "\n" << a << endl;
  // change one element in a(2,1) using operator [] ==> a[2][1] equal 2.5
  // Overload of []

  a[2][1] = 2.5;
  a[2][2] = a[2][1];
  cout << "\n" << a << endl;

  // Create b matrix and add it to a and save result inn matrix c
  Matrix b(4, 3, 1.0);
  Matrix c = a + b;
  cout << "\n" << c << '\n';

  cout << "\n";
  cout << "====[ end ]====" << endl;
  cout << "               " << endl;

  return 0;
}
