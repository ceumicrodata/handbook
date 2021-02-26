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

Let's go through them one by one.

## The Bash Shell

Bash is a commonly-used shell that gives you the power to do simple tasks more quickly.

{% tabs %}
{% tab title="Windows" %}
 [Video Tutorial](https://www.youtube.com/watch?v=339AEqk9c-8)

1. Download the Git for Windows [installer](https://git-for-windows.github.io/).
2. Run the installer and follow the steps below:
   1.  Click on "Next" four times \(two times if you've previously installed Git\). You don't need to change anything in the Information, location, components, and start menu screens.
   2.  **Select "Use the nano editor by default" and click on "Next".**
   3.  Keep "Git from the command line and also from 3rd-party software" selected and click on "Next". If you forgot to do this programs that you need for the workshop will not work properly. If this happens rerun the installer and select the appropriate option.
   4. Click on "Next".
   5. Select "Use the native Windows Secure Channel library", and click "Next".
   6.  Keep "Checkout Windows-style, commit Unix-style line endings" selected and click on "Next".
   7.  **Select "Use Windows' default console window" and click on "Next".**
   8. Leave all three items selected, and click on "Next".
   9. Do not select the experimental option. Click "Install".
   10. Click on "Finish".
3.  If your "HOME" environment variable is not set \(or you don't know what this is\):
   1. Open command prompt \(Open Start Menu then type `cmd` and press \[Enter\]\)
   2.  Type the following line into the command prompt window exactly as shown:

      `setx HOME "%USERPROFILE%"`

   3. Press \[Enter\], you should see `SUCCESS: Specified value was saved.`
   4. Quit command prompt by typing `exit` then pressing \[Enter\]

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

{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

## Text Editor

When you're writing code, it's nice to have a text editor that is optimized for writing code, with features like automatic color-coding of key words. The default text editor on macOS and Linux is usually set to Vim, which is not famous for being intuitive. If you accidentally find yourself stuck in it, hit the `Esc` key, followed by `:`+`Q`+`!` \(colon, lower-case 'q', exclamation mark\), then hitting `Return` to return to the shell.

{% tabs %}
{% tab title="Windows" %}

{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

## Stata

In MicroData we use Stata 16 MP. If you do not have a Stata license, please let your instructor know so that they can request one for you.

If you are newly installing Stata on your computer, follow these instructions.

{% tabs %}
{% tab title="Windows" %}

{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

## Python 3

If you use Ubuntu 20.04 LTS or newer, you are good to go. Otherwise you should visit [Python's official page](https://www.python.org/downloads/) and download the latest python version for your operating system. Always follow the installation guide on Python's website.

## Bead

{% tabs %}
{% tab title="Windows" %}

{% endtab %}

{% tab title="MacOS" %}

{% endtab %}

{% tab title="Linux" %}

{% endtab %}
{% endtabs %}

