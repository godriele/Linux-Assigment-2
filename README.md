# Linux System Assignment 2: Shell Scripting

Welcome! This project is all about setting up a Linux environment using a few simple scripts. It’s meant to help you quickly configure a new Linux system by automating tasks like setting up configuration files, installing packages, and linking important files.

This assignment consists of two parts: **Project 1** and **Project 2**.

---

# Project 1 - Setup and Configuration Scripts

This project contains three scripts that help you set up your environment by installing packages and configuring files. These scripts are designed to automate the process of setting up tools like **kakoune** and **tmux**, and configuring user files like `.bashrc`.

### The three main scripts are:

1. **Setup** — A script that manages the overall setup, including running the installation of packages and configurations.
2. **Configuration** — A script that configures your environment by setting up directories, cloning files from a repository, and creating symbolic links.
3. **Packages** — A script that installs required packages like **kakoune** and **tmux**.

These scripts should be run with `sudo` to ensure they can make system-wide changes like installing packages or modifying configuration files.

---

## Prerequisites

Before running the scripts, make sure you have the following:

- A Linux-based operating system (e.g., Arch Linux, Ubuntu, etc.)
- `sudo` privileges — You will need administrator access to run the scripts.
- **Git** installed — This is required to clone configuration files from a Git repository.

### Installing Git (if it's not installed)

If **Git** is not installed on your system, the script will attempt to install it using the default package manager (e.g., `pacman` for Arch Linux). If you encounter any issues with Git installation, please install it manually by following the instructions on the official Git website.

---

## How to Run the Scripts

Before running any of the scripts, make sure to use `sudo`. This will raise your privileges and allow you to make system-wide changes.

### Installing the Packages

To install the packages listed in the **Packages** script, run the following command:

```bash
sudo ./Setup -p
```
### Running the Configuration Script
To set up your configurations, run the following command:

```bash
sudo ./Setup -c
```
---

# Project 2 - CreateUser Script

This project contains a script that automates the process of creating a new user on a Linux system. It allows you to specify the user's shell, create a home directory, add the user to specified groups, and set their password.

### The **CreateUser** script performs the following tasks:

1. **Checks for root privileges**: Ensures the script is run with `sudo` or as root to allow system-wide changes.
2. **Creates a new user**: Allows you to specify a custom shell, username, and optional home directory.
3. **Creates a home directory**: If the `-m` option is used, the script creates the home directory and copies default files from `/etc/skel`.
4. **Manages groups**: Adds the new user to specified groups. If a group doesn’t exist, it is created.
5. **Sets a password**: Prompts for a password to set for the new user.

These tasks are all handled by a single script to simplify user management.

---

## What the Script Does

### User Creation

- **Checks if the script is run as root**: The script will verify that it has `sudo` privileges before making any system changes.
  
- **Handles command-line options**:
  - `-s SHELL`: Allows you to specify a custom shell for the new user (e.g., `/bin/bash`).
  - `-m`: Optionally creates a home directory for the user.
  - `-g GROUPS`: Allows you to specify a list of groups to which the new user should be added.

- **Prompts for user information**:  
  The script will ask for the username, shell, and group information. It will then create the user, set up the home directory, and assign groups as specified.

---

## How to Run the Script

Before running the script, make sure to use `sudo`. This will raise your privileges and allow you to make system-wide changes.

### Example Commands

#### 1. Creating a User with Custom Shell, Groups, and Home Directory

To create a new user named `alice`, with `/bin/bash` as their shell, a home directory, and membership in the `developers` and `admins` groups, run:

```bash
sudo ./CreateUser -s /bin/bash -m -g developers,admins alice
