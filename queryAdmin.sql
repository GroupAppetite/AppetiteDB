/*--------------- query lato Admin , quelle fatte dall app ----------------*
*
*----------------------------------------------------------------------------*

/*
*	query di login
*/

SELECT ristorante.mail , ristorante.password
FROM ristorante
WHERE  mail = "mailImmessa" 

/*
*	visualizzare ristorante di quell admin
*/ 

SELECT ristorante.nome_r , ristorante.citta , ristorante.indirizzo, ristorante.fascia_prezzo,
ristorante.carte ,ristorante.contanti , ristorante.bancomat,ristorante.foto1
FROM ristorante JOIN prenotazione ON ristorante.mail = prenotazione.mail;

/*
*	visualizzare prenotazioni ristorante query di base ( da decidere cosa visualizzare )
*/ 

SELECT prenotazione.nome , prenotazione.cognome, prenotazione.orario, prenotazione.data, prenotazione.fuori
FROM ristorante JOIN prenotazione ON ristorante.mail = prenotazione.mail;

/*
* 	modificare una prenotazione e reinviarla all utente, ( orario , dentro o fuori )
*/

UPDATE prenotazione SET prenotazione.orario = "new-or" WHERE prenotazione.numero = "mionum";

UPDATE prenotazione SET prenotazione.fuori = 1 WHERE prenotazione.numero = "mionum";

UPDATE prenotazione SET prenotazione.fuori = 0 WHERE prenotazione.numero = "mionum";

/*
*	aggiornamento ed immissione ulteriori dettagli ristorante 
*/

UPDATE ristorante SET ristorante.nome_r = "new-name" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.indirizzo = "new-indirizzo" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.citta = "new-citta" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.fuori = 0 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.fuori = 1 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.pranzo = 0 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.pranzo = 1 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.descrizione = "nuova descrizione" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.fascia_prezzo = "alta" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.fascia_prezzo = "normale" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.fascia_prezzo = "economico" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.contanti  = 0 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.bancomat = 0 WHERE ristorante.mail  = "miaMail";

UPDATE ristorante SET ristorante.carte = 0 WHERE  ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.contanti  = 1 WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.bancomat = 1 WHERE ristorante.mail  = "miaMail";

UPDATE ristorante SET ristorante.carte = 1 WHERE  ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.foto1 = "new-link" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.foto2 = "new-link" WHERE ristorante.mail = "miaMail";

UPDATE ristorante SET ristorante.foto3 = "new-link" WHERE ristorante.mail = "miaMail";







