
# Homework 1

Name: Yinan Qiao  
PID: A17151776
Account: \<cs15lfa21lo@ieng6.ucsd.edu\>  

## Getting Started

Login to your 15L account either from a lab machine or via `ssh`. From your
home directory, enter the following commands:

```
$ gethw hw1
$ cd ~/homework/hw1
$ vim hw1.md
```

Answer these questions in the `hw1.md` file you now have open.

___Don't forget to change the file header!___

1. Welcome to CSE 15L! You want to start your first homework assignment but don’t have a directory for all of your CSE 15L files. What command(s) (including any options and arguments) can you use to create a new directory called `assignment1` under a directory called `homework` in your home directory. Assume you are currently in your home directory and that the `homework` directory does not exist yet. **(1 point)**

        $mkdir homework
        $mkdir homework/assignment1

2. Assuming you are still in your home directory, what command (including any options and arguments) can you use to move to your newly created `assignment1` directory. **(1 point)**

        $cd homework/assignment1

3. You are now ready to work on your first assignment! Assume you are in the `homework/assignment1` directory. What command (including any options and arguments) can you use to create a file called `answers.txt`? **(1 point)**

        $touch answers.txt

4. You realize that you would like your file to be a Markdown file instead of a text file so you can add plain-text formatting to your document. What command  (including any options and arguments) can you use to rename the file you just created to `answers.md`? Assume you are currently in the `assignment1` directory you created in question 1. **(1 point)**

        $mv aswers.txt answers.md

5. After renaming your file, you’re ready to start working but your dog comes and steps all over your keyboard! You want to make sure that your dog did not change directories in the process. What command (including any options and arguments) can you use to check the path of your current directory? **(1 point)**

        $pwd

6. You decide to use the Vim text editor to work on your homework assignment in the `answers.md` file. What vim command can you use to flip the case of a **single** letter (lower case to upper case and vice versa)? **(1 point)**

        ~

7. You realize that it might be easier to work on your assignment if you can see line numbers. What is a vim command you can use to enable line numbers when in command mode? **(1 point)**

        :set number

8. It would be a good idea for line numbers to show up by default whenever you open a new Vim file. What is the name of the file you can create in your home directory to save all your Vim settings? **(1 point)**

        the .vimrc file

9. You are almost done with your assignment but noticed that you skipped answering a question. If you are currently in command mode and your cursor is on line 20, what is the single vim command you can use to create an empty line on line 21 and enter insert mode? **(1 point)**

        press "o" on the keyboard

10. You accidentally deleted part of your answer to question 9! Give a single vim command to undo this mistake. **(1 point)**

        press "u" on the keyboard

11. After finishing the answer to the last question, you realized that your answer was incorrect. What vim command can you use to delete lines 20 - 26 (inclusive) of the file if your cursor is on line 20? **(1 point)**

        press "7dd" on the keyboard

12. As you review your assignment, you notice that you skipped writing your CSE 15L username on line 5. What is a valid vim command (in command or normal mode) to jump to line 5 so you can add your username? **(1 point)**

        press "5gg" on the keyboard

13. For each command, describe what the output is.

    1. `echo` (Unix command) **(1 point)**

            echo command can display the string or text passed as an argument after it eg.(echo helloworld)
            on the next command line.

    2. `man` (Unix command) **(1 point)**

            man can display to the user all the user manuals that includes all commands user can use.

    3.  `ls` (Unix command) **(1 point)**

            ls can display all the atributes includes files and directories under current directory

14. In Lab 1, we discussed how we could use the `rm` command. What flag when paired with `rm` will force removal? **(1 point)**

        paired with -f will force removal

15. In Lab 1, we got this error below when attempting to exit out of vim. How can we fix this? You can enter the command or describe how you would fix it.  **(1 point)**

       `E37: No write since last change (add ! to override)`

        if you wanna force save without making any changes and quit:
        :q!

        if you wanna save all changes you made and quit:
        :wq

16. Similar to a question in the Vim quiz from Lab 1, how could we find all occurrences of `Vincent` and replace it with `Nicole` in a file using Vim? **(1 point)**

        :%s/Vincent/Nicole/g

## Turnin Procedure:
Be sure your `hw1.md` file is saved on your 15L account in the directory
`~/homework/hw1`. When logged into your 15L account, enter the following
commands:
```
$ cd ~/homework/hw1
$ turnin15L
```
Follow the Autograder prompts, using your UC San Diego email login credentials,
and you should be good to go! Make sure you get the confirmation email from
Autograder. Additionally, you can log in to Autograder to verify your submission.
