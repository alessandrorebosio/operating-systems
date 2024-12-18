# Workshop 4: Scripting

## Tasks

### **Launch and Chain Processes with `run.sh` and `son.sh`**

#### Description  
Implement a process chain using two scripts:  
- [`run.sh`](./code/run.sh): Initializes the process chain, launches `son.sh` (index `i=1`), and then terminates.  
- [`son.sh`](./code/son.sh):  
  - Outputs its process ID (`pid`).  
  - If `i > 10`, terminates.  
  - Otherwise, increments `i`, launches the next instance of `son.sh`, and then terminates.  

#### Objective  
The sequence should terminate after `run.sh` and 10 instances of `son.sh` have run.

#### Example Output  
```plaintext
Son 1, PID: 12345
Son 2, PID: 12346
...
Son 10, PID: 12354
```

### **Remove Numbers and Sum from `input.txt` with `extract.sh`**

#### Description  
Write a script [`extract.sh`](./code/extract.sh) to process a file [`input.txt`](./code/input.txt), where each line has the format:  
`word,number,word` (e.g., `gatto,52,vacca`).  

#### Objective  
- Remove the middle number and its comma.  
- Print the modified lines.  
- Calculate and display the total sum of the removed numbers.

#### Input Example (`input.txt`)  
```plaintext
gatto,52,vacca
alfa,31,triangolo
orto,9,bici
zappa,69,guzzi
disco,12,celentano
```

#### Output Example  
```plaintext
gatto, vacca
alfa, triangolo
orto, bici
zappa, guzzi
disco, celentano
Total sum: 173
```

### **Extract Characters from the Third Word with `2di3.sh`**

#### Description  
Create a script [`2di3.sh`](./code/2di3.sh) to process `/usr/include/stdio.h` line by line. For each line, extract the **second character** of the **third word** and print it.  

#### Objective  
- Skip lines with fewer than three words.  
- Skip lines where the third word has fewer than two characters.

#### Example Output  
```plaintext
t
o
i
```

### **Validate `nAnB` Pattern with `nAnB.sh`**

#### Description  
Write a script [`nAnB.sh`](./code/nAnB.sh) to verify if a given string follows the pattern:  
- **`N` occurrences of `A` followed by `N` occurrences of `B`**, where `N > 0`.  

#### Objective  
- Print `true N=<value>` if the input string matches the pattern.  
- Print `false` otherwise.  

#### Input Examples and Outputs  

| **Input**  | **Output**        |
|------------|-------------------|
| `AAABBB`   | `true N=3`        |
| `ADABBB`   | `false`           |
| `AAB`      | `false`           |
| `AabB`     | `false`           |

### **Concatenate Lines from `std*` Files with `concat.sh`**

#### Description  
Write a script [`concat.sh`](./code/concat.sh) to search `/usr/include/` for files whose names start with `std`. For each file:  
- Extract the **2nd, 3rd, and 4th lines**.  
- Append them to `output.txt`.  

#### Objective  
- If `output.txt` exists, clear its contents before adding new data.  

#### Example Workflow  
1. Run `concat.sh`.  
2. Check `output.txt` for concatenated content.  
