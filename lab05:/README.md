# Workshop 5:

Scrivere uno script cerca.sh che prende come argomenti un percorso assoluto
di una directory da cui cominciare la ricerca di alcuni ed una stringa che
contiene un nome di file da cercare. Il nome potrebbe contenere dei
metacaratteri, ad esempio il nome di file da cercare potrebbe essere *std*-h
Lo script deve visualizzare a video il percorso assoluto di tutti i file il cui nome
corrisponde alla stringa passata come secondo argomento, partendo dalla directory
specificata come primo argomento, e includendo nella ricerca tutte le sottodirectory.
Scrivere poi uno script lanciacerca.sh che lancia lo script cerca.sh passandogli
nell'adatto modo proprio la directory iniziale /usr/include/ e la stringa *std*.h

Visualizzare a video il nome dei file che soddisfano due condizioni 1) stanno nelle
directory immediatamente figlie della directory /usr/include/ 2) hanno nome che
termina con net.h

Visualizzare a video le prime tre righe di ciascun file che sta nella directory
/usr/include/ e in tutte le sue sottodirectory. Attenzione alle directory.

Aggiungere un comando in pipe al comando precedente per visualizzare solo i primi
3 caratteri di ciascuna riga.

Scrivere uno script separa.sh che
- separa i diversi percorsi contenuti nella variabile di ambiente PATH (che vi
ricordo sono separati da : ).
- e li visualizza uno per uno sullo standard output, ciascun percorso trovato in una
riga di output che dopo il percorso contiene la lunghezza del percorso.

Scrivere uno script bash discendenti.sh, che prende un argomento intero a riga di
comando. L'intero indica il numero di script figli da lanciare.
Ad esempio, all'inizio lo script potrebbe essere lanciato passandogli come
argomento "3".
Lo script controlla l'argomento che gli è stato passato.
- Se il valore dell'argomento è maggiore di 0, lo script lancia in background lo
script stesso tante volte quanto il valore dell'argomento intero e passa come
argomento a ciascuno script proprio quel valore intero diminuito di 1. Poi lo
script attende la fine di tutti i suoi processi figli. Poi stampa a video l'argomento
che gli è stato passato. Infine termina restituendo 0.
- Se invece il valore dell'argomento è uguale a zero, allora lo script stampa a
video l'argomento che gli è stato passato e poi termina restituendo 0.

I due file RisultatiProvaPratica1.txt e RisultatiProvaPratica2.txt contengono in
ciascuna riga di testo il Nome, il Cognome, la Matricola e il Voto ottenuti dallo
studente nellla prova pratica N° 1 e N° 2 rispettivamente. Ciascun Nome e ciascun
Cognome è composto da una sola parola. Il numero di matricola è univoco. Il
Cognome e il nome, invece, potrebbero essere ripetuti. Il voto può essere non
sufficiente ( voto < 18).
Scrivere uno script bash insuff2.sh che metta in output l'elenco dei soli studenti che
rispettano TUTTE le seguenti caratteristiche:
--- Hanno sostenuto la seconda prova prativa, ottenendo un voto NON sufficiente,
--- Non hanno sostenuto la prima prova pratica.
L'output deve essere formattato su più righe di testo. Ciascuna riga contiene le
informazioni su uno studente, in particolare la Matricola, il Nome, il Cognome ed il
voto ottenuto nella seconda prova pratica, in quest'ordine. Le righe dell'output
devono essere ordinate secondo il Cognome, in senso crescente.
```plaintext
Avio Verdi 876754 21
Dee Bord 666666 20
Rino Ceronte 222222 13
Caio Baro 777777 27
```
```plaintext
Carmine Ati 8888 23
Paolo Venzi 333333 9
Dee Bord 666666 12
Sante Bo 888888 14
```
```plaintext
888888 Sante Bo 14
333333 Paolo Venzi 9
```

Scrivere uno script bash cercarecente.sh che comincia cercando tutti i file con estensione .h in
tutte le sottodirectory della directory /usr/include/linux/ escludendo i files che si trovano
direttamente nella directory /usr/include/linux/
Confrontare la data di ultima modifica dei file così trovati e stampare a video il nome del file
modificato più recentemente.

