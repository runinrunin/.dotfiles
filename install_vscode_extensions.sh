#! bin/zsh

while IFS= read -r line; 
    do  code --install-extension $line; 
done < vscode_extensions.txt