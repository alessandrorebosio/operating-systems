# Workshop 1: Linux Commands

This workshop is designed to help you get hands-on experience with essential Linux commands and scripting tasks. You will learn to manipulate environment variables, create and run scripts, navigate the file system, and work with files and directories using various commands. Follow the instructions for each task and fill in the missing commands where prompted.

## 1. Display the Content of Variables `USER`, `HOME`, and `DISPLAY`
```bash
# Command here
```

## 2. Check if the Variables `USER`, `HOME`, and `DISPLAY` are Environment or Local Variables
```bash
# Command here
```

## 3. Create a New Variable `PIPPO` Containing the Concatenation of `USER`, `HOME`, and `DISPLAY`
```bash
# Command here
```

## 4. Write a Bash Script `pippo.sh` to Create the Variable `PIPPO`
```bash
# Content of pippo.sh
```
- [CODE HERE (./code/pippo.sh)](./code/pippo.sh)

## 5. Execute `pippo.sh` so that the `PIPPO` Variable Persists in the Calling Shell
```bash
# Command here
```

## 6. Navigate to the Filesystem Root and Print the Home Directory
```bash
# Command here
```

## 7. Create Nested Directories and Manipulate Files
- Create the following structure in your home directory:
  - `A1/`
    - `B2/`
      - `C3/`
        - `1.txt`
        - `2.txt`
        - `3.txt`
- Move the files `1.txt`, `2.txt`, and `3.txt` to `B2`.
- Copy the three files back into `A1`.
```bash
# Commands here
```

## 8. View the Content of Hidden Files in the Home Directory
- Use `cat` to display hidden files.
- Note the issue caused by `.*` expanding to `..`.
```bash
# Command here
```

## 9. Use `history` to Re-run a Command
- Run the `history` command.
- Choose a command and re-execute it using `history` features.
```bash
# Command here
```

## 10. Disable and Re-enable `history` Logging
- Use `set` to disable `history` logging.
- Run a command, then verify it was not logged.
- Re-enable `history` logging.
```bash
# Commands here
```

## 11. Enable Environment Variable Creation Using `set`
- Test whether variables are created as environment variables or not.
```bash
# Commands here
```

## 12. List Properties of Files in `/usr/lib/` Containing `plu` in Their Name
- Use metacharacters with `ls` to achieve this.
```bash
# Command here
```

## 13. Use `man` to Study `ls` Options
- Use the `man` command to explore `ls` options.
```bash
# Command here
```

## 14. Use `ls` to Display All Files in `/usr/include/` and Its Subdirectories
```bash
# Command here
```

## 15. Use `ls` to Display Directory Information for `/usr/include/` Without Listing Files
```bash
# Command here
```

## 16. Create a Subdirectory `BUTTAMI` and Add Files `AbC.txt` and `ABC.txt`
```bash
# Command here
```

## 17. Delete the File `ABC.txt`
```bash
# Command here
```

## 18. Remove the Directory `BUTTAMI` and All Its Contents in a Single Command
```bash
# Command here
```

## 19. Use `ls` with Metacharacters to Display Files in `/usr/lib/`
- The files should:
  - Contain a numeric character between 1 and 3, or
  - Contain a letter between `c` and `m`.
- The files should end with the `.0` extension.
```bash
# Command here
```

