#!/bin/sh

# list of files/folders to symlink in ${homedir}
files="bash_profile bashrc bash_prompt"

# change to the dotfiles directory
echo "Changing to the ${dotfiledir} directory"
cd "${dotfiledir}"
echo "...done"

# create symlinks and overwrite old dotfiles
for file in ${files}; do
	echo "Creating symlink to $file in home directory."
	ln -sf "${dotfiledir}/${file}" "${homedir}/.${file}"
done
