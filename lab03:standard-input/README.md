# Workshop 3: Standard Input

This workshop focuses on working with standard input, file reading, and conditional expressions in Bash. Follow the instructions carefully to create scripts and understand their behavior.

## 1. Create `find_dir.sh`
Write a script `find_dir.sh` that:
- Searches all files and directories in `/usr/include` (excluding subdirectories).
- Prints the absolute path of directories that satisfy all of these conditions:
  1. Are directories.
  2. Have read permissions for the current user.
  3. Were modified more recently than `/usr/include/stdio.h`.
- Use conditional expressions in the form `test`.
- [CODE HERE (./code/01)](./code/01)

## 2. Create `find_file.sh`
Write a script `find_file.sh` that:
- For each letter between `c` and `g`, searches for files (or directories) in `/usr/include` (excluding subdirectories) where:
  - The second character of the name is the current letter.
  - Satisfies at least one of these conditions:
    1. The absolute path length is less than 18 characters.
    2. The absolute path length is greater than 23 characters.
- Prints the absolute path of these files or directories.
- [CODE HERE (./code/02)](./code/02)

## 3. Create `read.sh`
Write a script `read.sh` that:
- Reads each line from `/usr/include/stdio.h`.
- Prints only the third word from each line. If the third word does not exist, prints nothing for that line.
- [CODE HERE (./code/03)](./code/03)

## 4. Create `read_char.sh`
Write a script `read_char.sh` that:
- Reads the file `/usr/include/stdio.h` one character at a time.
- Prints the total number of characters read.


## 5. Understand the Command `wc -c`
- Run `wc -c /usr/include/stdio.h`.
- Explain what it does.
> prints the characters inside the file

## 6. Create `read.sh`
1. Download the text file [miofileNoNL.txt](http://www.cs.unibo.it/~ghini/didattica/sistemioperativi/ESERCIZI/miofileNoNL.txt), which contains blank lines and ends with a line without a newline character.
2. Write a script `read.sh` to:
   - Read the file line by line.
   - Print each line, including the last one.
- [CODE HERE (./code/06)](./code/06)

## 7. Create `stars.txt`
Create a file `stars.txt` with the following content:
```
uno due tre quattro
alfa beta * gamma
one two three four
```

Write a script `star.sh` that:
- Reads lines from standard input.
- For each line, prints the fourth and third words in that order, separated by a space.

Input:
```
uno due tre quattro
alfa beta * gamma
one two three four
```
Output:
```
quattro tre
gamma *
four three
```

Run `star.sh`, providing `asterischi.txt` as input via standard input. Verify that the output matches the expected result.
- [CODE HERE (./code/07)](./code/07)
