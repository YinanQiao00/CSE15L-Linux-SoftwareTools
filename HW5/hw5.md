# Homework 5

Name: Yinan Qiao
PID: A17151776
Account: \<cs15lfa21lo@ieng6.ucsd.edu\>

For all the questions below, assume that **NO ALIASES** have been configured
for Git.

1. You just got a new laptop and are starting to set up your development environment. What are two `git` commands (including all options and arguments)
that will set your name and email globally for your account, assuming your name is Alan Turing and your email is `alan.turing@ucsd.edu`? **(1 point)**

        	git config --global user.name "Alan Turing"
		git config --global user.email "alan.turing@ucsd.edu"

2. You decide to start up a new project; a calendar application for your friends to use. After creating your directory and setting up, you realize that you need to set up `git` for the project. What command (including all options and arguments) do you need to use to initialize your local `git` repository for the project? **(1 point)**

        git init

3. You start working on your project, and soon have some new work done that you want to save. Assuming you are at the root of your git project, what commands (including all options and arguments) do you run (in order) to stage and commit your changes to your *local* `git` repository?
**(1 point)**

        git add <the file of new work done>
	git commit -m "comments of this commit"

4. You decide to add in some of the aliases that you learned in lab to your local setup.
What is the name of the file where your aliases should be added?
**(1 point)**

        .gitconfig

5. At this point, you decide that you should set up a GitHub repository to track your changes online (and to show recruiters at career fairs). After setting it up, you get the link to your remote repository at `https://github.com/alan-turing/calendarapp.git`. What command (including all options and arguments) do you use to set this URL as your remote URL, assuming you want to name it `origin`? **(1 point)**

        git remote add origin https://github.com/alan-turing/calendarapp.git

6. You now want to ignore your configuration files, so that you don't clutter up your repository. What is the name of the file where the file names you want to ignore should go?
**(1 point)**

         .gitignore

7. Your friend decides that they want to help you with your project, hooray! You tell him to get their own version of the project so they can start working, but they don't know how to do this. Using the github URL from Q5, what command (including all options and arguments) should they use to get the project from GitHub to their local machine? **(1 point)**

        git clone https://github.com/alan-turing/calendarapp.git

8. Now that they've got the repository, you tell your friend to create their own branch called `reminders` so that they can work on the reminder feature. What command (including all options and arguments) do you tell them to use? **(1 point)**

        git checkout -b reminders

9. Your friend just pushed their new branch, and you want to take a look at his changes. What command (including all options and arguments) do you use to get the branch from the remote repository onto your local computer? **(1 point)**

        git fetch

10. After a while (and a lot more developer contribution), you decide to check the progress on your repository. What command (including all options and arguments) can you use to see the commit history? **(1 point)**

        git log

11. You continue work on your project, and realize that one of your changes in your main file (called `backend.py`) causes your tests to break. What command (including all options and arguments) can you use to keep all other files the same, but revert that *one* broken file to the previously committed version? **(1 point)**

        git checkout backend.py

12. After a few weeks, you now realize that your local feature branch (`backend_fix`) is woefully out of date with `master`. After running `git checkout master`, `git pull origin master`, and `git checkout backend_fix`, what command (including all options and arguments) do you use to merge the changes from master into your current branch? **(1 point)**

        git merge master

13. If you don't need branch `backend_fix` anymore, what command (including all options and arguments) do you give to delete branch `backend_fix` *locally*? **(1 point)**

        git branch -d backend_fix

14. You want to perform a `git pull`, but you are unable to because you have local uncommitted changes. However, you don't want to stage and commit your changes since they are unfinished. What is a command (including all options and arguments) you can use to temporarily save your changes in order to satisfy `git pull` without staging and committing?

        git stash

15. Both `git merge` and `git rebase` are used to combine two different branches into one. Please describe the difference between `git merge` and `git rebase`. **(1 point)**

        rebase apply the commit again, moves a feature branch into a master.
        merge join the commit history together, adds a new commit while perseving the history one.

16. GitHub isn't the only online `git`-based source control management (SCM) system. Name another possible system to use **(1 point)**

        
	Amazon AWS CodeCommit/Assembla/Beanstalk

17. What is the purpose of "tagging" a commit? Supposing you have a currently checked out commit, what command (including all options and arguments) is used to create a lightweight tag named "final" on your commit? **(2 points; one per question)**

        purpose:
	tagging is asscosiated with commit 
        used to mark a important iduvidual point in a repository history suc as release version
	command:
	git tag final

18. What is a git "conflict", and how are they resolved? **(1 point, half per section)**

        a merge conflict usually occurs when there are disagreeing/conflicting changes. The current bra	       nch and the branch you want to merge with the current have diverged. Meaning have commits that 	      made in the current branch that are not in the other.
	
	Resolve: Conflict can be manually resolved by making change the files that have conflicts, and         we can decide which change to keep and which not.

19. Which directory stores all the data necessary for git to keep track of your
    project and its history? **(1 point)**

    * .gitignore
    * .git
    * .vimrc
    * .gitlogs
    * .gitrc

         .git/

## Turnin Procedure:
Be sure your `hw5.md` file is saved on your 15L account in the directory
`~/homework/hw5`. When logged into your 15L account, enter the following
commands:
```
$ cd ~/homework/hw5
$ turnin15L
```
Follow the Autograder prompts, using your UC San Diego email login credentials,
and you should be good to go! Make sure you get the confirmation email from
Autograder. Additionally, you can log in to Autograder to verify your submission.
