# Workshop 1: Linux Commands

This workshop is designed to help you get hands-on experience with essential Linux commands and scripting tasks. You will learn to manipulate environment variables, create and run scripts, navigate the file system, and work with files and directories using various commands. Follow the instructions for each task and fill in the missing commands where prompted.

## 1. Display the Content of Variables `USER`, `HOME`, and `DISPLAY`
```bash
echo ${USER} ${HOME} ${DISPLAY}
```

## 2. Check if the Variables `USER`, `HOME`, and `DISPLAY` are Environment or Local Variables
```bash
env
```

## 3. Create a New Variable `PIPPO` Containing the Concatenation of `USER`, `HOME`, and `DISPLAY`
```bash
PIPPO="${USER} ${HOME} ${DISPLAY}"
```

## 4. Write a Bash Script `pippo.sh` to Create the Variable `PIPPO`
- [CODE HERE (./code/pippo.sh)](./code/pippo.sh)

## 5. Execute `pippo.sh` so that the `PIPPO` Variable Persists in the Calling Shell
```bash
source ./pippo.sh
```

## 6. Navigate to the Filesystem Root and Print the Home Directory
```bash
cd / && ls ~
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
mkdir -p ~/A1/B2/C3 && cd ~/A1/B2/C3 && touch 1.txt 2.txt 3.txt
cd ~ && mv ~/A1/B2/C3/* ~/A1/B2
cp ~/A1/B2/* ~/A1
```

## 8. View the Content of Hidden Files in the Home Directory
- Use `cat` to display hidden files.
- Note the issue caused by `.*` expanding to `..`.
```bash
ls -a ~ && cat .*
```

## 9. Use `history` to Re-run a Command
- Run the `history` command.
- Choose a command and re-execute it using `history` features.
```bash
history
!<command_number>
```

## 10. Disable and Re-enable `history` Logging
- Use `set` to disable `history` logging.
- Run a command, then verify it was not logged.
- Re-enable `history` logging.
```bash
set +o history # DISABLE
command_to_run
set -o history # ENABLE
```

## 11. Enable Environment Variable Creation Using `set`
- Test whether variables are created as environment variables or not.
```bash
set -a
# Example to test:
TEST_VAR="test"
env | grep TEST_VAR
```

## 12. List Properties of Files in `/usr/lib/` Containing `plu` in Their Name
- Use metacharacters with `ls` to achieve this.
```bash
ls /usr/lib/*plu*
```

## 13. Use `man` to Study `ls` Options
- Use the `man` command to explore `ls` options.
```bash
man ls
```

## 14. Use `ls` to Display All Files in `/usr/include/` and Its Subdirectories
```bash
ls -alhR /usr/include
```

## 15. Use `ls` to Display Directory Information for `/usr/include/` Without Listing Files
```bash
ls -dlh /usr/include/
```


## 16. Create a Subdirectory `BUTTAMI` and Add Files `AbC.txt` and `ABC.txt`
```bash
mkdir BUTTAMI && cd BUTTAMI && touch AbC.txt ABC.txt
```

## 17. Delete the File `ABC.txt`
```bash
rm ABC.txt
```

## 18. Remove the Directory `BUTTAMI` and All Its Contents in a Single Command
```bash
cd .. && rm -fr BUTTAMI
```

## 19. Use `ls` with Metacharacters to Display Files in `/usr/lib/`
- The files should:
  - Contain a numeric character between 1 and 3, or
  - Contain a letter between `c` and `m`.
- The files should end with the `.0` extension.
```bash
ls /usr/lib/*[1-3c-m]*.0
```

---

### Summary of Scripts and Commands
| **Action**                                   | **Command**       |
|----------------------------------------------|-------------------|
| Display environment variables                | `env`            |
| Create a new variable                        | `PIPPO="${USER} ${HOME} ${DISPLAY}"` |
| Execute a script and update the shell        | `source`         |
| Navigate to root directory                   | `cd /`           |
| List files in the home directory             | `ls`             |
| Create a directory structure                 | `mkdir`          |
| Change directory                             | `cd`             |
| Create empty files                           | `touch`          |
| Move files                                   | `mv`             |
| Copy files                                   | `cp`             |
| List all files, including hidden ones        | `ls -a`          |
| View contents of files                       | `cat`            |
| Display command history                      | `history`        |
| Re-run a command from history                | `!<number>`      |
| Disable command history                      | `set +o history` |
| Enable command history                       | `set -o history` |
| Export all variables automatically           | `set -a`         |
| View the manual                              | `man`            |
| Recursively list files in a directory        | `ls -alhR`       |
| List properties of a directory               | `ls -dlh`        |
| Remove a file                                | `rm`             |
| Remove a directory and its contents          | `rm -rf`         |
