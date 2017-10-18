CHECKING PYTHON
====

For our Twitter bots, we'll use the programming language [Python](https://www.python.org/). It's great for working with text and language, and works great running automatically on a server. Python should be installed on your computer by default, but this tutorial will show you how to make sure you have the right version.

\- \- \-

### TLDR  

* Python 2.7  
* Able to run a simple script from the command line

### OPEN A TERMINAL WINDOW

**MAC:** Go to `Applications > Utilities > Terminal` (or do a Spotlight search)  
**LINUX:** You know what to do :)  
** WINDOWS:** Open the `Windows` menu and type `command` in the search bar – select `Command Prompt`  

### CHECK IF PYTHON IS INSTALLED

Python 2.7 should be pre-installed on your computer, so not much to do! To be sure everything though, do the following:

* At the Terminal prompt, type `python` and hit enter – you should see some text pop up (like below) and a new `>>` prompt pop up  
* Check that it says `Python 2.7` and not `Python 3`  
* Type `exit()` and hit return to quit Python  

### WINDOWS: EXTRA STEPS  

One more thing to get everything working – you need to add Python to your computer's *path*, a way for it to know where to find the `python` command. You may need to do this to get the steps above to work, or to make sure you can run scripts in class.

* In the `Windows` menu, search for `python.exe`  
* Right-click the filename, select `Properties` and find the location – copy it to your clipboard  
* In the `Windows` menu, search for `advanced system settings` and open `View Advanced System Settings`  
* Click on `Environment Variables` near the bottom right  
* Find and select the user variable named `Path` and click `Edit...`  
* (If you don't have a user variable named `Path`, click the `New...` button and create it)  
* You should see a list of paths, separated by semicolons – scroll the the end, add a semicolon (`;`), and paste the location of `python.exe`  
* Click `OK` to save the change  

### PROBLEMS?  

Be sure to try this early, to catch any issues. If you run into problems, let me know ASAP. Otherwise, you can always use the Lab machines (username is `student` and so is the password).
