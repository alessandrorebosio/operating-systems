# Workshop 2: Bash Scripting

This workshop is designed to enhance your skills in Bash scripting by creating and executing scripts, managing arguments, using environment variables, and performing advanced tasks with file and directory manipulations. Follow the instructions carefully, write your scripts, and test their functionality.

##  Variables and Environment 

###  Create Files with Specific Names 
Create three files with the following names:
- `with space.txt` (note the space in the name)
- `wospace1.txt`
- `wospace2.txt`
```bash
touch 'with space.txt' wospace1.txt wospace2.txt
```

### Write and Execute `run1.sh` and `printargs1.sh`
Write two scripts:
  - [`run1.sh`](./code/run1.sh):
    - Determines the number of arguments passed from the command line.
    - Executes `printargs1.sh` with the following arguments:
      1. The count of arguments.
      2. All arguments passed to `run1.sh`.
  - [`printargs1.sh`](./code/printargs1.sh):
    - Prints each argument it receives on a new line.

### Remove Files Containing "space" in Their Name
Delete all files with "space" in their name using the `rm` command.
```bash
rm *space*.txt
```

## Navigation and File Manipulation

### Modify Scripts to Use Environment Variables
Write two scripts:
  - [`run2.sh`](./code/run2.sh):
    - Stores arguments in the environment variable `ARGS`.
    - Executes `printargs2.sh`.
  - [`printargs2.sh`](./code/printargs2.sh):
    - Reads and prints the content of `ARGS`.

## Advanced Scripting

### Create and Manipulate Files in a Directory
Write a script [`manipulate.sh`](./code/manipulate.sh) to perform the following tasks:
1. Create a directory `DELETEME`.
2. Inside `DELETEME`, create files named `*`, ` `, ` *`, and `;;`.
3. List the files.
4. For each file, create a new file with the same name plus `.txt` extension.
5. Copy the entire `/usr/include/` directory into `DELETEME`.
6. Recursively list all subdirectories in `DELETEME`.
7. Remove the `include` directory from `DELETEME` without affecting the original `/usr/include/`.

## Mathematical and Logical Scripting

### Calculate Factorials Using Scripts
Write two scripts:
- [`call_factorial1.sh`](./code/call_factorial1.sh):
  - Invokes `factorial.sh` with the argument `5`.
  - Captures the output into the variable `RESULT`.
- [`factorial1.sh`](./code/factorial1.sh):
  - Takes a positive integer as input and calculates its factorial.
  - Prints the result to stdout.

### Recursive Factorial Calculation with Shared Variables 
Write two scripts:
- [`call_factorial.sh`](./code/call_factorial2.sh):
  - Creates a shared variable `RESULT`.
  - Invokes `factorial.sh` with the argument `5`.
  - Prints the content of `RESULT`.
- [`factorial.sh`](./code/factorial2.sh):
  - Recursively calculates the factorial of the given number.
  - Writes the result to the shared variable `RESULT`.

## Arguments and File Processing 

### Pass Arguments Between Scripts 
Write two scripts:
- [`script1.sh`](./code/script1.sh):
  - Accepts a variable number of arguments.
  - Prints all arguments.
  - Invokes `script2.sh`, passing all arguments.
- [`script2.sh`](./code/script2.sh):
  - Prints the received arguments in reverse order.

## Explore `echo` Options 
Use the `echo` command with flags to:
1. Interpret backslash escapes like `\n`, `\b`, `\t`.
2. Print a string without a trailing newline.
```bash
echo -e "\n \b \t"
echo -n "No newline here"
```

## File Information Script 
Write a script [`file.sh`](./code/file.sh) to:
1. For each non-hidden file in the current directory:
   - Print "file is <filename>".
   - Display file properties (only the directory name if it’s a directory).
2. Use a single-line `for` loop.
3. Check if `ls` succeeded; print "ls produced an error" if it failed.

### Generate Triplets of File Names 
Write a script [`triple.sh`](./code/triple.sh) to print all triplets of non-hidden files in the current directory in the format `(X;Y;Z)`.

## Arguments and File Processing 

### Process Even and Odd Arguments 
Write a script [`arguments.sh`](./code/arguments.sh) to:
1. Concatenate arguments at even positions, followed by those at odd positions.
2. Handle special arguments like `;` without errors.

### Sum of Squares Script 
Write a script [`sum.sh`](./code/sum.sh) to:
1. Accept positive integers as arguments.
2. Calculate the sum of their squares.
3. Subtract the sum of their positional indices.

### Environment Variable Management Scripts 
Write a series of scripts to manage the lifecycle of the environment variable `VAR`.

Write four scripts:
1. [`define.sh`](./code/define.sh) Creates the environment variable `VAR` and sets its value to `"START"`.  
2. [`use.sh`](./code/use.sh) Prints the current value of `VAR`.  
3. [`delete.sh`](./code/delete.sh) Removes `VAR` from the environment.  
4. [`main.sh`](./code/main.sh)  
   - Invokes the above scripts in sequence to:
     1. Create the variable.
     2. Display its value.
     3. Delete it.
     4. Confirm that it has been removed.

## Command Summary

|  Action                                      |  Command        |
|-----------------------------------------------|-------------------|
| Print arguments in a loop                     | `for`            |
| Pass arguments to a script                    | `"$@"`          |
| List directories recursively                  | `find`           |
| Reverse argument order                        | `${!i}`          |
| Print with special characters                 | `echo -e`        |
| Generate file triplets                        | Nested `for`     |
| Concatenate even and odd arguments            | Indexed `for`    |
| Calculate sum of squares minus index sum      | Arithmetic `for` |
| Define environment variables                  | `export`         |
| Unset environment variables                   | `unset`          |
