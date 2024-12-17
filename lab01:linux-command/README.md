# Workshop 1: Linux Commands  

This workshop is designed to help you gain hands-on experience with essential Linux commands and scripting tasks. You will learn to manipulate environment variables, create and execute scripts, navigate the file system, and work with files and directories. Follow the instructions for each task and fill in the missing commands where required.  

## Variables and Environment  

### **Display the Contents of `USER`, `HOME`, and `DISPLAY` Variables**  
Use the `echo` command to print the values of these variables.  
```bash
echo ${USER} ${HOME} ${DISPLAY}
```

### **Check if `USER`, `HOME`, and `DISPLAY` are Environment Variables**  
List active environment variables using `env`.  
```bash
env | grep -E 'USER|HOME|DISPLAY'
```

### **Create a New Variable `PIPPO` Containing `USER`, `HOME`, and `DISPLAY`**  
Define a new variable by concatenating the values of the existing ones.  
```bash
PIPPO="${USER}:${HOME}:${DISPLAY}"
```

### **Write a Bash Script `pippo.sh` to Create the `PIPPO` Variable**  
Create a script that defines and exports the variable `PIPPO`. Save it as [`pippo.sh`](./code/pippo.sh).  

## Navigation and File Manipulation  

### **Move to the Filesystem Root and List the Home Directory**  
Navigate to the root directory (`/`) and use `ls` to list the contents of the home directory.  
```bash
cd / && ls ~
```

### **Create Nested Directories and Manipulate Files**  
Create the following directory structure and move/copy files as described:  
- Structure:  
  ```
  A1/
  └── B2/
      └── C3/
          ├── 1.txt
          ├── 2.txt
          └── 3.txt
  ```
- Move `1.txt`, `2.txt`, and `3.txt` from `C3` to `B2`, then copy them to `A1`.  
```bash
mkdir -p ~/A1/B2/C3
touch ~/A1/B2/C3/{1.txt,2.txt,3.txt}
mv ~/A1/B2/C3/* ~/A1/B2
cp ~/A1/B2/* ~/A1
```

## File Viewing and Editing  

### **View the Contents of Hidden Files in the Home Directory**  
Use `cat` to read hidden files. Be cautious of `.*` expanding to `..`.  
```bash
ls -a ~ && cat .bashrc
```

### **Use `history` to Re-run a Command**  
Run the `history` command to view the list of past commands. Re-execute a command using its number.  
```bash
history
!<command_number>
```

## File and Directory Management  

### **Create a Directory and Files with Specific Names**  
Create a directory `DELETEME` and add files `AbC.txt` and `ABC.txt`.  
```bash
mkdir DELETEME && cd DELETEME && touch AbC.txt ABC.txt
```

### **Delete a File and a Directory**  
Remove the file `ABC.txt`, then delete the directory `DELETEME` with all its contents.  
```bash
rm ABC.txt
cd .. && rm -rf DELETEME
```

## Command Summary  

| **Action**                                       | **Command**                                |
|--------------------------------------------------|--------------------------------------------|
| Display environment variables                    | `echo ${VAR}`                              |
| List all environment variables                   | `env`                                      |
| Create a new variable                            | `VAR=value`                                |
| Execute a script and update the shell            | `source script.sh`                         |
| Navigate to the root directory                   | `cd /`                                     |
| List files in the home directory                 | `ls ~`                                     |
| Create nested directories                        | `mkdir -p dir/subdir`                      |
| Move files                                       | `mv file dest/`                            |
| Copy files                                       | `cp file dest/`                            |
| Display hidden files                             | `ls -a`                                    |
| View file contents                               | `cat file`                                 |
| View command history                             | `history`                                  |
| Re-run a command from history                    | `!number`                                  |
| Create empty files                               | `touch file`                               |
| Remove a file                                    | `rm file`                                  |
| Remove a directory and its contents              | `rm -rf dir/`                              |
| View the manual for a command                    | `man command`                              |