# Unix Systems

## Exercises
* [ex1.md](ex1.md)

# Commands
Use commands in the command prompt (Terminal) to do things.

## `cd`
`cd` is used to change the current directory.

* `cd ..` - change directory back one folder (up to the parent) 
* `cd ~` - change directory to the root (home directory)
* `cd dir-name` - change to inside `dir-name` (a child directory) 
* `cd ../dir-name` - change to `dir-name` which is up one and then down one (a sibling directory) 
* `cd ./` - change to the same directory (Useful for scripting)
* `cd ../../` - chnage backwards multiple parent directories

## `pwd`
`pwd` prints the current working directory

## `ls`
`ls` lists contents the current working directory

* `ls` - gives a simple list of files and directories
* `ls -a` - shows hidden files and folders
* `ls -l` - shows more details about each file and directory (see more details below)

## `cp`
`cp` copies files in the same way you would copy and paste a file. 

* `cp <source.file> <destination.file>` - copies a file in the same directory
* `cp <dir/source.file> <dir/destination.file>` - copies a file in a child directory
* `cp -r <dir1> <dir2>` - copies directories

## `mv` 
`mv` moves files in the same way as you would cut and paste. The usage is similar to `cp`.

## `whoami`
`whoami` tells you what user you are logged in as. 

## `touch`
`touch <filename>` updates the file access and modification timestamps. It is also useful to create new files. 

## `mkdir`
`mkdir` makes new directories relative to the current working directory. 

* `mkdir new-folder` - make a new directory in the current directory
* `mkdir dir1 dir2 dir3` - make multiple new directories (as siblings) in the current directory

## `rm`
Removes (deletes) files and directories

* `rm filename` - remove `filename`
* `rm -r dirname` - recursively removes `dirname`. It removes everything inside the directory before removing itself, i.e. deletes the folder.
* `rm -f filename` - force removes, for stubborn files with high permissions
* `rm -rf dirname` - be careful! Don't use this unless you know what you are doing, as you can easily break your system. 

## `echo`
`echo` writes arguments to the standard output (e.g. the Terminal).

`echo "Hello World!"` prints `Hello World!`.

## `grep`
`grep` is used to search for a string of characters using a regex. It is useful if you are looking for a specific string in a specific file. 

e.g. 
```grep \`grep\` README.md``` will give the above description from this file, as well as this line. 

## `find`
`find` is used to find a file in a directory.

## `sudo`
`sudo` is used when you need to run a command with the security privilages of the super user. 

# Permissions

Files and directories have permissions which indicate what can be done with them by an owner, a group, and others. 

`r` - permission to read the contents of a file or directory
`w` - permission to write or change the contents 
`x` - permission to execute a file

| Number | Permission | Description | 
|---|-------|-----------|
| 0 | `---` | No access | 
| 1 | `--x` | Execute only | 
| 2 | `-w-` | Write only | 
| 3 | `-wx` | Write and execute | 
| 4 | `r--` | Read only | 
| 5 | `r-x` | Read and execute | 
| 6 | `rw-` | Read and write | 
| 7 | `rwx` | Full access | 

Notice that the permissions are similar to binary (e.g. `5` -> `101` -> `r-x`)

## `ls -l` explained
e.g. 
```
-rw-r--r--  1 likkanc  staff  142 20 Oct 12:18 README.md
drwxr-xr-x  8 likkanc  staff  256 20 Oct 12:33 unix/
```

Each listing tells you more about the file or directory:
1. `d` or `-` to denote a directory or file, then the permissions for user, group, and others. 
2. Number of hard links
3. Owner name
4. Owner group
5. Size in bytes
6. Last mofified date and time
7. Name of the file/directory


## Changing permissions
You can use `chmod` to change the permissions of a file or directory. 

### `chmod 751 filename` 
You set the permissions to:
* Owner - 7 - Full access
* Group - 5 - Read and execute
* Other - 1 - Execute only

If you `ls -l` the file you would see something like:
```
-rwxr-x--x 1 user group 64 20 Oct 12:00 filename
```

### `chmod +x filename`
A pracical example where you may want to change permissions is when writing a shell script. When you create a file, the default permissions does not allow you to execute the file. 

Look at the `script-without-permissions.sh` file, it has `rw-r--r--` permissions. 

In this case you can use `chmod +x <filename>.sh` to set all of the `x` permissions. It will become `rwxr-xr-x`. Note that this may have unintended security implications on who can execute the file. 

