# Linux System Assignment 2: Shell Scripting

Welcome! This project is all about setting up a Linux environment using a few simple scripts. It’s meant to help you quickly configure a new Linux system by automating tasks like setting up configuration files, installing packages, and linking important files.

This assignment consists of two parts: **Project 1** and **Project 2**.

---

## Project 1 - Setup and Configuration Scripts

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

## What the Scripts Do

### Setup Script

- **Checks for root privileges**:  
  The script needs to be run with `sudo` or as root to make system-wide changes.

- **Handles command-line options**:
  - `-p`: Installs necessary packages (**kakoune**, **tmux**).
  - `-c`: Sets up configurations by cloning files from a Git repository and creating symbolic links for necessary files.

- **Runs the appropriate script based on the options you provide** (`-p` or `-c`).

---

### Configuration Script

- **Clones configuration files**:  
  The script checks if **Git** is installed. If **Git** is installed, it will download a set of configuration files from a Git repository to a folder in the user's home directory.
 If **Git** is not installed, the script will try to install it using the system's package manager (e.g., `pacman` for Arch Linux).
  After **Git** is installed, it will download the configuration files.

- **Creates directories**:  
  The script checks if two important folders (`bin` and `.config`) already exist in the user's home directory. If these folders are missing, the script will create them.

- **Creates symbolic links**:  
  The script creates shortcuts (called "symbolic links") for files and folders from the downloaded configuration.  

This script helps set up important files and folders in the right places so that the system is ready to use with the correct configuration.

---

### Packages Script

- **Installs packages**:  
  The script installs essential packages (**kakoune**, **tmux**) using the package manager (e.g., `pacman` for Arch Linux).

- **Checks if the packages are already installed**:  
  If the packages are already installed, it will skip them. Otherwise, it will install them.

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
