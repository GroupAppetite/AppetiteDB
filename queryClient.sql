/*--------------- query lato Client , quelle fatte dall app ----------------*
*
*----------------------------------------------------------------------------*
*	ricerca ristorante per nome, se esiste, la query deve ritornare tutte le info utili e visualizzate.
*/

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.nome_r = "Irlanda" 
OR ristorante.nome_r LIKE '%Ire%' 
OR ristorante.nome_r LIKE '%land' 
OR ristorante.nome_r LIKE '%Ir' 
OR ristorante.nome_r LIKE '%re%'
OR ristorante.nome_r LIKE '%la%' 
OR ristorante.nome_r LIKE '%nd';

/*
*	ricerca ristorante per nome, se esiste, la query deve ritornare tutte le info utili e visualizzate. (caso su clic bottone info)
*/

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo, 
ristorante.fuori, ristorante.pranzo ristorante.carte ,ristorante.contanti , ristorante.bancomat,ristorante.foto1
FROM ristorante
WHERE ristorante.nome_r = "Ristorante1";

/*
*	ricerca ristoranti per zona, versione rude dove lo user immette un nome di una città scritto bene
*/

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.citta = "Roma";

/*
*	filtro ristoranti per fascia-prezzo (alta,normale,economico)
*/

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.fascia_prezzo = "alta";

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.fascia_prezzo = "normale";

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.fascia_prezzo = "economico";

/*
*	filtro ristoranti per fascia-prezzo (alta,normale,economico)
*/

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat,ristorante.foto1
FROM ristorante
WHERE ristorante.fascia_prezzo = "carta";

SELECT ristorante.nome_r, ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat, ristorante.foto1
FROM ristorante
WHERE ristorante.fascia_prezzo = "bancomat";

/*
*	verifica stato di una prenotazione inviata
*/

SELECT prenotazione.nome, prenotazione.cognome, prenotazione.orario, prenotazione.data
FROM prenotazione
WHERE prenotazione.numero = 0000;

/*
*	lista ristoranti affiliati all app
*/ 

SELECT ristorante.nome_r, ristorante.citta, ristorante.indirizzo, ristorante.foto1
FROM ristorante;

/*
*	nel caso l utente riceva una modifica di prenotazione ( una proposta di spostare l orario )
*	puo rendere la prenotazione , confermata o rifiutare definitivamente.
*/

UPDATE prenotazione SET prenotazione.stato_p = 1 WHERE prenotazione.numero = "mionum";

UPDATE prenotazione SET prenotazione.stato_p = 0 WHERE prenotazione.numero = "mionum";
