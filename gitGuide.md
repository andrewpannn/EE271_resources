# Starter guide for using git in the context of EE 271

### Why use git?

Using git in this course is entirely optional. However, git can provide many benefits. Most importantly, using version control such as git can save huge amounts of time by providing a secure version history. Version control can be used to quickly revert changes or test experimental features while keeping your work safe. 

Git also provides tools for working on one project across multiple systems. This can be very helpful with interfacing your own system with the lab computers in the lab. Furthermore, git is a widely used standard in both industry and academia. Getting started with using git will be helpful for this course and other courses you will take in the future. 

### What is the difference between git and Github?

Git is a free version control tool initially developed by Linus Torvalds. Github is an online service that hosts online repositories (repos). Repos are basically just locations where you store your files. Github is the preferred service because of their ubiquity and quality of service. 

## Installing git and creating your first repository

### Overview:

The goal of this document is to help you get git installed on your device and create your first repo. This repo is where you can store your files for the course. This guide will cover some of the key functionalities of git: commit, push, pull, and branch. 

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

Using terminal or cmd prompt, navigate to the location where you want your local version to reside. In the command line, use the command "git clone yourSSHLink" to clone into your repo. If it worked correctly, a new directory should appear. You have now successfully created a remote repo on Github and copied it to your system!



