x= 1
import mod2

print(x, end=' ')  # My global X
print(mod2.x, end=' ') # mod2's X
print(mod2.mod3.x) # Nested mod3's X