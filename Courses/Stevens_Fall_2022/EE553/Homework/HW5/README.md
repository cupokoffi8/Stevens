[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=8780596&assignment_repo_type=AssignmentRepo)
## Alexander Gaskins

# Assignment 5


# Problem/Question:
- Problem:
  - Use struct Vec3d with Body class. and overload << operator for Vec3d 
  - Design a Body class that set individual planet information 
  - Design a SolarSystem class that read data to save it in vector of class Body and overload operation to print all information 
  - **Your program will read data file and use only planets orbiting Sun.**
  - Read main.cpp and follow it for more instructions
  - Example of .dat file 
  
#### Example for .dat file
| Name    | Orbits | Mass(kg) | Diam(m)  | Perihelion(m) | Aphelion(m) | orbPeriod(days) | rotationalPeriod(hours) | axialtilt(deg) | orbinclin(deg) |
| ------- | ------ | -------- | -------- | ------------- | ----------- | --------------- | ----------------------- | -------------- | -------------- |
| Sun     | NaN    | 1.99E+30 | 1.39E+09 | 0             | 0           | 0               | 587.28                  | 0              | 0              |
| Mercury | Sun    | 3.30E+23 | 4.88E+06 | 4.60E+10      | 6.98E+10    | 88              | 1407.6                  | 0.01           | 7              |
| Venus   | Sun    | 4.87E+24 | 1.21E+07 | 1.08E+11      | 1.09E+11    | 224.7           | \-5832.5                | 177.4          | 3.4            |
| Earth   | Sun    | 5.97E+24 | 1.28E+07 | 1.47E+11      | 1.52E+11    | 365.2425        | 23.9                    | 23.4           | 0              |
| Moon    | Earth  | 7.30E+22 | 3.48E+06 | 3.63E+08      | 4.06E+08    | 27.3            | 655.7                   | 6.7            | 5.1            |

## TO-DO:
  - clone your repo to your local computer
    - ''' <b>git clone repo_https_url</b> '''
    - repo https url is found under code tab in your github
  - Edit your name on top on README.md file.
  - Edit the main function (file name: main.cpp):
    - Write your classes Body and SolarSystem in main.cpp
  - Use data file in src folder:
    - solarsystem.dat
  - Push your answers
    - use git in your terminal to add files, and add comments on your commits, and finally submit files
      - ''' <b>git add specific_file1.x specific_file2.x</b> '''
      - ''' <b>git commit -m "add message here for commits"</b> '''
      - ''' <b>git push</b> ''' 
     
    
      
    
