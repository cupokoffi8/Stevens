[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8471620&assignment_repo_type=AssignmentRepo)
## Alexander Gaskins 

# Assignment 2


# Problem/Question:
- Problem 1: \
  Write a function that check if number is prime or not


- Problem 2: \
  Write C++ code that can perform the following task: 
  1) read in src/robotpath.dat
    each line contains distance (in meters) and angle (in degrees) that is in polar coordinates form
  2) convert angle to radians
   Good design principle: always keep numbers in one internal format
   in this case, since sin, cos, etc use radians, do all computation
   and store all variables in radians.
  3) print out x,y location at each step accurate to 8 digits, using setprecision()\
  https://keisan.casio.com/exec/system/1223526375 \
  https://keisan.casio.com/exec/system/1223527679
  4) use the calculated x and y to find the angle in radian.
  

- Problem 3: \
  Write code that Calculate the wind chill using the below formula: \
  Wind Chill = 35.74 + 0.6215T – 35.75(V^0.16) + 0.4275T(V^0.16) \
  Note: Windchill Temperature is only defined for temperatures at or below 50 degrees F and wind speeds above 3 mph. \
  Hint: design a function using the above formula


## TO-DO:
  - clone your repo to your local computer
    - ''' <b>git clone repo_https_url</b> '''
    - repo https url is found under code tab in your github
  - Edit your name on top on README.md file.
  - Edit the main function (file name: main.cpp) and read it to understand the calling of functionWind.cpp and functionPrime.cpp
    - follow instruction in main.cpp for each problem 
  - Edit files in src folder:
      - functionWind.cpp
      - functionPrime.cpp
      - the function files have the coded prototype for the function to start writing your code.
      - robotpath.dat file is in src folder to use for problem two. 
      - Push your answers
        - use git in your terminal to add files, and add comments on your commits, and finally submit files
          - ''' <b>git add specific_file1.x specific_file2.x</b> '''
          - ''' <b>git commit -m "add message here for commits"</b> '''
          - ''' <b>git push</b> ''' 

