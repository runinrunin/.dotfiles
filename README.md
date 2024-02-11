## Intro
This are my dotfiles for a macos environment. It corresponds to:
 - my zsh config and profile
 - my macos terminal profile named GaspProfile
 - my homebrew config and the installed package
 - my vscode settings and the install extensions for vscode.

To install the dotfiles correctly, create a folder named .dotfiles in HOME, and go in: <br>
`mkdir ~/.dotfiles` <br>
`cd ~/.dotfiles`

Be sure that the terminal runs with zsh! <br>
If it is not the case, change every `zsh` words by `bash` in the `install_brew.sh` file.
If brew is install, you can run `brew install zsh`.

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

To install the repos with git clone run the following commands in $HOME:
`git clone https://github.com/runinrunin/.dotfiles.git` <br>
`cd .dotfiles` <br>
run the commands to install brew and brew packages <br>

## Install VScode
Download it from https://code.visualstudio.com/docs?dv=osx <br>
According to the [offial doc](https://code.visualstudio.com/docs/setup/mac#:~:text=Keep%20in%20Dock.-,Launching%20from%20the%20command%20line,code'%20command%20in%20PATH%20command.), you can run vscode from the termnal after some changes: <br>
 - Open vscode
 - Open the Command Palette (Cmd+Shift+P) and type 'shell command' to find the Shell Command: Install 'code' command in PATH command.
 - Restart the terminal for the new $PATH value to take effect. You'll be able to type 'code .' in any folder to start editing files in that folder.<br>

### If you have sync your vscode settings
just connect to you account on you local seccion...

### Else 
 Then, open `User setting (JSON)` with the Command Palette of vscode. Copy the content of `vscode_settings.json` in the local user settings of vscode.

 Lastly, install the vscode extension using `install_vscode_extensions.sh` script. I wish I could just run `xargs code --install-extension < vscode_extensions.txt`, but it I suppose I should respect singular plurial...

 Unfortunatly, this does not work for most extensions. I list the extensions with the command `code --list-extensions > vscode_extensions.txt` and replace every space by a newline. Then, my script is supposed to loop into every line of the file and run `code --install-extensions <$line>`. It does not work. <br>

 The best solution for now is either to install the extensions manually (good enought, avoid to supercharge your machine), or to enable sync.

 ## Setting .zshrc, .zshenv and changing the terminal profile
 Install oh my zsh: `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
 Simlink the .zshrc and the .zhsenv files in .dotfile directory to home directory:<br>
 
`ln -s ~/.dotfiles/.zshrc ~/`
`ln -s ~/.dotfiles/.zshenv ~/`

Finally, use `defaults import ~/.dotfiles/Gasp_terminalpreference.plist com.apple.Terminal` to import the terminal profiles. Then change the terminal profiles in terminal'preferences.

## Futur work
Eerything could be written in one .sh executable file. For now, the flow is controlled by human. Currently, every commands must be written in the terminal. If something block, or if a something is already installed/set, then it can be swiftly pass. Once again, this can be solved with if statement. The only blocking thing is the vscode part. <br>

My goal was to make a comprehensible guideline, with few command and script to set my macos for work. I use only bash. Ic ould use ruby or lua, but it is overwork. Bash is just good enough for this task. For some part of the script, say installing brew package from the brew.txt, I wonder if gnu parralel would work.<br>

Lastly, I would install fuzzyfinder, tmux and  an i3 like for macos. For managing the dotfile, gnu stow would be a must. i am not ready for vim yet... I also still have to organize everything with folders.

## Afterthoughts
It was a fun small project that took me 2h. I look at my working environment, and I though it was a mess. I delete everything, or nearly, and I reinstall decide that I should writte a script to install everything I need using only bash. It would be on github as a repos, but it should be installed before git CLI would be. I had some difficulties with vscode and the .plist file format for the defaults conf of macos. However, I think the vscode part is unique.

## Ref
Check [Theprimeagen dotfiles](https://github.com/ThePrimeagen/.dotfiles)! It is dotfiles for ubuntu (I think he uses uwuntu, a light version of ubuntu), but the ideas are the same. Only i3 is not available in macos. <br>

I don't understand treesitter yet. I think it is for parsing language.<br>

I don't mess with vim nor neovim yet...