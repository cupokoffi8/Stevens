"""
QUESTION 1:
========================================================================================================
Give a list of numbers, write a function to find the maximum number in the list.
Note: For the purpose of this problem, we define empty list will return None.

NOTE: DO NOT USE "MAX" KEYWORD. WRITE algorithm using loop. 

Example 1:
========================================
Input: [10, 5, 20, 15, 25]
Output: 25
Example 2:
========================================
Input:[10,10,10]
Output: 10
Example 3:
========================================
Input: []
Output: None
"""

def find_maximum(numbers): 
    # If no list or emptry list 
    if not numbers:
        return None

    max_num = numbers[0]

    for num in numbers:
        if num > max_num:
            max_num = num

    return max_num



"""
QUESTION 2: 
========================================================================================================
Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
Write a function named generateParenthesis that takes an integer as an input and returns a list of strings 
as an output. Note that you can define a function inside a function if necessary.
Example 1:
========================================
Input: 0
Output: ['']
Example 2:
========================================
Input: 1
Output: ['()']
Example 3:
========================================
Input: 2
Output: ['(())', '()()']
Example 4:
========================================
Input: 3
Output: ['((()))', '(()())', '(())()', '()(())', '()()()'])
"""

def generateParenthesis(n):
    def generate(s, left, right, res):
        if left == n and right == n:
            res.append(s)
            return
        if left < n:
            generate(s+'(', left+1, right, res)
        if right < left:
            generate(s+')', left, right+1, res)
    
    res = []
    generate('', 0, 0, res)
    return res

"""
QUESTION 3: 
========================================================================================================
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.
Note: For the purpose of this problem, we define empty string as valid palindrome.
Example 1:
========================================
Input: "A man, a plan, a canal: Panama"
Output: true

Explanation:
After removing non-alphanumeric charactors and ignoring cases, the input is:  amanaplanacanalPanama
which reads the same as backward and forward, so it is true.

Example 2:
=========================================
Input: "race a car"
Output: false
Write a function named isPalindrome that takes a string as an input and returns a bool as an output.

Explanation:
After removing non-alphanumeric charactors and ignoring cases, the input is:  raceacar
which does not read the same as backward and forward, so it is false.
"""

def isPalindrome(x):
    x = ''.join(e for e in x if e.isalnum()).lower() 
    return x == x[::-1] 