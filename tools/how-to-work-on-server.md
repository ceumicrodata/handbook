# How to work on server

This section provides an overview of the standard workflow and etiquette when working on the department's computational server.

## Connect to the server

Make sure you are connected to the CEU VPN server. The server only accepts connections from within CEU. You then have to proceed depending on whether you need a graphical or a command line interface.

### Establishing a CLI connection

You need an SSH connection. On Windows, you can use PuTTy. On UNIX systems you can use your terminal. Please check the [Server](https://handbook.microdata.io/onboarding/server) episode for details.

### Establishing a GUI session

You will need a VNC connection or X11 forwarding. On Windows you should use a VNC client. On Mac, you can use XQuartz. On Ubuntu you do not have to install any additional tool. Check the [Server](https://handbook.microdata.io/onboarding/server) episode for details on starting your connection.

## Starting a screen

If you are connected to the server via VNC, you do not need to start a screen. In any other case it is highly recommended to start a screen. This allows you to continue from where you left off later on in case you decide to halt your work or if you get disconnected from the server for any reason. Without a screen you will lose all unsaved progress and all the processes you started will terminate as soon as you close or lose connection to the server.

## Work at the proper location

You shall not work in your home folder. Please always navigate to the proper sandbox or project folder before beginning your work. For the basic architecture of the server, please check the Server\]\([https://handbook.microdata.io/onboarding/server](https://handbook.microdata.io/onboarding/server)\) episode.

## Work in virtual environments

You must not install any packages directly on the server. Trying to install outside a virtual environment will fail as soon as you reach your home folder quota. You can create virtual environments or move the temp folders of the software you use to your sandbox. In case of any issue contact a project manager.

## Running jobs

UNIX terminal and XQuartz users can start batch jobs and initiate interactive sessions using the command-line. Windows users can use PuTTy or open a terminal in their VNC client to start batch jobs. Interactive sessions can be initiated in the VNC client.

## Check your footprint

Always check the resources you use via `htop`. If your process has a memory/CPU requirement that would interfere with the daily workflow of other users please schedule your process to run outside working hours or during the weekend.

## Clean up

Before disconnecting always make sure that you do not have any leftover sessions using resources \(unless you are running a longer process within a screen\). Remove unused virtual environments, zap unused bead workspaces, close software instances with data in memory, etc.

## Close your connection

Exit the server by pressing `Ctrl + D` or type the `exit` command in your CLI.

## Inform others

Use Slack to communicate any planned and persistent server use with a heavy footprint so that other users can plan accordingly.

## Get help

You can always get help by revisiting this handbook. If you cannot find the answers you are looking for, ask a project manager. Remember: if you are unsure, it is better to ask before you act.

