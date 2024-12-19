
Creare un file di testo cadutevic.txt come quello che segue:
1972 cesena ribaltamento leva_del_freno_infilata_in_una_coscia
1978 cesenatico manubrio_strappato fianco_grattugiato
1979 cesena pedale_rotto botta_agli_zebedei
1981 san_piero drittone_in_un_campo naso_rotto
1982 monte_cavallo freni_allentati contusioni
1983 monte_cavallo freni_allentati contusioni
2007 ciola_araldi ribaltamento incisivo_perso
2010 monte_cavallo ghiaccio niente
Ciascuna riga del file contiene 4 campi: l'anno di una caduta, la località della caduta, il motivo
della caduta, i danni riportati.
Notare che quando un campo è formato da più di una parola le parole sono unite da un
carattere underscore
___
Ad esempio incisivo_perso
Notare che nessun campo motivo è una sottostringa di qualche altro campo motivo.
Realizzare uno script bash che emette sullo standard output alcune righe. In ciascuna riga
compare un motivo della caduta e il numero delle volte che quella motivo è accaduto.
Potrebbe essere utile usare qualche file temporaneo in cui salvare informazioni parziali.
Per evitare ripetizioni di righe in output si può usare un comando uniq che permette di
eliminare le righe ripetute di un file. Usare il man per capire come funziona.

Creare un file di testo cadutevic.txt come quello che segue, potete stabilire voi quale separatore
dei campi usarem ad esempio il TAB:
Ciascuna riga del file contiene 4 campi: l'anno di una caduta, la località della caduta il motivo
della caduta, i danni riportati.
"1972" "cesena" "ribaltamento" "leva del freno infilata in una coscia"
"1978" "cesenatico" "manubrio strappato" "fianco grattugiato"
"1979" "cesena" "pedale rotto" "botta agli zebedei"
"1981" "san piero" "drittone in un campo" "naso rotto"
"1982" "monte cavallo" "freni allentati" "niente"
"1983" "monte cavallo" "freni allentati" "niente"
"2007" "ciola araldi" "ribaltamento" "incisivo perso"
"2010" "monte cavallo" "ghiaccio" "niente"
Notare che i singoli campi sono delimitati (prima e dopo) da un doppio apice " che fa parte del
campo stesso.
Quindi la stringa "freno infilato in una coscia" viene considerato come un unico campo.
Realizzare uno script bash che scrive sullo standard output solo il TERZO campo di ciascuna riga
del file cadutevic.txt

Realizzare uno script bash contaseparatamente.sh che effettua le seguenti operazioni:
Lo script prende un numero variabile di argomenti, al massimo 9.
Ciascun argomento è il nome di un file.
Lo script scrive sullo standard output il numero totale di righe dei file passati come argomenti di
indice pari.
Lo script scrive sullo standard error il numero totale di righe dei file passati come argomenti di
indice dispari.
Realizzare poi uno script bash lancia.sh che:
lancia l'esecuzione dello script contaseparatamente.sh passando allo script come argomenti i
primi 7 file che si ottengono come standard output del comando ls -S1 /usr/include/*.h
Il modo in cui lo script lancia.sh lancia l'esecuzione di contaseparatamente.sh deve ridirezionare
sia lo standard output che lo standard error di contaseparatamente.sh sullo standard error di
lancia.sh stesso.
Mi raccomando, verificare che lo script lancia.sh produca il suo output sullo standard error.

Nell'archivio che vi ho messo a disposizione, nella directory BASE_es154, ci sono due
file esame1.txt ed esame2.txt che contengono ciascuno i risultati di una prova
pratica di sistemi operativi.
In ciascuna riga dei file c'é il numero di matricola di uno studente presente alla prova
ed il voto ottenuto in quella prova, separati da spazi bianchi.
La prova pratica, i cui risultati sono nel file esame2.txt, è la prova più recente.
Qualche studente potrebbe essere stato presente solo ad una delle due prove.
Se uno studente è stato presente alla seconda prova allora il risultato della prima
prova non è più valido e vale solo il voto della seconda.

Implementare uno script voti.sh che legge i due file esame1.txt ed esame2.txt e
mette in output delle righe; ciascuna riga contiene il voto più recente ottenuto da
uno studente preceduto dal numero di matricola di quello studente.
Il pratica lo script voti.sh deve mettere in output il voto più recente di ciascuno
studente, nello stesso formato dei file di input.
Nella directory BASE_es154 c'è un file voti.sh contenente qualche suggerimento.
Se volete potete utilizzare dei file temporanei per salvare risultati parziali, ma non è
necessario