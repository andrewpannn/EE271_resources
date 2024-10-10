# Starter guide for using git in the context of EE 271

### Why use git?

Using git in this course is entirely optional. However, git can provide many benefits. Most importantly, using version control such as git can save huge amounts of time by providing a secure version history. Version control can be used to quickly revert changes or test experimental features while keeping your work safe. 

Git also provides tools for working on one project across multiple systems. This can be very helpful with interfacing your own system with the lab computers in the lab. Furthermore, git is a widely used standard in both industry and academia. Getting started with using git will be helpful for this course and other courses you will take in the future. 

### What is the difference between git and Github?

Git is a free version control tool initially developed by Linus Torvalds. Github is an online service that hosts online repositories (repos). Repos are basically just locations where you store your files. Github is the preferred service because of their ubiquity and quality of service. 

## Installing git and creating your first repository

### Overview:

The goal of this document is to help you get git installed on your device and create your first repo. This repo is where you can store your files for the course. We will cover some of the key functionalities of git: commit, push, pull, and branch. 

### 1. Install git on your system

Github provides a good [resource](https://github.com/git-guides/install-git) for this. Feel free to use any method of installation. If you are trying to set up git on the lab computers, there will be a section on that later.

### 2. Create an account on github

Go to https://github.com/ and sign up.

### 3. Create a SSH key and add it to your account

This will allow you to push and pull to your remote repos on Github. 

Follow the [Github SSH docs](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent) and complete the section "Generating a new SSH key"

Continue to the [next page](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account) and complete the section "Adding a new SSH key to your account". 

If the clip command can't find the file, manually navigate to the directory and execute "clip < id_ed25519.pub". If you are unsure how to do this, refer to step 5. 

### 4. Create a new repo on github

The [Github docs](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-new-repository) specify how to create a new repo. Make sure to set the repo to private for academic integrity purposes. 

### 5. Clone your repo onto your local device

The following are guides on how to navigate terminal and cmd prompt.

[Terminal](https://gomakethings.com/navigating-the-file-system-with-terminal/)

[Cmd Prompt](https://www.digitalcitizen.life/command-prompt-how-use-basic-commands/)

Open your repo on github. There will be a green button that says Code. Click on it and copy to your clipboard the SSH link. It will look something like "git@github.com:yourName/yourRepo.git".

Using terminal or cmd prompt, navigate to the location where you want your local version to reside. In the command line, use the command "git clone yourSSHLink" to clone into your repo. If it worked correctly, a new directory should appear. You have now successfully created a remote repo on Github and cloned it to your system!

### Ok I've got a repo set up. How do I use it?

Now that you have a git repo, you can use all the great features that are built into git. You may also want to refer to this [git cheatsheet](https://education.github.com/git-cheat-sheet-education.pdf). As the name version control suggests, git provides ways to manage the versions of your files. We will cover some of the key git commands.

## git commands

List of commands and commonly used options. For more detailed information, visit the official git documentation.

```
git status
```

Shows the status of the working tree

```
git clone
```
Clone a repository into a new directory

Can be used with github to clone remote repo onto your local device.

```
git add [<pathspec>] [-A]
```
Add file contents to the index

Adds the file specified in `<pathspec>`. If the `-A` option is used with no pathspec, all files in the entire working tree are updated. 

```
git commit [-a] [-m]
```
Record changes to the repository

Creates a commit that contains the current content that have been added by `git add`. If `-a` is used, all modified or deleted files are automatically staged. `-a` does not work with new files. The `-m` options allow you to write a commit message in the same command. 

An example might look like `git commit -m "add 8_1mux_testbench to project file"`. This would create a commit with a title that stores all changes that have been previously recorded with `git add`. 

```
git push
```
Update remote refs along with associated objects

Essentially, updates your remote repo to reflect your local repo.

```
git pull
```
Fetch from and integrate with another repository or a local branch

Incorporates the changes from a remote repo to current branch. 

```
git branch [-a] [-d] [<branch>]
```
List, create, or delete branches

Does not let you switch between branches. For switching branches, use `git checkout`. 

To create a branch, run `git branch [<branch>]`, where `<branch>` is the name of the new branch you want to create. The `-a` option will list all remote and local branches. To delete a branch, use the `-d` option followed by the branch you want to delete. For example, if you wanted to delete a branch called `test`, run `git branch -d test`.


```
git checkout [<branch>]
```
Switch branches or restore working tree files

Switches to the branch that is specified in `<branch>`.

```
git merge [<branch>]
```
Join two or more development histories together

Use `git checkout` to switch to the branch you want to merge onto. Then, execute `git merge [<branch>]` where `<branch` is the branch you want to be merged into your current branch. 
