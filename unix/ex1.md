# Practical Exercise 1
Try `cd`, `ls`, and `pwd` yourself.

* Use Terminal to open a command prompt. 
* You can use CMD + Space and search for 'Terminal'

## Exercise 1a
Explore your home directory.

1. Open the Terminal.
2. You are in your home directory. What is its path?
3. Find out what directories are inside the current directory.
4. Navigate to your Documents directory. (You may need to give Terminal permission to do this)
5. What files are inside your Documents directory?

## Exercise 1b
Make a shell script. 

1. Open your Terminal and navigate to a directory where you would like to work. You can work in your home directory (`cd ~`).
2. Make a directory: `mkdir test`
3. Delete that directory: `rm test`
4. Make another directory: `mkdir test-academy`
5. Navigate inside the directory:
  * `cd test-academy`
  * Check you are in the right directory `pwd` should be something like: `/<username>/test-academy/`
6. Make a file for your script: `touch ex1b.sh`
7. Open the file and copy the example script ([ex1b.sh](ex1b.sh)).
8. Change the script permissions: `chmod +x ex1b.sh`
9. Run the script with arguments: `./ex1b.sh Fname Surname`

## Exercise 1c
Find and grep a text file. 

1. Open your Terminal to the same `test-academy` directory as in 1b. 
2. Download [`text-file.txt`](text-file.txt) and move it to the `test-academy` directory. 
Alternatively, you can `touch` a file, and copy the contents. 
3. Try using `find` in the directory. 
4. Try using `grep` on the text file you downloaded.
  * You can try `jump`, `fox`, `2022-10-20`, `14:`, etc. 

## Exercise 1d
Try top and ps in your terminal.
