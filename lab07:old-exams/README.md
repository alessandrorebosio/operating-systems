# Workshop 7: Old Exams
This workshop focuses on parsing, processing, and analyzing structured text files with advanced Bash scripting techniques. You'll explore practical tasks like counting occurrences, manipulating file formats, and managing script execution with error handling and redirection.

## Count Occurrences of Fall Reasons
Write a script [`group1.sh`](./code/group1.sh) to analyze the file [`drop1.txt`](./code/drop1.txt) and output each unique fall reason (third field) along with the number of occurrences.  

#### Example Input (`drop1.txt`)  
```plaintext
1972 cesena ribaltamento leva_del_freno_infilata_in_una_coscia
1978 cesenatico manubrio_strappato fianco_grattugiato
1979 cesena pedale_rotto botta_agli_zebedei
1981 san_piero drittone_in_un_campo naso_rotto
1982 monte_cavallo freni_allentati contusioni
1983 monte_cavallo freni_allentati contusioni
2007 ciola_araldi ribaltamento incisivo_perso
2010 monte_cavallo ghiaccio niente
```

#### Suggestions  
- Output the fall reason and its count.  
- Handle duplicate rows using the `uniq` command.  

#### Example Output  
```plaintext
ribaltamento 2
manubrio_strappato 1
pedale_rotto 1
drittone_in_un_campo 1
freni_allentati 2
ghiaccio 1
```

### Extract the Third Field
Create a new script [`group2.sh`](./code/group2.sh) that analyzes a modified version of drop2.txt with double-quoted fields:

#### Input Example (`drop2.txt`)  
```plaintext
"1972" "cesena" "ribaltamento" "leva del freno infilata in una coscia"
"1978" "cesenatico" "manubrio strappato" "fianco grattugiato"
"1979" "cesena" "pedale rotto" "botta agli zebedei"
"1981" "san piero" "drittone in un campo" "naso rotto"
"1982" "monte cavallo" "freni allentati" "niente"
"1983" "monte cavallo" "freni allentati" "niente"
"2007" "ciola araldi" "ribaltamento" "incisivo perso"
"2010" "monte cavallo" "ghiaccio" "niente"
```

#### Example Output  
```plaintext
ribaltamento
manubrio strappato
pedale rotto
drittone in un campo
freni allentati
freni allentati
ribaltamento
ghiaccio
```

## Count Lines Separately
Write a script [`count_sequence.sh`](./code/count_sequence.sh) to:  
1. Accept up to 9 file names as arguments.  
2. Count the total number of lines in files with even indices (output to `stdout`).  
3. Count the total number of lines in files with odd indices (output to `stderr`).  

### Redirect Output
Write a script [`run.sh`](./code/run.sh) that:  
- Calls `count_sequence.sh` with the first 7 files from `/usr/include/*.h` sorted by size.  
- Redirects both `stdout` and `stderr` from `count_sequence.sh` to `stderr` of `run.sh`.

## Get the Latest Exam Results  
Write a script [`vote.sh`](./code/vote.sh) to process exam results in [`exam1.txt`](./code/exam1.txt) and [`esame2.txt`](./code/exam2.txt):  
- Each file contains lines with a student’s ID and their grade.  
- For students in both exams, only the grade from `exam2.txt` is valid.  
- Output the most recent grade for each student.
