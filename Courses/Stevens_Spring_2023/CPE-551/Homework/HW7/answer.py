"""
Questons 1:
========================================================================================================
Given two positive integers a and b, return the number of common factors of a and b.
x is said to be a common factor of a and b if x divides both a and b exactly.
Example 1:
========================================
Input: a = 12, b = 6
Output: 4
Explanation: They have the common factors: 1, 2, 3, 6.
Example 2:
========================================
Input: a = 25, b = 30
Output: 2
Explanation: They have the common factors: 1, 5.
Example 3:
========================================
Input: a = 3, b = 6
Output: 2
Explanation: They have the common factors: 1, 3.
"""
def commonFactors(a, b):
    ans = 0
    for i in range(1, min(a, b) + 1):
        if a % i == 0 and b % i == 0:
            ans += 1
    return ans 

"""
Questons 2:
========================================================================================================
Given a string s consisting of lowercase English letters, please find and return the first letter that appears twice.
Note:
The letter a is considered to occur twice before the letter b if the second occurrence of a occurs earlier in the string than the second occurrence of b.
s contains at least one letter that occurs twice.
Example 1:
========================================
Input: s = "abccbaacz"
Output: "c"
Explanation: The letter 'c' is the first letter that appears twice, because the second occurrence of 'c' has the smallest subscript among all letters.
Example 2:
========================================
Input: s = "abcdd"
Output: "d"
Explanation: Only the letter 'd' appears twice, so 'd' is returned.
Example 3:
========================================
Input: "acbdefghg"
Output: "g"
Explanation: Only the letter 'g' appears twice, so 'g' is returned.
"""

def repeatedCharacter(s):
    occurs = set()
    for c in s:
        if c in occurs:
            return c
        occurs.add(c)

"""
Questons 3:
========================================================================================================
A sentence consists of words with single spaces between them, and no extra spaces at the beginning or end of the sentence.
You are given a string array sentences , where sentences[i] represents a single sentence .
Please return the maximum number of words in a single sentence.
Example 1:
========================================
Input: sentences = ["alice and bob love apple", "i think so too", "this is great thanks very much"]
Output: 6
Explanation: The third sentence "this is great thanks very much" has 6 words in total.
             So, the single sentence with the most words is the third sentence, which has 6 words in total.
Example 2:
========================================
Input: s = ["please wait", "continue to fight", "continue to win"]
Output: 3
Explanation: In this example, the second and third sentences (in bold italics) have the same number of words.
"""
def mostWordsFound(sentences):
    max_words = 0
    for sentence in sentences:
        words = sentence.split()
        num_words = len(words)
        if num_words > max_words:
            max_words = num_words
    return max_words 