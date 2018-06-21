# Complementi di Ricerca Operativa

![Copertina](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/complementi.png?raw=true)

Corso 2017/18, Prof. Trubian.

## Link a contenuti disponibili
- [Dispensa](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/main.pdf)
- [Mappa concettuale](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/mappa%20concettuale.png)
- [Implementazioni](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/Models_SCIP.ipynb)
- [Column Generation](https://github.com/LucaCappelletti94/various-notes/blob/master/Unimi/Complementi%20di%20ricerca%20operativa/Column%20generation.ipynb)


## Indice
### Programmazione non lineare
+ Alcune definizioni base
    + Laconvessita
    + Massimi e minimi locali
+ Ottimizzazione non vincolata
    + Condizioni necessarie di ottimalità del primo ordine 
    + Condizioni necessarie di ottimalità del secondo ordine
    + Condizioni necessarie di ottimalità in senso stretto del secondo ordine 
+ Programmazione quadratica
+ Convergenza
    + Algoritmo convergente localmente e globalmente
        + Convergente localmente 
        + Convergente globalmente
    + Velocità di convergenza
        + Q-lineare
        + Q-super-lineare
        + Q-quadratica 
+ Metodi di ottimizzazione continua
    + Condizioni di Wolfe
    + Metodo di Armijo per stabilire la stepsize
    + Convergenza di metodi LS approssimati 
+ Metodi di ottimizzazione
    * Metodi a discesa rapida
    * Meto di Newton
    * Metodi Newton modificati 
    * Metodi Quasi-Newton
    * Metodi del gradiente coniugato
    * Metodi Trust Region
    * Metodo zampa di cane
    * Proprietà della matrice B
+ Ottimizzazione vincolata
    + Condizioni di ottimilità del secondo ordine
    + Modello quadratico con vincoli lineari
    + Metodo dell’insieme attivo primale per problemi quadratici convessi (Primal Active set)
+ Algoritmi
    + Metodo della penalità quadratica 
    + Metodo delle barriere 
    + Metodo della proiezione del gradiente
        + Caso con vincoli generici non lineari 
    + Augmented lagrangean method 
    + Sequential quadratic programming (SQP) 

### Programmazione intera

- Algoritmi dei piani di taglio
    - Procedura di Chvatal-Gomory per la costruzione di disuguaglianze valide
    - Algoritmo dei piani di taglio
        - Inizializzazione
        - Iterazione
        - Considerazioni sul risultato
    - Algoritmo dei piani di taglio frazionari di Gomory
    - Variabile di slack 
    - Tagli interi misti
- Disuguaglianze forti valide
    - Definizioni preliminari
        - Definizioni sulle disuguaglianze
        - Definizioni sui poliedri
    - Dimostrare che un poliedro descrive un insieme convesso
    - Cover Inequalities
        - Irrobustire una cover inequality
        - Sollevare le cover inequalities
        - Separazione delle cover inequalities
        - Disuguaglianze cover per i flussi
        - Separazione per le disuguaglianze cover per i flussi
        - Branch-and-cut
            - Inizializzazione
            - Procedura 
- Dualità lagrangiana
    - Rilassamento lagrangiano
    - Risolvere il lagrangiano duale
- TSP simmetrico
    - Problema di separazione
    - Albero di Gomory-Hu 
    - Comb inequalities(Disuguaglianze a pettine) 
- Tecnica di generazione delle colonne
- Cutting stock
    - Formulazione classica
    - Formulazione estesa
- Master Problem
    - Master Problem ridotto
    - Problema di Pricing
- Preprocessing
    - Qualità della formulazione
    - Programmazione lineare 
    - Programmazione intera 
    - Migliorare i vincoli in un problema intero
