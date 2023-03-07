def factorial(n):
	"""assumes n>=0, returns n!"""
	if n == 0: #Base case (tells Python where to stop) 
		return 1
	else: 
		return n*factorial(n-1) #If not base case, keep calling the function 

print(factorial(int(input("Give me a number: "))))

#=======================================================================================

def mySum(L): 
	"""Assume L is a list of numbers, return sum(L)""" 
	if not L: #If list is empty, return 0 
		return 0
	else: #Return first element, plus the remaining (sliced) list (1 element smaller)  
		return L[0] + mySum(L[1:]) 

print(mySum([5, 4, 3, 2, 1]))
