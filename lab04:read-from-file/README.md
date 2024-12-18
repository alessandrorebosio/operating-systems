# Workshop 4: Read from File

This workshop focuses on processing files, managing input and output, and validating data patterns using Bash scripts. Follow the instructions carefully to create and test the required scripts.

## Process Chains

### Launch and Chain Processes with `run.sh` and `son.sh`
- [`run.sh`](./code/run.sh):
  - Starts the process chain by launching `son.sh` with an index `i=1`.
  - Terminates after launching the first process.
- [`son.sh`](./code/son.sh):
  - Prints its process ID (`pid`).
  - If `i > 10`, terminates.
  - Otherwise, increments `i`, launches the next instance of `son.sh`, and then terminates.

Ensure that the sequence terminates after `run.sh` and 10 instances of `son.sh` have executed.

#### Example Output
```plaintext
Son 1, PID: 12345
Son 2, PID: 12346
...
Son 10, PID: 12354
```

## File Processing, remove numbers and Sum from `input.txt` with `extract.sh`
Write a script [`extract.sh`](./code/extract.sh) to process a file [`input.txt`](./code/input.txt). Each line in the file has the format:
`word,number,word` (e.g., `gatto,52,vacca`).
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

## Character Extraction, extract characters from the Third Word with `2di3.sh`
Write a script [`2di3.sh`](./code/2di3.sh) to process `/usr/include/stdio.h` line by line. For each line:
- Extract the **second character** of the **third word**.
- Print the extracted character.

- Skip lines with fewer than three words.
- Skip lines where the third word has fewer than two characters.

#### Example Output
```plaintext
t
o
i
```

## Pattern Validation, validate `nAnB` Pattern with `nAnB.sh`
Write a script [`nAnB.sh`](./code/nAnB.sh) to verify if a given string follows this pattern:
- **`N` occurrences of `A` followed by `N` occurrences of `B`**, where `N > 0`.

- Print `true N=<value>` if the input string matches the pattern.
- Print `false` otherwise.

#### Input Examples and Outputs

| **Input**  | **Output**        |
|------------|-------------------|
| `AAABBB`   | `true N=3`        |
| `ADABBB`   | `false`           |
| `AAB`      | `false`           |
| `AabB`     | `false`           |

## File Concatenation, concatenate Lines from `std*` Files with `concat.sh`

#### Description
Write a script [`concat.sh`](./code/concat.sh) to search `/usr/include/` for files whose names start with `std`. For each file:
- Extract the **2nd, 3rd, and 4th lines**.
- Append them to `output.txt`.

- If `output.txt` exists, clear its contents before adding new data.

#### Example Workflow
1. Run `concat.sh`.
2. Check `output.txt` for concatenated content.
