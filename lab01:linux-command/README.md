# Workshop 1: Linux Commands  

This workshop is designed to provide hands-on experience with essential Linux commands and scripting tasks. You will learn how to manage environment variables, create and execute scripts, navigate the file system, and work with files and directories. Follow the instructions for each task and fill in the required commands where necessary.  

## Variables and Environment  

### Variables: `USER`, `HOME`, and `DISPLAY`  
Display the values of the `USER`, `HOME`, and `DISPLAY` variables, then check if they are environment variables.  
```bash
echo ${USER} ${HOME} ${DISPLAY}
env | grep -E 'USER|HOME|DISPLAY'
```  
Create a script named [`pippo.sh`](./code/pippo.sh) that defines a variable `PIPPO` as a concatenation of these three variables.  

## Navigation and File Manipulation  

### **Navigate to the Filesystem Root and List the Home Directory**  
Move to the root directory (`/`) and list the contents of the home directory.  
```bash
cd / && ls ~
```  

### **Create Nested Directories and Manipulate Files**  
Perform the following tasks:  
1. Create the directory structure:  
   ```plaintext
   A1/
   └── B2/
       └── C3/
           ├── 1.txt
           ├── 2.txt
           └── 3.txt
   ```
2. Move `1.txt`, `2.txt`, and `3.txt` from `C3` to `B2`, then copy them to `A1`.  
```bash
mkdir -p ~/A1/B2/C3
touch ~/A1/B2/C3/{1.txt,2.txt,3.txt}
mv ~/A1/B2/C3/* ~/A1/B2
cp ~/A1/B2/* ~/A1
```  

## File Viewing and Editing  

### **View Hidden Files in the Home Directory**  
Use the `cat` command to display the contents of hidden files. Be cautious when using `.*` to avoid unwanted expansion to `..`.  
```bash
ls -a ~ && cat ~/.bashrc
```  

### **Use `history` to Re-run a Command**  
View the history of past commands using the `history` command and re-execute a command by its number.  
```bash
history
!<command_number>
```  

## File and Directory Management  

### **Create a Directory and Files with Specific Names**  
1. Create a directory named `DELETEME` and add two files: `AbC.txt` and `ABC.txt`.  
2. Delete the file `ABC.txt`, then remove the `DELETEME` directory along with its contents.  
```bash
mkdir DELETEME && cd DELETEME && touch AbC.txt ABC.txt
rm ABC.txt
cd .. && rm -rf DELETEME
```  

## Command Summary  

| **Action**                               | **Command**                                |
|------------------------------------------|--------------------------------------------|
| Display a variable                        | `echo ${VAR}`                              |
| List all environment variables            | `env`                                      |
| Create a new variable                     | `VAR=value`                                |
| Navigate to the root directory            | `cd /`                                     |
| List files in the home directory          | `ls ~`                                     |
| Create nested directories                 | `mkdir -p dir/subdir`                      |
| Move files                                | `mv file dest/`                            |
| Copy files                                | `cp file dest/`                            |
| Display hidden files                      | `ls -a`                                    |
| View file contents                        | `cat file`                                 |
| View command history                      | `history`                                  |
| Re-run a command from history             | `!number`                                  |
| Create empty files                        | `touch file`                               |
| Remove a file                             | `rm file`                                  |
| Remove a directory and its contents       | `rm -rf dir/`                              |
| View the manual for a command             | `man command`                              |  
