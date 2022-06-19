# Homework 3

Name: Yinan Qiao 
PID: A17151776
Account: \<cs15lfa21lo@ieng6@ucsd.edu\>  

## Getting Started

Login to your 15L account either from a lab machine or via `ssh`. From your
home directory, enter the following commands:

```
$ gethw
$ cd ~/homework/hw3
$ vim hw3.md
```

Answer these questions in the `hw3.md` file you now have open.

_Don't forget to change the file header!_

1. You are about to sell your personal laptop because you saved up enough money for an upgrade! However, you don’t want to lose all the hard work you did for CSE 15L (your favorite class!). To save your work, you decide to copy your work on the `ieng6.ucsd.edu` server. What command (including all options and arguments) can you use to copy the `~/School/CSE15L` folder on your current laptop to your home directory in your remote CSE 15L account? Assume your CSE 15L username `cs15lsp21zzz`. **(1 point)**

        $ scp -r ~/School/CSE15L cs15lsp21zzz@ieng6-201.ucsd.edu:~

2. After buying a new laptop, you want to access your CSE15L account to continue editing your files. What command (including all options and arguments) can you use to log in to the remote `ieng6.ucsd.edu` server? Assume your username is the same as in the last question. **(1 point)**

        $ ssh cs15lsp21zzz@ieng6-201.ucsd.edu

3. However, when you first saved all your homework for CSE 15L, you didn’t organize everything well, so your files aren’t easily accessible. Luckily, you still remember that the file you want to find is located in a subdirectory of `~/School/CSE15L` and that its name starts with `assignment3`. What is the command (including all options and arguments) you can use to find a path to your homework? **(1 point)**

        $ find ~/School/CSE15L -iname "assignment3*"


4. Using the command from question 3, you found that the path of the file you want is `~/School/CSE15L/Homework/assignment3.md`. From your home directory, what **single** command (including all options and arguments) allows you to scroll through the content of a file **without opening it in an editor or touching your mouse/touchpad**? **(1 point)**

        less ~/School/CSE15L/Homework/assignment3.md

5. You want to write a bash script to automate testing one of your scripting projects. At the top of the newly created file `grading.sh`, what line should you put to indicate to the OS that the following commands should be invoked in a bash shell. **(1 point)**

        #!/usr/bin/bash

6. When you try to execute the script that you just wrote with `./grading.sh`, your terminal says `Permission denied`, so you wonder what are the exact permissions of your script. You know your script is located in your current working directory. What is the command (including all options and arguments) to use to check the permissions of **ALL** your files in your current directory? **(1 point)**

        $ ls -l

7. After executing the command in the previous question, you find that the permissions of the script are `-rw-r--r--`. What command (including all options and arguments) can you use so that you (the owner) can execute the file grading.sh while keeping the permissions for group and others the same? **(1 point)**

        $ chmod u+x grading.sh

8. After changing the permissions and running your script, you realized that your project doesn’t work as expected. You opened up your favorite IDE, IntelliJ, and ran the program with the debugger. After the program finishes its execution, what is the name of the panel on which should you be able to find your stack traces?  **(1 point)**

        in the left pane called "Frames"

9. After working on your homework and running your tests, you want to make sure no further edits are made to files in your `~/School` directory. What command (including all options and arguments) can you use to remove write and execute permissions for all users for all the files in `~/School`. Assume you are currently in the home directory. **(1 point)** 

        chomd -R a-wx ~/School

10. In Lab 3, how can you get the exit status of the command `ping facebook.com` after executing it? **(1 point)**

        echo $?

11. In Lab 3, we have you execute `chmod 110 hello.sh`. What permissions do user, group, and other have after the command is executed? **(1 point)**

        the file now can only be executed by usersand groups, but cannot be read or written.

12. We know that the command `ping facebook.com` will give an exit code of 0. Give an example, using `ping` that will
give you an exit code that is not 0. **(1 point)**

        ping sdadfhfvhfhrvfhvgvgvgvgvgfxd.com

## Turnin Procedure:
Be sure your `hw3.md` file is saved on your 15L account in the directory
`~/homework/hw3`. When logged into your 15L account, enter the following
commands:
```
$ cd ~/homework/hw3
$ turnin15L
```
Follow the Autograder prompts, using your UC San Diego email login credentials,
and you should be good to go! Make sure you get the confirmation email from
Autograder. Additionally, you can log in to Autograder to verify your submission.

