# Configuration Setup Scrip!
#
# Welcome to the config setup, the main: goal of this script is to automate the process of 
# cloning a git repository that contains configuration files into a dierectory called 'config-fils'
# It will also create symbolic links from the repository files to their intended locations
#
# This will save time and make the setup process faster and easier
#
# -----------------------------------------------------------------------------------------------------------
# Step 1: Git
#  We need to make sure we have git installed because git will make it easy to synchronize repository
#  between different machines. Git it is essential to cloning repositories
#
#  Run this command to check if you have git installed inside your binaries, and If you have it installed it
#  will clone the repository we need

   if [[ -e /bin/git ]]; then
	   # git binary is located in /bin

	   # If you system has git installed it will clone the repository inside the config_files directory

	   git clone https://gitlab.com/cit2420/2420-as2-starting-files ~/config_files 
	   echo "Your system has Git installed, Cloned the repository into config_files"
   else     
	   # git is not installed 

           echo "Your system does not have Git installed"
	   exit 1
   fi
# ----------------------------------------------------------------------------------------------------------
