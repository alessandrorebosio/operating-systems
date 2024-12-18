
Scrivere due script ping.sh e pong .sh in cui il processo ping imposta il necessario, poi lancia in background il processo pong e infine inizia a ciclare per passarsi ripetutamente il testimone con il
processo pong.sh.
I due processi devono fare il necessario per stampare a video, alternandosi, il proprio nome.
Ogni processo informa l’altro processo che è il turno dell’altro, creando un file che si chiama come
l’altro processo ma con estensione .txt invece che .sh
Prima di passare il controllo all’altro processo, ogni processo elimina il file che ha il proprio nome ma con estensione .txt invece che .sh
Per non usare troppa CPU, ogni processo verifica l’esistenza del file, avente il proprio nome ma estensione diversa, solo una volta ogni 2 secondi.

Scrivi uno script che copia tutti i file con estensione .txt da una directory di origine a una directory di destinazione, entrambe specificate mediante un argomento a riga di comando. Lo script deve ignorare i file vuoti.

Scrivi uno script che legge un file contenente numeri interi (uno per riga) e stampa a video due somme, cioè la somma dei numeri nelle righe di indice pari e la somma dei numeri nelle righe di indice dispari.

Premessa: un file CSV è un file di testo in cui ogni riga contiene dei campi separati da virgole e che serve per memorizzare delle tabelle.
Ad esempio, se il file contiene questo:
- arturo merzario,nato a,Milano,21 dicembre 1950
- john remdios dos santo altavilla linares,nato a,Buenos Aires,3 marzo 1933
allora i 4 campi della prima riga sono:
- "arturo merzario" "nato a" "Milano" "21 dicembre 1950”
- La terza colonna di quel file csv sarà composta dai due campi "Milano" e "Buenos Aires”.
Scrivere uno script che prende come argomenti un percorso di un file .csv e un indice, e che stampa in output tutti i campi della indice-esima colonna di quel file CSV.

