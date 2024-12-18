
Esiste un file divani.txt che contiene una riga per ciascun divano prodotto da una ditta. In ogni riga,
separati da spazi, ci sono il nome del divano (una sola parola), la larghezza, l'altezza e la profondità
espresse in cm.
Scrivere uno script divani.sh che prende esattamente due argomenti, la larghezza minima e l'altezza
massima.
Lo script deve stampare a video l'elenco dei divani che rispettano due proprietà:
1) la loro larghezza è maggiore o uguale della larghezza passata come primo argomento;
2) la loro altezza è minore o uguale della altezza passata come secondo argomento allo script;
Usare come file divani.txt il seguente.
```plaintext
divano1 200 83 105
Divano2 170 85 115
divaNo3 185 65 99
divano4 170 85 115
divanO5 220 70 145
```

Sia dato un file di testo multe.txt in cui, in ciascuna riga, e' contenuto il nome e il cognome di un guidatore,
l'ammontare della multa e la data (giorno, mese, anno) in cui la multa gli è stata comminata.
I diversi campi in ciascuna riga sono separati da TAB o da spazi bianchi, scegliete voi.
Le righe del file sono ordinate in modo crescente secondo il valore della multa.
Ovviamente lo stesso valore può esistere più volte nel file.
Scrivere uno script bash, avente nome contamulte.sh, che viene eseguito lanciando questa riga di
comando./contamulte.sh < multe.txt
e che produce il seguente risultato:
per ciascun valore di multa presente in quel file multe.txt, stampare una riga di testo contenente : il
valore della multa e il numero di volte che quel valore si ripete nel file.

Un file di testo lista.txt (passato insieme a questo stesso file .pdf nell'archivio tgz)
contiene l'elenco degli iscritti ad un esame scritto in cui ci sono studenti per quattro
esami, precisamente "SISTEMI OPERATIVI", "SISTEMI VIRTUALIZZATI", "SYSTEMS
INTEGRATION" e "VIRTUALIZZAZIONE E INTEGRAZIONE DI SISTEMI".
Nel file, per ciascuno studente iscritto, ci sono 3 righe, seguite da una riga vuota, il
cui contenuto è il seguente:
DATA ORA_INIZIO
MATRICOLA COGNOME NOME
NOME_ESAME
Scrivere uno script selezmatricola.sh che mette in output le matricole degli studenti
che vogliono sostenere l'esame di SISTEMI OPERATIVI, una riga per ciascuna
matricola.
Suggerimento:
il comando grep ha due opzioni-B 1--no-group-separator che consente di mettere
in output ANCHE LA RIGA che precede quella che contiene la word selezionata.
il comando grep ha una opzione -v che consente di mettere in output le righe che
NON CONTENGONO la word passata a grep come argomento
Vedere la slide successiva per un esempio di input ed output.

Scrivere uno script contaripetizionicar.sh che accetta una stringa come argomento e
stampa a video il numero di volte che ciascun carattere compare nella stringa.
In particolare, stampare a video tante righe quanti i caratteri diversi trovati nella
stringa, nella forma: NumeroVolteCheQuelCarattereCompare Carattere
Ad esempio, se viene passato come argomento la stringa pescecane
Dovreste vedere come output qualcosa di simile a questo:
1 a
2 c
3 e
1 n
1 p
1 s
Suggerimenti:
Provare a stampare a video una riga con ogni carattere che compare nella stringa.
Avrete così tante righe, con lo stesso carattere, quante sono le volte che il carattere
compare nella stringa.
Provate poi ad applicare il comando sort.
Poi usate il man (e provatelo) per vedere cosa fa il comando uniq -c

Partendo dal precedente esercizio alfa, scrivere uno script contaripetizionicar2.sh che
accetta una stringa come argomento e stampa a video il numero di volte che ciascun
carattere compare nella stringa.
In particolare, stampare a video tante righe quanti i caratteri diversi trovati nella
stringa, nella forma: Carattere NumeroVolteCheQuelCarattereCompare
Cioè i due campi sono in posizione invertita rispetto al precedente esercizio
Ad esempio, se viene passato come argomento la stringa pescecane
Dovreste vedere come output qualcosa di simile a questo:
a 1
c 2
e 3
n 1
p 1
s 1

Ordinamento inverso di righe di un file mediante ricorsione:
Scrivere uno script inverti2.sh che prende come argomento il percorso di un file di
testo e stampa le righe di quel file in ordine inverso, cioè dall'ultima riga alla prima.
Si suppone che il file non abbia tantissime righe.
Si suppone che il file non contenga metacaratteri o stringhe che possono causare
espansioni bash.
Utilizzare un approccio ricorsivo.
Potete utilizzare anche più di uno script, facendoli chiamare dallo script principale
inverti2.sh
Se il file contiene le righe seguenti:
Alfa beta gamma
Gatto cane serpente maiale
Asdrubale teofilo

Ordinamento inverso di righe di un file SENZA RICORSIONE:
Scrivere uno script inverti2.sh che prende come argomento il percorso di un file di
testo e stampa le righe di quel file in ordine inverso, cioè dall'ultima riga alla prima.
Si suppone che il file non abbia tantissime righe.
Si suppone che il file non contenga metacaratteri o stringhe che possono causare
espansioni bash.
Utilizzare un approccio CHE NON SFRUTTI LA RICORSIONE