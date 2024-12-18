# Workshop 5: Find Command and Process Handling

This workshop focuses on writing Bash scripts for searching files, processing environment variables, managing recursive script calls, and handling complex data processing tasks.

## Search Files
Write a command:
  - Accepts two arguments: an absolute path to a directory and a string representing part of a file name.  
  - Prints the absolute path of all files whose names match the string, starting from the given directory and including all subdirectories.
And run passing `/usr/include/` as the starting directory and `*std*.h` as the string to search.
```bash
find '/usr/include' -name '*std*.h' -print
```

## List Specific Files by Pattern
Write a command to:  
1. Display the names of files located in the immediate subdirectories of `/usr/include/`.  
2. Filter for files with names ending in `net.h`.
```bash
find /usr/include/ -maxdepth 2 -iname '*net.h' 
```

## Display First Three Lines of Files
Create a command sequence to:  
1. Print the first three lines of each file in `/usr/include/` and all its subdirectories, while ignoring directories.  
2. Add a pipeline to display only the first three characters of each printed line. 
```bash
find /usr/include -type f -exec head -n 3 {} \; | cut -b -3 
```

## Split and Analyze PATH Variable
Write a script [`split.sh`](./code/split.sh) that:  
- Splits the `PATH` environment variable into individual paths (separated by `:`).  
- Prints each path on a new line, followed by its character length.

## Recursive Process Calls
Create a script [`descendants.sh`](./code/descendants.sh) that:  
- Accepts an integer as a command-line argument.  
- If the argument is greater than 0:  
  - Spawns the script itself as a background process, decrementing the argument by 1 for each instance.  
  - Waits for all child processes to finish.  
  - Prints the original argument before terminating.  
- If the argument is 0, prints the value and terminates.

## Filter Non-Sufficient Students
Write a script [`insuff2.sh`](./code/insuff2.sh) that processes two files: [`RisultatiProvaPratica1.txt`](./code/RisultatiProvaPratica1.txt) and [`RisultatiProvaPratica2.txt`](./code/RisultatiProvaPratica2.txt). 
- Each line contains `Name, Surname, ID, Grade`.  
- Extract students who:  
  1. Did not take the first exam.  
  2. Took the second exam and scored below 18.  
- Output must include `ID, Name, Surname, Grade`

#### Output Example:
```plaintext
888888 Sante Bo 14
333333 Paolo Venzi 9
```

## Find Most Recent File
Write a script [`more_recent.sh`](./code/more_recent.sh) that:  
- Searches all `.h` files in the subdirectories of `/usr/include/linux/` (excluding files directly within `/usr/include/linux/`).  
- Finds and prints the name of the file most recently modified.
