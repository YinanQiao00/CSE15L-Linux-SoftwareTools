
# Homework 4

Name: Yinan Qiao

PID: A17151776

Account: \<cs15lfa21lo@ieng6.ucsd.edu\>


## Getting Started

Login to your 15L account either from a lab machine or via `ssh`. From your
home directory, enter the following commands:

```
$ gethw
$ cd ~/homework/hw4
$ vim hw4.md
```

Answer these questions in the `hw4.md` file you now have open.

_Don't forget to change the file header!_

1. Suppose you are testing a function using the JUnit framework, and want to check whether 
some variable `foo` equals 5. What is the one line of code to test this? **(1 point)**

        assertEquals(5,foo)

2. From Lab 4, explain the purpose of our `CLASSES` variable for 
our Makefile. **(1 point)**

        the variable CLASSES is a list of ListIntegerInterface.class IntegerListTester.class and IntegerList.class
        When we have variable CLASSES defined we can use $(CLASSESE) in the make file whenver we want to refer to those three files.
        Meaning use all of the three classes using the single variable this way.

3. Suppose you have a target `compile` with dependencies and no actions. If you have not made changes to those dependencies since the last `make compile`, what happens when you run `make compile` again? **(1 point)**

        since all dependencies are up-to-date, recompilations of them won'be needed and thus won't be done.

4. You are a renowned software developer and you have been hired by an old
British boyband that wants to make a comeback in the industry. They ask you to
make an app to showcase their new music and events. In your implementation, you
have a class for each of the 5 group members, but you find that compiling each  
band member’s class takes more time than you currently have. Luckily, you  
remember that you learned about Makefiles in your favorite online class! You
decide to create a Makefile to compile your classes to make testing more
efficient. Since Makefiles can have multiple rules, write out the general
structure of a single rule and explain how it should be interpreted.
**(1 point)**

        the interpretation would be, if we want to make the target, first make ll its dependencies then perform all the actions.
        a simple make file rule has a target which refers to a file name in the target working directory. a dependency in a rule
can be the name of other targets in the makefile. the action will be performed on thoes dependencies if any of them are newer than the target.
runing make target will execute the actions in the rule that has atarget name.
####format below.
target: dependency1...dependencyN
	action1
	...
	actionN
(use a tab before each action)

5. The lead singer, Harry Styles, wants to see his name printed every time his
rule is run. Write out the action that will print the phrase `Harry Styles` to the
terminal. **(1 point)**

        echo "Harry Styles"

6. Harry Styles insists that his rule is run by default whenever `make` is called.  
When you run `make` with no arguments, which rule is used by default?
**(1 points)**

        running make will execute the first rule made by default

7. Your Makefile contains a rule named `rocks`. What line do you need to add to
your Makefile to ensure it is run every time `make rocks` is called, even if
`rocks` is a file that exists in the current directory? **(1 points)**

                .PHONY: rocks

8. To help keep up with the endless demands, you create the following structure.
Explain what the following lines do in a Makefile:  **(1 point)**

    ```Makefile
    .SUFFIXES: .java .class
    .java.class:
        javac $<
    ```

    the first two lines will tell the relationship between .java and .class files, meaning 
inorder to make a .class file, it wil first run javac on corresponding .java file.

9. Makefile Practice: Tired with the old boys, you settle down to relive simpler
times, but make some errors in your Makefile. Can you fix them? See the Makefile 
in your `~/homework/hw4` directory for details **(6 points)**

## Turnin Procedure:
Be sure your `hw4.md` file is saved on your 15L  account in the directory
`~/homework/hw4`. When logged into your 15L account, enter the following
commands:
```
$ cd ~/homework/hw4
$ turnin15L
```
Follow the Autograder prompts, using your UC San Diego email login credentials,
and you should be good to go! Make sure you get the confirmation email from
Autograder. Additionally, you can log in to Autograder to verify your submission.

## Studying?
While the answers aren't posted on this page, you can access old questions on
<a target="_blank" href=https://autograder.ucsd.edu>Autograder</a>! Log in and
find your graded assignments. When you open a graded assignment, you can see
the criteria we graded with. Good luck!
