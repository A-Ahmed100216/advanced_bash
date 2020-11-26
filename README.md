# Advanced Bash
This repo will cover some advanced bash commands and their use.

## 1. Head
* Prints the first ten lines of a file. This is by default, the command can be configured to print a specific number of lines.
```bash
head <filename> # Prints the first 10 lines of the file
head -n 5 <filename> # Prints the first 5 lines of the filename
```
* Can be used to print lines from different files as follows:
```bash
head -n 5 <file1> <file2> # Prints the first 5 lines from file1 and file2
```
* Can also use bytes as a limiter using `-c`
```bash
head -c 24 <filename>
```

## 2. Tail
* Opposite of head - prints the last ten lines of a file.
* Can be configured to print a specific number of lines.
```bash
tail <filename> # Prints the last 10 lines of the file
tail -n 5 <filename> # Prints the last 5 lines of the filename
```
* Can be used to print lines from different files as follows:
```bash
tail -q -n 5 <file1> <file2> # Prints the last 5 lines from file1 and file2
```
## 3. Sort
* Used to sort a file.
* The syntax is as follows:
* By default the order is numbers > alphabet > lowercase
```bash
sort <filename>
```
* It is important to note, sort does not change the original file so we can write the output to a new file. Either one of the following two commands can be used:
```bash
sort inputfile > outputfile
sort -o outputfile inputfile
```
* The command can be configured to support ordering by alphabet, number, month, reversed order, and remove duplicated.
  * Sort in reverse order:     
    `sort -r filename`    
  * Sort numerically:     
    `sort -n filename`    
  * Sort numerically reversed:    
    `sort -nr filename`       
  * Sort a specific column i.e column 2:     
    `sort -k 2n filename.txt`     
  * Check if a file is sorted, if sorted, no output:    
    `sort -c filename`   
  * Sort and remove duplicates:    
    `sort -u filename`      
  * Sort by month:    
    `sort -M filename`


## Permissions
* Permissions are used to restrict actions which can be applied to a file.
* To view file permissions:
`ll` or `ls -l`
* This will bring up the associated permissions which follow a specific format:
   * Character 1 - identifies the type of entry listed.
      * `-` a dash represents a file
      * `d` the letter d represents a directory.
   * Characters 2 to 11 -  represent the settings for the three sets of permissions using the letters r, w, x
     * The first three characters show the permissions for the user who owns the file **(user permissions)**.
     * The middle three characters show the permissions for members of the file’s group **(group permissions)**.
     * The last three characters show the permissions for anyone not in the first two categories **(other permissions**).
     * r: Read permissions - The file can be opened, and its content viewed.
     * w: Write permissions - The file can be edited, modified, and deleted.
     * x: Execute permissions - If the file is a script or a program, it can be run (executed).
* Examples
`---` means no permissions have been granted at all.
 `rwx` means full permissions have been granted. The read, write, and execute indicators are all present.
* To change file permissions we use the `chmod` command followed by the permission level and file we would like to edit.
* We can either use binary or the flag (r,w,x):

| Binary | Flags       | Meaning                                                                                     | Use Cases                                                                             |
|--------|-------------|---------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------|
|   777  | (rwxrwxrwx) | No restrictions. Anybody may do anything.                                                   | Generally not desirable.                                                              |
|   755  | (rwxr-xr-x) | File owner may read, write, and execute the file. All others may read and execute the file. | Common for programs that are used by all users.                                       |
|   700  | (rwx------) | File owner may read, write, and execute the file. Nobody else has any rights.               | Useful for programs that only the owner may use and must be kept private from others. |
|   666  | (rw-rw-rw-) | All users may read and write the file.                                                      | Useful for collaborative files.                                                       |
|   644  | (rw-r--r--) | The owner may read and write a file, all others can only read the file.                     | Common for data files that everybody may read, but only the owner may change.         |
|   600  | (rw-------) | The owner may read and write a file. All others have no rights.                             | Common setting for data files that the owner wants to keep private.                   |

* Syntax:
```bash
chmod 666 example_file.txt # Gives all users read and write rights
chmod +x example_file.txt # Gives execute rights
chmod -w example_file.txt # Takes away write rights
```
