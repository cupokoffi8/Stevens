
import math

def calculate():
    a=3
    b=4

    # Add a and b then assign the sum to variable c
    c = a + b

    # Subtract c by 1 then divide the Difference by 5.0 then assign the Quotient to variable q
    q = (c - 1) / 5.0

    # Assign the type of q to a new variable type_q
    type_q = type(q)

    return c, q, type_q


def string_formatting():
    math_pi = 3.141592653589793

    # Format the variable math_pi as a string, keep the 6 decimal space, assign it to variable string_pi
    string_pi = '{:.6f}'.format(math_pi)

    ####
    large_number = 100000000

    # Format large_number to a string comma_string with Comma separator.
    comma_string = '{:,}'.format(large_number)

    # Format large_number to a string exp_string with Exponent notation(keep 2 exponent space).
    exp_string = '{:.2e}'.format(large_number)

    ####
    small_number = 13

    # Format small_number to a string center_string in Center aligned(width 10) format.
    center_string = '{:^10}'.format(small_number)

    # Left pad small_number with zeros(left padding, width 2) to string left_string
    left_string = '{:0>2}'.format(small_number)

    return string_pi, comma_string, exp_string, center_string, left_string


def build_in():
    #### Use math package for the following questions
    # Assign Ratio of circumference to diameter(Pi) to a variable math_pi
    math_pi = math.pi

    # Assign Euler's number (e) to a variable math_e
    math_e = math.e

    # Assign the sin value of math_pi to variable sin_pi
    sin_pi = math.sin(math.pi)

    # Assign the square root of 2 to variable square_root_2
    square_root_2 = math.sqrt(2)

    #### Use build in function
    # Assign absolute value of -2 to variable abs_2
    abs_2 = abs(-2)

    return math_pi, math_e, sin_pi, square_root_2, abs_2


def set_op():
    S1 = {1, 2, 3, 4}
    S2 = {3, 4, 5, 6}

    # Add 0 to set S1
    S1.add(0)

    # Assign the union of S1 and S2 to variable union_s
    union_s = S1.union(S2)

    # Assign the sum of all items in union_s to variable sum_s
    sum_s = sum(union_s)

    return S1, union_s, sum_s



calculate()
string_formatting()
build_in()
set_op()