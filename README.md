## Intro
This are my dotfiles for a macos environment. It corresponds to:
 - my zsh config and profile
 - my macos terminal profile named GaspProfile
 - my homebrew config and the installed package
 - my vscode settings and the install extensions for vscode.

To install the dotfiles correctly, create a folder named .dotfiles in HOME, and go in: <br>
`mkdir ~/.dotfiles` <br>
`cd ~/.dotfiles`

## Installing the dotfiles
You can either clone the github repo using `<command to cloone the github repo> or you can download it directly from the github page as a zip folder and copy the files from it to the new ~/.dotfiles folder. <br>

Either way, i did not find any elegant solution. I suppose the best would be to use a script from my github with the `curl` command. But it would be for later.<br>

### Install brew first (without git CLI)
I suggest a third method. Copy the content from `install_homebrew.sh` and execute the newly created files. Then, install the package for brew. <br>
`touch install_homebrew.sh` <br>
`nano install_homebrew.sh` <br>
and copy/paste the content of `install_homebrew.sh` from github repos to you local machine.
ps: you can use whatever editor you want instead of nano... textedit if you want...
then:<br>
`chmod +x install_homebrew.sh`<br>
`./install_homebrew`<br>
To install the package for brew, copy the 'brew.txt' file in the github repo. It is similar to a `requirement.txt` file:
`touch brew.txt && nano brew.txt` <br>
and copy/paste the content of `brew.txt` from github repos to you local machine.<br>
Run the command `xargs brew install < brew.txt` to install all packages.

## Install the repos with git clone
If you follow the previous step, You can now remove `.dotfiles` folder and git clone the repo.<br>
If you have git CLI on your machine, you can immedialtly clone the repo and put it in $HOME. Then, you will have to:<br>
 - install homebrew by executing `install_homebrew.sh`
 - run the command `xargs brew install < brew.txt`

To install the repos with git clone run the following commands: