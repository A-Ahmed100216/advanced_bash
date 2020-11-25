# Advanced Bash
This repo will cover some advanced bash commands and their use.

#### 1. Head
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

#### 2. Tail
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
#### 3. Sort
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
