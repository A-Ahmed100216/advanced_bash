command# BASH CHEAT SHEET

## Key Points
1. In Linux, everything is a file - Monitors, keyboard, directories, these are all just files. There are no extensions, files are just files that can have different formats.
2. Case Sensitive - use lowercase
3. Avoid spaces - use _ instead
4. Hidden files and folders are defined with `.filename`.

## Key commands
* Remove a file --> `rm filename`
* Remove a directory --> `rm -rf foldername`
* View all files, including hidden -->  `ls -a` or `ll -a`
* Check command funcionality --> `man command `

### Wild Cards
* * --> Any number of characters
* [] --> List fo specific characters
* ??? --> Specific number of characters
Example:
```bash
*.md # Any file ending in md
??.md # files with two characters ending in .md
*.?? # All files ending with two character extension
```
* can use these with ld, with grep and a range of other commands.

### Permissions
User, group, others
* Use binary or Flags
* Execute = 1
* Write = 2
* Read = 4
  * You can combine these to make a maximum of 7 options
* You can also use flags such as r,w,x to add or revoke permissions
`chmod +x puppy.txt`
* You can alias user(u), group(g), or other(o)
`chmod g-x puppy.txt`

## Root user
* Super-users
* Can escalate privileges using `sudo` command

# Head, Tail, and sort
* head- first 10 lines of a file by default, or specificed number of lines  --> `head file.txt` or `head -n 7 file.txt `
* tail - last 10 lines, unless otherwise specified --> `tail file.txt` or `tail -n3 file.txt`
* sort - sort the data in a file --> 'sort file.txt'

### Streams
* STDIN - Standard input of a command
* STDOUT - Standard output or the result of a command
* STD ERR - Standard error is the output error of a command.

### Redirecting
* The ability to capture the standard output, STDOUT, of a program and redirect it into a file.
* Syntax:
  * `>>`appends to file
  * `>` truncates file
```bash
# The output of searching for all files beginning with example is stored in a new text file called search_ls_examples
ls example* > search_ls_examples.txt
```
* The output of STDERR is different to STDOUT therefore to redirect, we use different syntax `2>` or `2>>` which essentailly tells us to redirect output 2 which is the error output, STDERR
`ls file_which_causes_error 2>> error_log.txt`

* To get both outputs
`ls file_which_causes_error 2>> error_log.txt`


### Piping
* Uses `|`
* Allows you to capture STDIN and place them  in another program.

### grep
* Get regular expressions


### Process Management
* View all running processes --> `ps aux`
* Sending a process tot eh background -->`sleep <pid>  &`
* Can be used in conjunction with piping and redirection, and grep.
``` bash
pas aux | grep vagrant # Get expression with vagrant in them and pipe to ps aux.
```
* Kill processes with `kill <pid>`
##
