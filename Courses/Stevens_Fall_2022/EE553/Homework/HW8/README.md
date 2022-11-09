[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=9244019&assignment_repo_type=AssignmentRepo)
## Alex Gaskins

# Assignment 8


# Problem/Question:
- Problem:
    - Design String class with private integer variable length of string and pointer to character str
    - make the following functions
        - default constructor String (length, str) with length = zero and str pointer to nullptr
        - non-default constructor that take const character pointer
            - Use strlen() function to find the char length
            - Creat new dynamic array str with the new length
            - You will have to loop to assign each character
        - make deconstruct ~String that delete char pointer
        - Overload << operator to print out string.
        - Copy constructor String
        - Move constructor String
        - Assign operator = for copy constructor
        - Overload + operator to add/combine to String cat + dog => catdog

  Hint: for overload operator use friend keyword.


## TO-DO:
- clone your repo to your local computer
    - ''' <b>git clone repo_https_url</b> '''
    - repo https url is found under code tab in your github
- Edit your name on top on README.md file.
- Edit the main function (file name: main.cpp):
    - Write your class String in main.cpp
    - your class should work fine with int main(){}
- Push your answers
    - use git in your terminal to add files, and add comments on your commits, and finally submit files
        - ''' <b>git add specific_file1.x specific_file2.x</b> '''
        - ''' <b>git commit -m "add message here for commits"</b> '''
        - ''' <b>git push</b> ''' 
     
    
      
    
