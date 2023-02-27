import copy
import math


def objects(a):
  # Assume a = [1,2,[3,4,5]]
  # Assign a equal to the variable b that they should have same id address
  b = a

  # Tip: When element in a[2] changes value, c should also change. They shouldn't have same id.
  # Assign a copy of a to the variable c
  c = copy.copy(a)

  # Tip: When element in a[2] changes value, but d doesn't change. They shouldn't have same id.
  # Assign a deep copy of a to the variable d
  d = copy.deepcopy(a)

  # Assign the id of a to the variable id_a
  id_a = id(a)

  return b, c, d, id_a


def prime_number(number):
  """
    This is to review interactive loops and if statements
    You need to write for loop to make a list output of the prime number from 2 to the number.
    The range of numbers should not include the number as input.
    Example1:
            Input: number = 10
            Output:[2,3,5,7]
    Example2:
            Input: number = 100
            Output:[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    Example3:
            Input: number = 7
            Output:[2,3,5]
    """

  num = []
  #Write your code here
  #Check if each number in the range from 2 to number (excluding number) is prime and add it to the num list if it is
  for i in range(2, number):
    is_prime = True
    for j in range(2, int(math.sqrt(i)) + 1):
      if i % j == 0:
        is_prime = False
        break
    if is_prime:
      num.append(i)
  return num


# print("prime_number: ")
# print("===========")

# print(prime_number(10))
# print(prime_number(100))
# print(prime_number(7))

# print("")


def while_loop(number):
  """
    This is to review interactive loops and error statements
    At first,  you need to write try statement to check String input,
    If input is not an integer number, output will be String "Error".
    Finally you need to write a while loop to calculate the sum of num, num - 1, num -2,.....,1.
    Example1:
            Input: "3"
            Output: 6
            Explanation: 3 + 2 + 1 = 6
    Example2:
            Input: "Hello"
            Output: "Error"
            Explanation: Checked as a String in try statement, return "Error" with except statement.
    Example3:
            Input: "-1"
            Output: 0
            Explanation: It is an integer but nothing to do in while loop, so return defualt value as 0.
    """
  total = 0
  #Write your code here
  try:
    num = int(number)
  except ValueError:
    return "Error"
  while num > 0:
    total += num
    num -= 1

  return total if total > 0 else 0


# print("while_loop: ")
# print("===========")

# print(while_loop(3))
# print(while_loop("Hello"))
# print(while_loop(-1))
