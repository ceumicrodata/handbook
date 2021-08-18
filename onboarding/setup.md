---
title: Setup
---

# Setup

This is a comprehensive list of what you are going to need throughout these lessons. To participate in the MicroData workflow, you will need access to the software described below. In addition, you will need an up-to-date web browser. The Carpemtries maintain a list of common issues that occur during installation as a reference for instructors that may be useful on the [Configuration Problems and Solutions wiki page](https://github.com/swcarpentry/workshop-template/wiki/Configuration-Problems-and-Solutions).We will go into details after a quick overview:

> ### Key requirements
>
> * Python 3 installation with pip3 and virtualenv
> * BEAD executable
> * Git installation, Git Bash on Windows

A useful script to install required programs on Linux can be found here: [https://github.com/ceumicrodata/handbook/blob/master/post\_install.sh](https://github.com/ceumicrodata/handbook/blob/master/post_install.sh). Let's go through them one by one.

## The Bash Shell

Bash is a commonly-used shell that gives you the power to do simple tasks more quickly.

{% tabs %}
{% tab title="Windows" %}
[Video Tutorial](https://www.youtube.com/watch?v=339AEqk9c-8)

1. Download the Git for Windows [installer](https://git-for-windows.github.io/).
2. Run the installer and follow the steps below:
   1. Click on "Next" four times \(two times if you've previously installed Git\). You don't need to change anything in the Information, location, components, and start menu screens.
   2. **Select "Use the nano editor by default" and click on "Next".**
   3. Keep "Git from the command line and also from 3rd-party software" selected and click on "Next". If you forgot to do this programs that you need for the workshop will not work properly. If this happens rerun the installer and select the appropriate option.
   4. Click on "Next".
   5. Select "Use the native Windows Secure Channel library", and click "Next".
   6. Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".
   7. **Select "Use Windows' default console window" and click on "Next".**
   8. Leave all three items selected, and click on "Next".
   9. Do not select the experimental option. Click "Install".
   10. Click on "Finish".
3. If your "HOME" environment variable is not set \(or you don't know what this is\): 1. Open command prompt \(Open Start Menu then type `cmd` and press \[Enter\]\) 2. Type the following line into the command prompt window exactly as shown:

   `setx HOME "%USERPROFILE%"`

   1. Press \[Enter\], you should see `SUCCESS: Specified value was saved.`
   2. Quit command prompt by typing `exit` then pressing \[Enter\]

This will provide you with both Git and Bash in the Git Bash program.
{% endtab %}

{% tab title="MacOS" %}
The default shell in all versions of macOS is Bash, so no need to install anything. You access Bash from the Terminal \(found in `/Applications/Utilities`\). See the Git installation [video tutorial](https://www.youtube.com/watch?v=9LQhwETCdwY) for an example on how to open the Terminal. You may want to keep Terminal in your dock.
{% endtab %}

{% tab title="Linux" %}
The default shell is usually Bash, but if your machine is set up differently you can run it by opening a terminal and typing `bash`. There is no need to install anything.
{% endtab %}
{% endtabs %}

## Git

Git is a version control system that lets you track who made changes to what when and has options for easily updating a shared or public version of your code on [github.com](https://github.com/). You will need a [supported web browser](https://help.github.com/articles/supported-browsers/).

You will need an account at [github.com](https://github.com/) for parts of the Git lesson. Basic GitHub accounts are free. We encourage you to create a GitHub account if you don't have one already. Please consider what personal information you'd like to reveal. For example, you may want to review these [instructions for keeping your email address private](https://help.github.com/articles/keeping-your-email-address-private/) provided at GitHub.

{% tabs %}
{% tab title="Windows" %}
Git should be installed on your computer as part of your Bash install \(described above\).
{% endtab %}

{% tab title="MacOS" %}
[Video Tutorial](https://www.youtube.com/watch?v=9LQhwETCdwY)

**For OS X 10.9 and higher**, install Git for Mac by downloading and running the most recent "mavericks" installer from [this list](http://sourceforge.net/projects/git-osx-installer/files/). Because this installer is not signed by the developer, you may have to right click \(control click\) on the .pkg file, click Open, and click Open on the pop up window. After installing Git, there will not be anything in your `/Applications` folder, as Git is a command line program. **For older versions of OS X \(10.5-10.8\)** use the most recent available installer labelled "snow-leopard" [available here](http://sourceforge.net/projects/git-osx-installer/files/).
{% endtab %}

{% tab title="Linux" %}
If Git is not already available on your machine you can try to install it via your distro's package manager. For Debian/Ubuntu run `sudo apt-get install git` and for Fedora run `sudo dnf install git`.
{% endtab %}
{% endtabs %}

After installation, the further steps are recommended:

* Configure installation    
  * `git config --global user.name "your-full-name"`    
  * `git config --global user.email "your-email-address"`     
* SSH key: for faster usage \(no password will be needed afterwards\)    
  * Check if you already have: Is it anything in .ssh? `ls .ssh`    
    * if no, create a new one and [add to ssh agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)                             
    * if yes, go to next step        
  * [Add new SSH key](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account) to your github account           
* Download [Sublime Merge](https://www.sublimemerge.com/download) \(recommended git client\)

## Text Editor

When you're writing code, it's nice to have a text editor that is optimized for writing code, with features like automatic color-coding of key words. The default text editor on macOS and Linux is usually set to Vim, which is not famous for being intuitive. If you accidentally find yourself stuck in it, hit the `Esc` key, followed by `:`+`Q`+`!` \(colon, lower-case 'q', exclamation mark\), then hitting `Return` to return to the shell.

{% tabs %}
{% tab title="Windows" %}
nano is a basic editor and the default that we use, it is installed along with Git.

Other editors that you can use are [Notepad++](https://notepad-plus-plus.org/) or [Sublime Text](https://www.sublimetext.com/). **Be aware that you must add its installation directory to your system path.** Please ask your instructor to help you do this.
{% endtab %}

{% tab title="MacOS" %}
nano is a basic editor and the default that we use. See the Git installation [video tutorial](https://www.youtube.com/watch?v=9LQhwETCdwY) for an example on how to open nano. It should be pre-installed.

Other editors that you can use are [BBEdit](https://www.barebones.com/products/bbedit/) or [Sublime Text](https://www.sublimetext.com/).
{% endtab %}

{% tab title="Linux" %}
nano is a basic editor and the default that instructors use in the workshop. It should be pre-installed.

Other editors that you can use are [Gedit](https://wiki.gnome.org/Apps/Gedit), [Kate](https://kate-editor.org/) or [Sublime Text](https://www.sublimetext.com/).
{% endtab %}
{% endtabs %}

## Stata

In MicroData we use the statistical package [Stata](https://www.stata.com/products/)[™](https://korenmiklos.github.io/2020-08-23-eea/license.html), version Stata 17 MP. If you do not have a single user Stata license, please let your instructor know so that they can request one for you. We prefer to use the server version of the Stata. You can start Stata from VNC bash command line by the help of `xstata-mp` command.

If you are newly installing single user Stata on your computer, follow these instructions.

{% tabs %}
{% tab title="Windows" %}
1. Go to [https://download.stata.com/download/](https://download.stata.com/download/)
2. Log in using your username and password.
3. Download and launch the installer: SetupStata17.exe version 64.bit.
4. Once the installation is done, start Stata from the Start Menu. The first time you do this, you will have to activate your licence.
5. Choose version StataMP.
6. Enter the serial number provided and press enter.
7. Enter the code and press enter.
8. Enter the authorization and press enter.
9. It should return “Good. The serial number, code, and authorization make sense. Shall we continue?” Type Y and press enter.
10. When it asks for the first line, it should say “CEU”.
11. When it asks for the second line, it should say “CEU”.
12. It will ask for confirmation. Type “Y” and press enter.
{% endtab %}

{% tab title="MacOS" %}
1. Go to [https://download.stata.com/download/](https://download.stata.com/download/)
2. Download and launch the installer: Stata17.dmg
3. Once the installation is done, start Stata from the Start Menu. The first time you do this, you will have to activate your licence.
4. Choose version StataMP.
5. Enter the serial number provided and press enter.
6. Enter the code and press enter.
7. Enter the authorization and press enter.
8. It should return “Good. The serial number, code, and authorization make sense. Shall we continue?” Type Y and press enter.
9. When it asks for the first line, it should say “CEU”.
10. When it asks for the second line, it should say “CEU”.
11. It will ask for confirmation. Type “Y” and press enter.
{% endtab %}

{% tab title="Linux" %}
1. Go to [https://download.stata.com/download/](https://download.stata.com/download/)
2. Download Stata17Linux64.tar.gz.
3. Open a terminal and navigate to the directory where your downloaded file is located \(e.g. cd ~/Downloads/\)
4. Get superuser rights \(sudo su\)
5. Create a new directory \(e.g. mkdir stata\_install\)
6. Move the downloaded file to this new directory \(mv Stata17Linux64.tar.gz. stata\_install/\)
7. Enter the directory \(cd stata\_install\)
8. Extract the installation files using tar xzf Stata17Linux64.tar.gz
9. Create a directory for your stata installation \(mkdir /usr/local/stata17\)
10. Navigate to the stata directory \(cd /usr/local/stata17\)
11. Start the installation by executing the extracted install file \(e.g. /home/username/Downloads/stata\_install/install\)
12. Choose version StataMP.
13. Whenever the installer asks if you want to proceed type “y” and press enter
14. Once the installation is done, type ./stinit to activate your licence
15. Whenever it asks you if you want to continue, type “Y” and press enter
16. Enter the serial number provided and press enter
17. Enter the code and press enter
18. Enter the authorization and press enter
19. It should return “Good. The serial number, code, and authorization make sense. Shall we continue?” Type Y and press enter.
20. When it asks for the first line, it should say “CEU”
21. When it asks for the second line, it should say “CEU”
22. It will ask for confirmation. Type “Y” and press enter.
23. Try to start stata by ./xstata. If it gives you the following error message \(./stata: error while loading shared libraries: libpng12.so.0: cannot open shared object file: No such file or directory\), continue with the steps below:

`Issue the following commands one by one in your terminal window: apt-get install zlib1g-dev wget http://mirrors.kernel.org/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1_amd64.deb dpkg -i libpng12-0_1.2.54-1ubuntu1_amd64.deb`
{% endtab %}
{% endtabs %}

## Python 3

If you use Ubuntu 20.04 LTS or newer, you are good to go. Otherwise you should visit [Python's official page](https://www.python.org/downloads/) and download the latest python version for your operating system. Always follow the installation guide on Python's website.

## Bead

1. \(windows only:\) Install Git Bash
2. Install python if not already installed.


   Latest release depends on Python 3.8.5., Python 3 only (requires at least 3.7).
   You can check the version of your Python from the terminal with `python -V`.


3. Download latest version from [https://github.com/e3krisztian/bead/releases/tag/v0.8.1](https://github.com/e3krisztian/bead/releases/tag/v0.8.1)

   you will need only the platform specific binary: `bead`

4. Put the downloaded file in a location, that is on the PATH
   * `$HOME/bin`  \(single-user, laptop, desktop, traditional location\)
   * `$HOME/.local/bin` \(single-user, laptop, desktop, new XDG standard?\)
   * `/usr/local/bin` \(system, servers, multi-user\)
5. \(linux and mac only\): make the file executable

E.g. the following commands would install version v0.8.1 \(latest release at the time of writing\) on linux and mac:

```text
# ensure user bin directory existst (for user specific scripts)
mkdir -p ~/.local/bin
# download bead
cd ~/.local/bin
curl -sLo bead https://github.com/e3krisztian/bead/releases/download/v0.8.1/bead
# make executable
chmod +x bead
```

At the end, you can check whether your installation was successful by typing `bead version` to the terminal, then it should show v0.8.1.

\(source: [https://stackoverflow.com/c/ceu-microdata/questions/18](https://stackoverflow.com/c/ceu-microdata/questions/18)\)

## Make

Linux and Mac users don't have to install it. Windows users should follow the next steps:

1. Install chocolatey

   We are going to install make through the package manager chocolatey, therefore first we have to install chocolatey. Follow the instructions on: [chocolatey website](https://chocolatey.org/install)

   * search for powershell in the windows start menu and run it as administrator
   * run the command in the field under the second point \(install with powershell.exe\)

2. Install gnu-make
   * type in the powershell `choco install make`.

