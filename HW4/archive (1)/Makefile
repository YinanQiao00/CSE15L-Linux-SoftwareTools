# Homework 4

# Name: Yinan Qiao
# PID: A17151776
# Account: <cs15lfa21lo@ieng6.ucsd.edu>

# You missed playing Rock, Paper, Scissors with your friends in class because
# of COVID-19 so you and a teammate made a program so you could play with a CPU
# instead :)

# You got tired of wasting your time compiling your files so you decided to
# write a Makefile instead. Unfortunately, the targets in the Makefile don't 
# quite work, for various reasons.

# Your job is to find the bugs and fix them so that you have a fully functional
# Makefile!

# Update the code between the comment blocks with your changes.

CLASSES = Rock.class \
		  Paper.class \
		  Scissors.class \

################################################################################
#    TODO: FIX THE BUG
#    What line can you add to ensure that the 'all' and 'clean'
#    rules execute each time that they are called, even if a file exists
#    by the same name?
#   
#    vvv Add a line below vvv
################################################################################
.PHONY: all clean
all: ${CLASSES}


################################################################################
#    TODO: FIX THE BUG
#    The RPS.class has a unique set of dependencies, but the rule
#    won't run. What is wrong?
#
#    vvv Fix the code below vvv
################################################################################
RPS.class: RPS.java Rock.java Paper.java Scissors.java
	javac RPS.java


################################################################################
#    TODO: FIX THE BUG
#    Your teammate started to write rules for the individual elements
#    starting with Rock.class. It directly depends on its
#    .java source file but for some reason it's not working!
#	 Fix the error so that it is correctly built.
#
#    vvv Fix the code below vvv
################################################################################
Rock.class: Rock.java
	javac Rock.java


################################################################################
#    TODO: FIX THE BUG
#    Realizing that it is tedious to write out every single rule for
#    each of the classes and the fact that the other classes only depends 
#    on its .java source file, your team member tried to create a suffix 
#    rule. Complete it!
#
#    vvv Fix the code below vvv
################################################################################
.SUFFIXES: .java .class

.java.class:
	javac $< 


################################################################################	
#    TODO: FIX THE BUG
#    It is also tedious to compile your program every single time you make a 
# 	 change. It would be easier to write a rule that, compiles and runs your
# 	 game at the same time. Fix the errors below so typing `make run` does just
#	 that.
#    Hint: What other rule might this be dependent on?
#
#    vvv Fix the code below vvv
################################################################################
run: RPS.class
	java RPS


################################################################################	
#    TODO: FIX THE BUG
#    Lastly, the Makefile can help with cleaning up by
# 	 removing built files. However, there's one small error
# 	 with this.
#    Hint: what happens when you run this command twice?
#
#    vvv Fix the code below vvv
################################################################################
clean:
	rm -rf *.class


################################################################################	
#    If you need to get the source files again because you 
# 	 accidentally deleted them, run this command:
#
#    cp ~/../public/homework/hw4/*.java ~/homework/hw4/
#
#	 Make sure that your files are in "~/homework/hw4/"
#    before moving on
################################################################################
