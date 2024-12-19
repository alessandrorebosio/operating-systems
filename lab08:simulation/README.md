# # Workshop 8: Simulation

This workshop focuses on advanced file processing, recursion, and data manipulation using Bash scripts. Below are the problem descriptions and expected script behaviors.

## Filter Sofas by Dimensions:
Create a script [`sofa.sh`](./code/sofa.sh) that:  
- Accepts **exactly two arguments**: minimum width and maximum height.  
- Filters the entries in [`sofa.txt`](./code/sofa.txt) to display only sofas that meet the following criteria:  
  1. Width ≥ minimum width.  
  2. Height ≤ maximum height.

#### Input Example (`sofa.txt`):  
```plaintext
divano1 200 83 105
Divano2 170 85 115
divaNo3 185 65 99
divano4 170 85 115
divanO5 220 70 145
```

#### Command:  
```bash
./sofa.sh 180 80
```

#### Output Example:  
```plaintext
divaNo3 185 65 99
divanO5 220 70 145
```

## Count Traffic Fines by Value:
Create a script [`penalty.sh`](./code/penalty.sh) that:  
- Accepts a text file [`penalty.txt`](./code/penalty.txt) as an argument.  
- Counts and prints the frequency of each unique fine amount.

#### Input Example (`penalty.txt`):  
```plaintext
Luca    Andreucci       57     11   maggio 2014
Giovanni    Pau         57     20   aprile 2015
Luca  Andreucci        123     28   luglio 2015
Astolfo Isoardi        160     21 dicembre 2015
Vittorio  Ghini       1000     17 febbraio 2016
Gilles Villeneuve     1000     1   gennaio 1978
```

#### Command:  
```bash
./penalty.sh < penalty.txt
```

#### Output Example:  
```plaintext
57      2
123     1
160     1
1000    2
```

## Extract Matriculation Numbers for a Specific Exam:
Create a script [`id.sh`](./code/id.sh) that:  
- Extracts matriculation numbers of students registered for the "SISTEMI OPERATIVI" exam.  

#### Input Example [`exams.txt`](./code/exams.txt):  
```plaintext
01/03/2024 09:00
12345 Rossi Mario
SISTEMI OPERATIVI

02/03/2024 11:00
54321 Verdi Giulia
SISTEMI VIRTUALIZZATI

03/03/2024 10:00
67890 Bianchi Anna
SISTEMI OPERATIVI
```

#### Output Example:  
```plaintext
12345
67890
```

## Count Character Frequencies:
Create a script [`counter1.sh`](./code/counter1.sh) that:  
- Accepts a string as an argument.  
- Prints the frequency of each character in the string in the format: `Count Character`.  

#### Command:  
```bash
./counter1.sh pescecane
```

#### Output Example:  
```plaintext
1 a
2 c
3 e
1 n
1 p
1 s
```

## Count Character Frequencies (Reordered):
Create a new script [`counter2.sh`](./code/counter2.sh) taking the previous script to output character frequencies in the format: `Character Count`. 

#### Command:  
```bash
./counter2.sh pescecane
```

#### Output Example:  
```plaintext
a 1
c 2
e 3
n 1
p 1
s 1
```

## Reverse File Lines with Recursion:
Create a script [`invert-rec.sh`](./code/invert-rec.sh) that:  
- Reads a file passed as an argument.  
- Prints its lines in reverse order using **recursion**.  

#### Input Example:  
```plaintext
Alfa beta gamma
Gatto cane serpente maiale
Asdrubale teofilo
```

#### Command:  
```bash
./invert-rec.sh file.txt
```

#### Output Example:  
```plaintext
Asdrubale teofilo
Gatto cane serpente maiale
Alfa beta gamma
```

## Reverse File Lines without Recursion:
Modify the script [`invert-iter.sh`](./code/invert-iter.sh) to:  
- Print lines in reverse order using a **non-recursive** approach.  

#### Command and Output: 
Same as above.
