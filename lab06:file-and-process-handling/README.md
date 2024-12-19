# Workshop 5: Advanced File and Process Handling

This workshop explores advanced Bash scripting techniques, including process synchronization, file handling, and data manipulation. Follow the tasks below to implement and test the required scripts.

## Process Synchronization:
Write two scripts, [`ping.sh`](./code/ping.sh) and [`pong.sh`](./code/pong.sh) , that interact as follows:  
1. **`ping.sh`** initializes the process, starts `pong.sh` in the background, and alternates control with it.  
2. Both processes:  
   - Print their name alternately.  
   - Use files named after the other process (e.g., `pong.txt` for `ping.sh`) to signal control.  
   - Delete their corresponding signal file before transferring control to the other process.  
   - Check for their signal file only every 2 seconds to avoid excessive CPU usage.  
Create a synchronized interaction between the two scripts using file-based signaling.

## Copy Non-Empty `.txt` Files
Write a script [`copy.sh`](./code/copy.sh) to copy all non-empty `.txt` files from a source directory to a destination directory.  
- Accept both source and destination directories as command-line arguments.  
- Ignore empty `.txt` files.
Efficiently filter and copy files based on their extension and size.

## Sum Numbers from File
Create a script [`sum.sh`](./code/sum.sh) to process a file containing one integer per line.  
- Compute and print two sums:  
  1. The sum of integers from lines with even indices.  
  2. The sum of integers from lines with odd indices.  

## Extract CSV Column by Index
Write a script that:  
- Accepts a `.csv` file path and a column index as arguments.  
- Prints all values from the specified column.  

### Input Example ([`data.csv`](./code/data.csv)):
```plaintext
arturo merzario,nato a,Milano,21 dicembre 1950
john remdios dos santo altavilla linares,nato a,Buenos Aires,3 marzo 1933
```

### Command:
```bash
./extract_csv.sh example.csv 3
```

### Output
```plaintext
Milano
Buenos Aires
```
