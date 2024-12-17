# Workshop 2: Bash Scripting

This workshop is designed to enhance your skills in Bash scripting by creating and executing scripts, managing arguments, using environment variables, and performing advanced tasks with file and directory manipulations. Follow the instructions carefully, write your scripts, and test their functionality.

## 1. Create Files with Specific Names
- Create three files:
  - `with space.txt` (note the space in the name)
  - `wospace1.txt`
  - `wospace2.txt`
```bash
touch 'with space.txt' wospace1.txt wospace2.txt 
```

## 2. Write and Execute `run.sh` and `printargs.sh`
- `run.sh`:
  - Determines the number of arguments passed to it from the command line.
  - Executes `printargs.sh` with the following arguments:
    1. The count of arguments.
    2. All arguments passed to `run.sh`.
- `printargs.sh`:
  - Prints each argument it receives on a new line.
- Run `run.sh` with all files containing the string "spazio" in their name. Verify `printargs.sh` outputs the correct number and names of arguments.
- [CODE HERE (./code/02)](./code/02)

## 3. Modify Scripts to Use Environment Variables
- Create `run.sh` and `printargs.sh`:
  - `run.sh`:
    - Stores arguments in the environment variable `ARGS`.
    - Executes `printargs.sh`.
    - `printargs.sh`:
    - Reads and prints the content of `NOMIFILES`.
- [CODE HERE (./code/03)](./code/03)

## 4. Remove Files Containing "space" in Their Name
- Use the `rm` command to delete all files with "space" in their name.
```bash
rm *space*.txt
```

## 5. Advanced File and Directory Manipulations
- Write a script to perform the following tasks:
  1. Create a directory `DELETEME`.
  2. Inside `DELETEME`, create files with the names `*`, `**`, `***`, `;;`.
  3. List the files.
  4. For each file, create a new file with the same name plus `.txt` extension.
  5. Copy the entire `/usr/include/` directory into `DELETEME` (including all files and subdirectories).
  6. Recursively list all subdirectories in `DELETEME`.
  7. Remove the `include` directory from `DELETEME` without affecting the original `/usr/include/`.
```bash
mkdir -p ~/BUTTAMI
cd ~/BUTTAMI || exit
touch '*' '**' '***'

for file in *; do
  cp "$file" "$file.txt"
done

cp -r /usr/include ~/BUTTAMI
find ~/BUTTAMI -type d
rm -rf ~/BUTTAMI/include
```

## 6. Calculate Factorials Using Scripts
- Write two scripts:
  - `call_factorial.sh`:
    - Invokes `factorial.sh` with the argument `5`.
    - Captures the output into the variable `RESULT`.
  - `factorial.sh`:
    - Takes a positive integer as input and calculates its factorial.
    - Prints the result to stdout.
- [CODE HERE (./code/06)](./code/06)

## 7. Recursive Factorial Calculation with Shared Variables
- Write two scripts:
  - `call_factorial.sh`:
    - Creates a shared variable `RIS`.
    - Invokes `factorial.sh` with the argument `5`.
    - Prints the content of `RIS`.
  - `factorial.sh`:
    - Recursively calculates the factorial of the given number.
    - Writes the result to the shared variable `RIS`.
- [CODE HERE (./code/07)](./code/07)

## 8. Pass Arguments Between Scripts
- Write two scripts:
  - `script1.sh`:
    - Accepts a variable number of arguments.
    - Prints all arguments.
    - Invokes `script2.sh`, passing all arguments.
  - `script2.sh`:
    - Prints the received arguments in reverse order.
- Execute `script1.sh` with the arguments: `a b "c d" f`.
- [CODE HERE (./code/08)](./code/08)

## 9. Explore `echo` Options
- Identify the `echo` flag to:
  1. Interpret backslash escapes like `\n`, `\b`, `\t`.
  2. Print a string without a trailing newline.
```bash
echo -e "\n \b \t"
```

## 10. Exclude Hidden Files in Directory Listings
- List all files in the current directory, excluding those starting with `.`.
```bash
ls -a .
```

## 11. File Information Script
- Write a script `file.sh` to:
  1. For each non-hidden file in the current directory:
     - Print "file is <filename>".
     - Display file properties (only the directory name if it's a directory).
     - use a single-line `for` loop
     - Check if `ls` succeeded, print "ls produced an error" if it failed
- [CODE HERE (./code/11)](./code/11)

## 12. Create Files with Spaces in Their Names
- Create a file named `alfa beta.txt`.
```bash
touch "alfa beta.txt"
```

## 13. Generate Triplets of File Names
- Write a script `triple.sh` to:
  - Print all triplets of non-hidden files in the current directory in the format `(X;Y;Z)`.
- [CODE HERE (./code/13)](./code/13)

## 14. Process Even and Odd Arguments
- Write a script `arguments.sh` to:
  - Concatenate arguments at even indices.
  - Follow with arguments at odd indices.
- Pass `;` as an argument and fix any errors.
- [CODE HERE (./code/14)](./code/14)

## 15. Sum of Squares Script
- Write `sum.sh` to:
  - Take positive integers as arguments.
  - Compute the sum of their squares minus the sum of their indices.
- [CODE HERE (./code/15)](./code/15)

## 16. Environment Variable Management Scripts
- Write four scripts:
  - `define.sh`: Creates the environment variable `VAR` and sets it to "START".
  - `use.sh`: Prints the content of `VAR`.
  - `delete.sh`: Removes `VAR` from the environment.
  - `main.sh`: Calls the above scripts in sequence to:
    1. Create `VAR`.
    2. Print its value.
    3. Remove it.
    4. Verify it has been removed.
- [CODE HERE (./code/16)](./code/16)

---

### Summary of Scripts and Commands
| **Action**                                     | **Command**       |
|-----------------------------------------------|-------------------|
| Print arguments in a loop                     | `for`            |
| Pass arguments to a script                    | `"$@"`           |
| List directories recursively                  | `find`           |
| Reverse argument order                        | `${!i}`          |
| Print with special characters                 | `echo -e`        |
| Generate file triplets                        | Nested `for`     |
| Concatenate even and odd arguments            | Indexed `for`    |
| Calculate sum of squares minus index sum      | Arithmetic `for` |
| Define environment variables                  | `export`         |
| Unset environment variables                   | `unset`          |