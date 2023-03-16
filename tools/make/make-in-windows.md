---
description: Description of how to install and use Make in Windows OS.
---

# Make in Windows

## Installation

There are several ways to install Make on Windows. In this tutorial we will use Git Bash because it is also needed for [Git ](../../onboarding/git-and-github.md)on Windows, so you might already have that if you followed the steps in [Onboarding](broken-reference). The steps follow the instructions detailed [here](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058). After installing Git & Git Bash:

* Go to [ezwinports](https://sourceforge.net/projects/ezwinports/files/).
* Download `make-4.4-without-guile-w32-bin.zip` (get the version without guile).
* Extract zip.
* Copy the contents to your `C:\Program Files\Git\mingw64\` merging the folders, but do NOT overwrite/replace any existing files.

## Using Makefiles in different environments

Commands are called differently in different environments, for example, if you want to run Stata in Git Bash terminal on Windows you should use `StataMP-64`, but `stata` on Mac and Linux. Aliases don't work well in our setting (as Make is run in Git Bash, but Make itself uses the sh shell). Although if you include an operation system detector part at the beginning of your Makefile, it provides a simple solution for a reproducible Makefile in different environments.&#x20;

Let's create a project folder called `trial/`, where the codes can be run with a Makefile both on Windows and Mac or Linux. There should be 2 files in the folder: `trial.do` and `Makefile`. The `trial.do` creates a `trial.log` just to see and check whether Make runs correctly. The content of `trail.do` is the following:

```
capture log close
log using "trial.log", replace text
disp "DateTime: $S_DATE $S_TIME"
log close
```

You can copy the following content in your `Makefile`:

```
#OS detector part
ifeq ($(OS),Windows_NT) # is Windows_NT on XP, 2000, 7, Vista, 10... STATA := StataMP-64 else STATA := stata endif

#Code starts here
trial.log: trial.do $(STATA) -e do $<
```

When you finished, open the Git Bash terminal, go to the `trial/` folder where the `trail.do` and your `Makefile` is, and then run `make`.

```
$ cd ~/.../trial/
$ ls
  trial.do
  Makefile
$ make
```

Afterward you should see the `trial.log` crated by the `Makefile`.
