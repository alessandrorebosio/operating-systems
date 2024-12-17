# Workshop 3: Standard Input

This workshop focuses on working with standard input, file reading, and conditional expressions in Bash. Follow the instructions carefully to create scripts and understand their behavior.

## Tasks

### Find Directories
Write a script [`find_dir.sh`](./code/find_dir.sh) that:
- Searches all files and directories in `/usr/include` (excluding subdirectories).
- Prints the absolute path of directories that satisfy all of these conditions:
  1. Are directories.
  2. Have read permissions for the current user.
  3. Were modified more recently than `/usr/include/stdio.h`.
- Use conditional expressions in the form `test`.

### Find Files or Directories by Letter
Write a script [`find_file.sh`](./code/find_file.sh) that:
- For each letter between `c` and `g`, searches for files (or directories) in `/usr/include` (excluding subdirectories) where:
  - The second character of the name is the current letter.
  - Satisfies at least one of these conditions:
    1. The absolute path length is less than 18 characters.
    2. The absolute path length is greater than 23 characters.
- Prints the absolute path of these files or directories.

### Read Words from a File
Write a script [`read_char.sh`](./code/read_char.sh) that:
- Reads each line from `/usr/include/stdio.h`.
- Prints only the third word from each line. If the third word does not exist, prints nothing for that line.
- Prints the total number of characters read.

### Understand `wc -c`
- Run the command `wc -c /usr/include/stdio.h`.
- Explain what it does.
  
> Prints the number of characters in the file.

### Read a File with No Newline
1. Download the text file [miofileNoNL.txt](./code/miofileNoNL.txt), which contains blank lines and ends with a line without a newline character.
2. Write a script [`print_all_line.sh`](./code/print_all_line.sh) to:
   - Read the file line by line.
   - Print each line, including the last one.

### Process Lines from Standard Input
Create a file [`stars.txt`](./code/stars.txt) with the following content:
```
uno due tre quattro
alfa beta * gamma
one two three four
```

Write a script [`star.sh`](./code/star.sh) that:
- Reads lines from standard input.
- For each line, prints the fourth and third words in that order, separated by a space.

**Input Example:**
```
uno due tre quattro
alfa beta * gamma
one two three four
```

**Expected Output:**
```
quattro tre
gamma *
four three
```

Run `star.sh`, providing `stars.txt` as input via standard input. Verify that the output matches the expected result.

## Command Summary

| **Action**                              | **Command**       |
|-----------------------------------------|-------------------|
| Count characters in a file              | `wc -c`          |
| Test file properties                    | `test`           |
| Read lines from a file                  | `while read`     |
| Process standard input                  | `cat`            |
| Print specific fields of a line         | `awk`            |
| Read a file character by character      | `while IFS= read -r -n1` |

