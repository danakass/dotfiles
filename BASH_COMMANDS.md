# Some commands in bash

###### nano
**nano** is a simple editor. The example: `nano filename` или `nano file_path`

###### ls
**ls** shows files of directory. Example `ls -a` lists all files in the directory. If used like this `ls here_path` then lists files and
directories of _here\_path_ . Example `ls /` shows files in root directory

`ls -lah` - this means: list, all, humanreadable. As a result of this command with attribute `-lah` one can see e.g. `drwxr-xr-x` where
 first `rwx` stands for read, write, executable for files owner, second `r-x` for his group, last one for everyone else 

###### variable $?
This variable contains exit code of the last executed command
 
###### ~ symbol
`~` means home directory

###### mkdir
This command creates new directory, example `mkdir /tmp/name`

###### which
it is used to identify the location of a given executable that is executed when you type the executable name (command) in the terminal prompt.
 The command searches for the executable specified as an argument in the directories listed in the PATH environment variable

###### variable  PATH
it is the environmental variable that tells the shell and other programs which directories to search for executable files. It consists
 of a list of colon-separated absolute paths to directories containing the executable

###### apt
advanced package tool. It's used for installing, removing and updating program packages. Examples: `sudo apt update`,
 `apt list --upgradable`, `sudo apt upgrade`. For installing: `sudo apt install git`. Other examples: `apt show git` - shows git package
 information; `apt search git-*` searches the `git-*` in description of packages

###### wget
is used to download files. Example `wget -O abs-path-with-file-name address-whereto download-from`. `-O` is used to overwrite if file exists

###### rm
is used to remove files or directories. Example `sudo rm -r -f abs-path`. `-r` means recursive, `-f` means force. 
Example `rm test*` will remove all files that begin with *test*.

###### tar
is used to extract files from archive. Example `sudo tar -C /usr/local -xzf /tmp/file\_name.tar.gz` where `/usr/local` is path where to extract to,
`-x` stand for extract mode, `-z` is used to filter the archive throught gzip, `-f` - for file name option.

###### ssh
is a protocol. It can be used like this: `ssh-keygen -t rsa 4096 -C "email"`. `-t` shows the type of encription, here it is rsa, `-C` is comment
 
###### history of bash
is stored in `.bash\_history`

###### cat
`cat` has 3 options. 
1. Displays contents of a file: `cat file-name`
2. Creates a file, example `cat test > test2`
3. Concatinaton `cat test test1 test 2 > main-file`
 
###### mv
is used not only to move but also file can be renamed, example `mv old-name new-name`, `mv source destination`

###### > >>
are redirecting operators. Operator `>` forwards input to e.g. file/place: `echo "info" > file`. `cat test > test2` forwards contents of 
`test` to `test2`, if `test2` does not exist then it will be created. `>` rewrites all information in `test2`, `>>` adds contents to the 
end of `test2` file.





###### 
